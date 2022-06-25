/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CustomerDao;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class signin extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/signin.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String cusername = request.getParameter("cusername");
        String cpass = request.getParameter("cpass");
        
        User1 user = new CustomerDao().GetUserByEmailPassword(cusername, cpass);
        if(user != null){
                  out.println("You have successfully logged!!!");
                  request.getSession().setAttribute("customer",user.getCid());
                  //RequestDispatcher rs = request.getRequestDispatcher("Booknow.html");
                  //rs.forward(request, response); // closes the o/p stream after the invoking
                  //rs.include(request, response); // keep the o/p stream opened to pass one value to another page
                  response.sendRedirect("/ManageHotelWeb/Explore");
        }
        else{
                  out.println("Username or Password incorrect");
                  RequestDispatcher rs = request.getRequestDispatcher("/WEB-INF/views/signin.jsp");
                  rs.include(request, response); //modify the requested index.html with the included error msg on it.
                  
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
