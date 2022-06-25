/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
    private static DBConnection dbConnection_instance = null;     
    public  Connection connection = null;
    
     String url = "jdbc:mysql://localhost:3306/";
     String dbName = "hotel";
     String driver = "com.mysql.jdbc.Driver";
     String userName = "root";
     String password = "";
     
    private DBConnection() 
    { 
            try {
                
               Class.forName(driver);
               connection = DriverManager.getConnection(url + dbName, userName, password);

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            catch (Exception e) {
                e.printStackTrace();
            }
    } 
   
    public static DBConnection getInstance()  
    {         
           if (dbConnection_instance == null) 
            dbConnection_instance = new DBConnection();   
           return dbConnection_instance;          
    }  
}
