/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Utility.*;
import Model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FeedbackDao {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Connection connection = null;
    boolean status = false;

public ArrayList<Feedback> GetAllDetails() {
       ArrayList<Feedback> feeds = new ArrayList<Feedback>();
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM feedbacks");
            
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              
               Feedback feed =new Feedback(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
               feeds.add(feed);
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
        
          return feeds;   
    
    }

   public int CreateFeedback(Feedback feedback) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO feedbacks ( `Name`, `Contact`, `Email`, `Message`) VALUES (?, ?,?,?);", Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, feedback.getName());         
            pst.setString(2, feedback.getConatct());
            pst.setString(3, feedback.getEmail());         
            pst.setString(4, feedback.getMessage());
                      
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
