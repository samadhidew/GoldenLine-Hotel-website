/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.*;
import Utility.*;
import java.sql.*;

public class LoginDao {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Connection connection = null;
    boolean status = false;
   public Admin GetUserByEmailPassword(String Email, String Password) {
        Admin systemUser = null;        
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM systemuser WHERE Email=?");
            pst.setString(1, Email);
            //pst.setString(2, Password);

            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              if(i == 1)
              {
                systemUser =new Admin(rs.getString(2),rs.getString(3),rs.getString(4));
                break;
              }
            }           
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        finally {
        	if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
           
        }
        if(systemUser != null)
        {
            if(PasswordHash.getInstance().verifyUserPassword(Password, systemUser.getPassword(), systemUser.getSalt())  )
            return systemUser; 
            else return null;    
        }
        return null;
    }
}
