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
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "RoomServlet", urlPatterns = {"/Room.admin"})
public class RoomServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("Rooms", new RoomDao().GetAllRoomDetails());
        request.setAttribute("Halls", new RoomDao().GetAllHallDetails());       
        request.getRequestDispatcher("/WEB-INF/views/Rooms.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        String id =request.getParameter("id");
        // room
        String number = request.getParameter("Number");
        String mealType =request.getParameter("Meal");
        String rType = request.getParameter("RType");
        String price =request.getParameter("Price");
        
        String volume =request.getParameter("Vol");
        String hType = request.getParameter("HType");
        String rate =request.getParameter("Rate");
         
        RoomDao dao = new RoomDao(); 
        if(action.equals("CreateRoom"))
        {
            
            Room room = new Room(0,number,Integer.parseInt(rType), Integer.parseInt(mealType),Double.parseDouble( price));
            CUD_Response CUDresponse = new CUD_Response (dao.CreateRoomDetails(room)> 0);
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        if(action.equals("UpdateRoom"))
        {
            
            Room room = new Room(Integer.parseInt(id),number,Integer.parseInt(rType), Integer.parseInt(mealType),Double.parseDouble( price));
            CUD_Response CUDresponse = new CUD_Response (dao.UpdateRoomDetails(room));
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        if(action.equals("DeleteRoom"))
        {           
            //Customer customer = new Customer();
            CUD_Response CUDresponse = new CUD_Response (dao.DeleteRoomDetails(Integer.parseInt(id)));
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        // hall crud section
        if(action.equals("CreateHall"))
        {
            
            Hall room = new Hall(0,Integer.parseInt(hType),Double.parseDouble(rate), Integer.parseInt(volume));
            CUD_Response CUDresponse = new CUD_Response (dao.CreateHallDetails(room)> 0);
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        if(action.equals("UpdateHall"))
        {
            
            Hall room = new Hall(Integer.parseInt(id),Integer.parseInt(hType),Double.parseDouble(rate), Integer.parseInt(volume));
            CUD_Response CUDresponse = new CUD_Response (dao.UpdateRoomDetails(room));
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        if(action.equals("DeleteHall"))
        {           
            //Customer customer = new Customer();
            CUD_Response CUDresponse = new CUD_Response (dao.DeleteHallDetails(Integer.parseInt(id)));
            
            response.setContentType("application/json");
            // Get the printwriter object from response to write the required json object to the output stream      
            PrintWriter out = response.getWriter();
            // Assuming your json object is **jsonObject**, perform the following, it will return your json object  
            out.print(new Gson().toJson(CUDresponse));
            out.flush();
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
