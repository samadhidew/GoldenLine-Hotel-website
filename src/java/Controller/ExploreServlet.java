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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manuhansini
 */
@WebServlet(name = "ExploreServlet", urlPatterns = {"/Explore"})
public class ExploreServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // ?hall=1
        String hallStatus =request.getParameter("hall");
        if(hallStatus != null) { request.setAttribute("book", new Hall(0, 0, 0, 0));
            
        }

        request.getRequestDispatcher("/WEB-INF/views/Search.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String id =request.getParameter("id");
        // room
        String in = request.getParameter("In");
        String mealType =request.getParameter("Meal");
        String rType = request.getParameter("RType");
        String out =request.getParameter("Out");
        String amount =request.getParameter("No");

        String hType = request.getParameter("HType");
       
        RoomDao dao = new RoomDao(); 
        String hallStatus =request.getParameter("hall");
        
        
        if(action.equals("Search"))
        {   
            if(hallStatus != null){
             request.setAttribute("Halls", new BookingDao().CheckHallAvailability(hType.equals("")?0: Integer.parseInt(hType), in));       
             request.setAttribute("book", new Hall(0, 0, 0, 0));
             request.getRequestURL().append('?').append("result=1");
             request.getRequestDispatcher("/WEB-INF/views/Search.jsp").forward(request, response);
             //response.sendRedirect("/ManageHotelWeb/Explore?result=1");
            }
            else{
             request.setAttribute("Rooms", new BookingDao().CheckAvailability( rType.equals("")?0: Integer.parseInt(rType),mealType.equals("")?0: Integer.parseInt(mealType),amount.equals("")?1: Integer.parseInt(amount), in, out));
             request.getRequestURL().append('?').append("result=1");       
             request.getRequestDispatcher("/WEB-INF/views/Search.jsp").forward(request, response);
            }
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
