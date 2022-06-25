/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.*;
import Utility.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class PaymentDao {
    
    PreparedStatement pst = null;
    ResultSet rs = null;
    Connection connection = null;
    boolean status = false;

  public int CreatePaymentDetails(Payment payment) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO payments (`Date`, `Room`, `CardNumber`, `CVV`, `Expiry`, `Amount`) VALUES (?, ?,?,?, ?, ?);", Statement.RETURN_GENERATED_KEYS);                  
            pst.setDouble(6, payment.getAmount());
            pst.setString(5, payment.getExpiry());
            pst.setString(4, payment.getCVV());
            pst.setString(3, payment.getDate());
            pst.setInt(2, payment.getRoom());
            pst.setString(1, payment.getDate());
           
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
