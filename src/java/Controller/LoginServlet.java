/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

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

//Admin.Login
@WebServlet(name = "LoginServlet", urlPatterns = {"/Login.admin"})
public class LoginServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request,HttpServletResponse response)
    		throws ServletException, IOException {
        
      request.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(request, response);
        
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 123abc
        String n = request.getParameter("name");
        String p = request.getParameter("password");
        Admin user =new LoginDao().GetUserByEmailPassword(n, p);
        if(user != null){
                System.out.println("Entere to Zone");
        	request.getSession().setAttribute("name",n);
		String originalUrl = request.getRequestURL().toString();
		String baseUrl = originalUrl.substring(0, originalUrl.length() - request.getRequestURI().length()) + request.getContextPath();		
                response.sendRedirect(baseUrl + "/Room.admin");  
        }
        else{
            //request.setAttribute("errorMessage", "Invalid Credentials!");
            //request.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(
            //        request, response);
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('User or password incorrect');");
            out.println("location='/HotelReservation/Login.admin';");
            out.println("</script>");
        }
    }
}


