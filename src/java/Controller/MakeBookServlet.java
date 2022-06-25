
package Controller;

import com.google.gson.Gson;
import Model.*;
import Dao.*;
import Utility.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "MakeBookServlet", urlPatterns = {"/MakeBooking"})
public class MakeBookServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if (request.getSession().getAttribute("customer") == null) {
            
            request.getRequestDispatcher("/WEB-INF/views/signin.jsp").forward(request, response);
        } else {
            
        String room =request.getParameter("room");
        String total =request.getParameter("tot");
        String id =request.getParameter("id");
        String in =request.getParameter("in");
        String out =request.getParameter("out");

        if(room != null && total != null && id != null && in!=null ){
            BookingDao bookingDao = new BookingDao();
            int BID = 0;
            if(out == null){
               // hall booking
               BID = bookingDao.CreateHallBookingDetails(new Booking(0,Integer.parseInt(id),in,"",0,"","","",""));
            }
            else{
            BID = bookingDao.CreateBookingDetails(new Booking(0,Integer.parseInt(id),in,out,0,"","","",""));
            } 
            request.getSession().setAttribute("BID", BID);
            request.setAttribute("Rooms", new RoomDao().GetSingle(Integer.parseInt(id)));
            request.getRequestDispatcher("/WEB-INF/views/booknow.jsp").forward(request, response);
        }
        else  request.getRequestDispatcher("/WEB-INF/views/Search.jsp").forward(request, response);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id =request.getParameter("id");
        // room
        String name = request.getParameter("name");
        String nic =request.getParameter("NIC");
        String contact = request.getParameter("contact");
        String email =request.getParameter("email");
        String total = request.getParameter("total");
        String roomCount =request.getParameter("rooms");
        String BID = request.getSession().getAttribute("BID").toString();
        RoomDao dao = new RoomDao();
        PaymentDao paymentDao = new PaymentDao();
        BookingDao bookingDao = new BookingDao();
        System.out.println("tt -"+ total);

        try{
        bookingDao.UpdateBookingDetails(Integer.parseInt(BID),1,name, email,contact, nic);
        paymentDao.CreatePaymentDetails(new Payment(0,Integer.parseInt(id), "","","",new SimpleDateFormat("yyyy-MM-dd").format(new Date()),Double.parseDouble(total)));
        // Send SMS
        String content ="Dear "+name +", Your Booking has made successfully!."+ roomCount+" room/s booked with total amount "+total+" Rs.";
        new SMSSender().sendMessage(contact, content);
        // Send Mail
           
        MailSender.sendMailTextContent(email, content, "Reservation Confirmation");}
        catch(Exception exr){}
        CUD_Response CUDresponse = new CUD_Response (true);
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
