/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.*;
import Utility.DBConnection;
import Utility.PasswordHash;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class CustomerDao {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Connection connection = null;
    boolean status = false;

   public User1 GetUserByEmailPassword(String Email, String Password) {
        User1 systemUser = null;        
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM c_details WHERE email=?");
            pst.setString(1, Email);
            //pst.setString(2, Password);

            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              if(i == 1)
              {
                systemUser = new User1(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
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

   // register cusomer in the system
    public int RegisterCustomer(User1 user) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO c_details ( `nic`, `fullname`, `dob`, `email`, `contact`, `password`, `salt`, `gender`) VALUES (?, ?,?,?, ?,?,?,?);", Statement.RETURN_GENERATED_KEYS);
            pst.setString(2, user.getFullname());         
            pst.setString(4, user.getMail());
            pst.setString(1, user.getNic());
            pst.setString(3, user.getDob());
            pst.setString(5, user.getPhone());         
            pst.setString(6, user.getPassword());
            pst.setString(7, user.getSalt());
            pst.setString(8, user.getGender());
           
            int rowsInserted = pst.executeUpdate();            
            if (rowsInserted > 0) {
                rs = pst.getGeneratedKeys();
                if (rs.next()) {
                  result = rs.getInt(1);                 
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
        return result;
    }


}
