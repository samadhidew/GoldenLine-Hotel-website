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
import java.util.ArrayList;


public class BookingDao {
    PreparedStatement pst = null;
    ResultSet rs = null;
    Connection connection = null;
    boolean status = false;
    
public ArrayList<Room> CheckAvailability(int RType,int Meal, int count, String Checkin, String Checkout){
       ArrayList<Room> rooms = new ArrayList<Room>();
       
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            if(RType < 1){
                if(Meal > 0){
                   pst = connection.prepareStatement("SELECT DISTINCT  rooms.* FROM rooms left join bookings on rooms.Id = bookings.RoomId where rooms.MealPlan =? and (((CheckIn not between ? and ?) and (CheckOut not between ? and ?) "
            + "  and IsConfirmed = 0) or bookings.RoomId IS NULL);");
                  pst.setInt(1, Meal);
                    pst.setString(2, Checkin);
                    pst.setString(4, Checkin);
                    pst.setString(3, Checkout);
                    pst.setString(5, Checkout);
                }
                else{
                   pst = connection.prepareStatement("SELECT DISTINCT  rooms.* FROM rooms left join bookings on rooms.Id = bookings.RoomId where  (((CheckIn not between ? and ?) and (CheckOut not between ? and ?) "
            + "  and IsConfirmed = 0) or bookings.RoomId IS NULL);");
                    
                                pst.setString(1, Checkin);
                                pst.setString(3, Checkin);
                                pst.setString(2, Checkout);
                                pst.setString(4, Checkout);
                }
            }
            if(RType > 0){
                if(Meal > 0){
                   pst = connection.prepareStatement("SELECT DISTINCT  rooms.* FROM rooms left join bookings on rooms.Id = bookings.RoomId where rooms.Rtype =? and rooms.MealPlan =? and (((CheckIn not between ? and ?) and (CheckOut not between ? and ?) "
            + "  and IsConfirmed = 0) or bookings.RoomId IS NULL);");
                        pst.setInt(1, RType);
                                    pst.setInt(2, Meal);
                                    pst.setString(3, Checkin);
                                    pst.setString(5, Checkin);
                                    pst.setString(4, Checkout);
                                    pst.setString(6, Checkout);
                }
                else{
                   pst = connection.prepareStatement("SELECT DISTINCT  rooms.* FROM rooms left join bookings on rooms.Id = bookings.RoomId where rooms.Rtype =? and (((CheckIn not between ? and ?) and (CheckOut not between ? and ?) "
            + "  and IsConfirmed = 0) or bookings.RoomId IS NULL);");
                      pst.setInt(1, RType);
                        
                        pst.setString(2, Checkin);
                        pst.setString(4, Checkin);
                        pst.setString(3, Checkout);
                        pst.setString(5, Checkout);
                }
            }
            
            System.out.println(pst);
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
               int countStr = count < 1 ? 1:count;
               Room room =new Room(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),rs.getDouble(5));
               room.setBookingURL("MakeBooking?room="+room.getrType()+"&id="+room.getId()+"&in="+Checkin+"&out="+Checkout+"&count="+countStr+"&tot="+(room.getPrice()*count)+"&url="+room.getPaymentLink());
               rooms.add(room);
                System.out.println(rs.getInt(1));
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
           if(rooms.size() >= count){
                 return rooms;
            }           
           else return new ArrayList<Room>();
   }
public ArrayList<Booking> GetAllBookingDetails() {
       ArrayList<Booking> bookings = new ArrayList<Booking>();
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM bookings");
            
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              
               Booking book =new Booking(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),rs.getInt(5),  rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
               bookings.add(book);
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
        
          return bookings;   
    
    }

 public ArrayList<Booking> GetBookingDetails(int id) {
       ArrayList<Booking> bookings = new ArrayList<Booking>();
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM bookings where BId=?");
            pst.setInt(1, id);
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              
               Booking book =new Booking(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),rs.getInt(5),  rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
               bookings.add(book);
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
        
          return bookings;   
    
    }

    public boolean UpdateBookingDetails(int BId, int status, String name, String mail, String contact, String nic) {
       boolean result=false;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("Update bookings set `IsConfirmed`=?, `Customer`=?, `Contact`=?, `Email`=?, `NIC`=? where `BId`=?;");
            pst.setInt(1, status);
            pst.setString(2, name);
            pst.setString(3, contact);
            pst.setString(4, mail);
            pst.setString(5, nic);
            pst.setInt(6, BId);
            
            int rowsInserted = pst.executeUpdate();
            if (rowsInserted > 0) {
                result= true;
            }  
        }
        catch (Exception e) {
            e.printStackTrace();
            result = false;
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

    public int CreateBookingDetails(Booking booking) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO bookings ( `RoomId`, `CheckIn`, `CheckOut`, `IsConfirmed`, `Customer`, `Contact`, `Email`, `NIC`) VALUES (?, ?,?,?, ?,?,?,?);", Statement.RETURN_GENERATED_KEYS);
            pst.setString(2, booking.getCheckin());         
            pst.setInt(4, booking.getIsConfirmed());
            pst.setInt(1, booking.getRId());
            pst.setString(3, booking.getCheckout());
            pst.setString(5, booking.getCustomer());         
            pst.setString(6, booking.getContact());
            pst.setString(7, booking.getEmail());
            pst.setString(8, booking.getNIC());
           
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

    public boolean DeleteBookingDetails(int bookId) {
      boolean result=false;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("Delete from bookings where `BId` = ?;");
            
            pst.setInt(1, bookId);
           
            int rowsProcessed = pst.executeUpdate();
            if (rowsProcessed > 0) {
                result= true;
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

    public ArrayList<Hall> CheckHallAvailability(int HType, String Checkin){
       ArrayList<Hall> rooms = new ArrayList<Hall>();
       
        try
        {            
            connection = DBConnection.getInstance().connection;        
                
                   pst = connection.prepareStatement("SELECT DISTINCT  halls.* FROM halls left join hbookings on halls.Id = hbookings.HId where ((Date not between ? and ?) and  "
            + " IsConfirmed = 0) or hbookings.HId IS NULL;");                  
                  pst.setString(1, Checkin);
                  pst.setString(2, Checkin);                
            System.out.println(pst);
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
               Hall room =new Hall(rs.getInt(1), rs.getInt(2),rs.getDouble(3), rs.getInt(4));
               room.setBookingURL("MakeBooking?room="+room.getType()+"&id="+room.getId()+"&in="+Checkin+"&tot="+room.getRate()+"&book=1&url="+room.getPaymentLink());
               rooms.add(room);
                System.out.println(rs.getInt(1));
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
           if(rooms.size() >= 0){
                 return rooms;
            }           
           else return new ArrayList<Hall>();
   }

   public int CreateHallBookingDetails(Booking booking) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO hbookings ( `HId`, `Date`, `IsConfirmed`, `Customer`, `Contact`, `Email`, `NIC`) VALUES (?, ?,?,?, ?,?,?);", Statement.RETURN_GENERATED_KEYS);
            pst.setString(2, booking.getCheckin());         
            pst.setInt(3, booking.getIsConfirmed());
            pst.setInt(1, booking.getRId());           
            pst.setString(4, booking.getCustomer());         
            pst.setString(5, booking.getContact());
            pst.setString(6, booking.getEmail());
            pst.setString(7, booking.getNIC());
           
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
