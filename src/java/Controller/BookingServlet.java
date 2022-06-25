/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import com.google.gson.Gson;
import Model.*;
import Dao.*;
import Utility.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "BookingServlet", urlPatterns = {"/Booking.admin"})
public class BookingServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("Bookings", new BookingDao().GetAllBookingDetails()); 
        request.setAttribute("feeds", new FeedbackDao().GetAllDetails());       
        request.getRequestDispatcher("/WEB-INF/views/Bookings.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        String id =request.getParameter("id");
        
       
        BookingDao dao = new BookingDao(); 
        if(action.equals("Delete"))
        {           
            //Customer customer = new Customer();
            CUD_Response CUDresponse = new CUD_Response (dao.DeleteBookingDetails(Integer.parseInt(id)));
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        else{
            ArrayList<Booking> bookings=dao.GetBookingDetails(Integer.parseInt(id));
            if(bookings.size() > 0){
            Booking booking = bookings.get(0);
            try{
            // Send SMS
            String content ="Dear "+booking.getCustomer() +", Your Booking placed for"+booking.getCheckin() +" - "+booking.getCheckout() +"has been cancelled successfully!. Thanks for reaching us.";
            new SMSSender().sendMessage(booking.getContact(), content);
            // Send Mail
           
            MailSender.sendMailTextContent(booking.getEmail(), content, "Reservation Cancellation");
             } 
            catch(Exception exr){}
            dao.DeleteBookingDetails(Integer.parseInt(id));
            CUD_Response CUDresponse = new CUD_Response (true);
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
            } 
           
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
