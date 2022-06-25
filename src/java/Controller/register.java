 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CustomerDao;
import Model.User1;
import Utility.PasswordHash;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class register extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/RegisterCus.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String nic = request.getParameter("nic");
        String fullname = request.getParameter("name");
        String dob = request.getParameter("dob");
        String mail = request.getParameter("mail");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pwd");
        String cpass = request.getParameter("cpwd");
        String gender = request.getParameter("gender");
        String salt = PasswordHash.getInstance().getSalt(10);
        String hashedPwd = PasswordHash.getInstance().generateSecurePassword(pass, salt);
        
        if(cpass.equals(pass)){
        // object created
        User1 e=new User1(0,nic,fullname,dob,mail, phone,hashedPwd,salt,gender);  
        // Save to the DB
        int status = new CustomerDao().RegisterCustomer(e);
          
        if(status>0){  
            out.println("Successfully Registered!");
            response.sendRedirect("/ManageHotelWeb/signin");
                    
        }else{  
            response.sendRedirect("/ManageHotelWeb/register?message=Something Went Wrong!");
        }  }
        else{ 
            response.sendRedirect("/ManageHotelWeb/register?message=Sorry! Confirm Password mis match.");
        }
        //out.close();

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
