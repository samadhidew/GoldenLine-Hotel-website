/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Utility.*;
import Model.*;
import java.sql.*;
import java.util.ArrayList;


public class RoomDao {
PreparedStatement pst = null;
    ResultSet rs = null;
    Connection connection = null;
    boolean status = false;

    public Room GetSingle(int id) {
       ArrayList<Room> rooms = new ArrayList<Room>();
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM rooms where Id=?");
            pst.setInt(1, id);
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              
               Room room =new Room(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),rs.getDouble(5));
               rooms.add(room);
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
          if(rooms.size() > 0)
             return rooms.get(0);
          else return null;   
    
    }
  
    /**
     *
     * @return
     */
    public ArrayList<Room> GetAllRoomDetails() {
       ArrayList<Room> rooms = new ArrayList<Room>();
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM rooms");
            
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              
               Room room =new Room(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),rs.getDouble(5));
               rooms.add(room);
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
        
          return rooms;   
    
    }

    public boolean UpdateRoomDetails(Room room) {
       boolean result=false;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("Update rooms set `RType`=?,  `Price`=?, `MealPlan`=?, `RoomNo`=? where `Id`=?;");
            pst.setInt(1, room.getrType());
            
            pst.setDouble(2, room.getPrice());
            pst.setInt(3, room.getMealType());
            pst.setString(4, room.getRoomNo());
            pst.setInt(5, room.getId());
           
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

    public int CreateRoomDetails(Room room) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO rooms ( `RoomNo`, `RType`, `MealPlan`, `Price`) VALUES (?, ?,?,?);", Statement.RETURN_GENERATED_KEYS);
            pst.setInt(2, room.getrType());         
            pst.setDouble(4, room.getPrice());
            pst.setInt(3, room.getMealType());
            pst.setString(1, room.getRoomNo());
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

    public boolean DeleteRoomDetails(int roomId) {
      boolean result=false;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("Delete from rooms where `Id` = ?;");
            
            pst.setInt(1, roomId);
           
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

    public ArrayList<Hall> GetAllHallDetails() {
       ArrayList<Hall> rooms = new ArrayList<Hall>();
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("SELECT * FROM halls");
            
            rs = pst.executeQuery();
            int i = 1;
            while (rs.next()) {
              
               Hall room =new Hall(rs.getInt(1), rs.getInt(2),rs.getDouble(3), rs.getInt(4));
               rooms.add(room);
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
        
          return rooms;   
    
    }
   
    public boolean DeleteHallDetails(int hallId) {
      boolean result=false;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("Delete from halls where `Id` = ?;");
            
            pst.setInt(1, hallId);
           
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

     public int CreateHallDetails(Hall hall) {
       int result=0;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("INSERT INTO halls ( `Type`, `Rate`, `Volume`) VALUES (?, ?,?);", Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, hall.getType());         
            pst.setInt(3, hall.getVolume());
            pst.setDouble(2, hall.getRate());
            
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
    // update
    
    public boolean UpdateRoomDetails(Hall hall) {
       boolean result=false;
        try
        {
            
            connection = DBConnection.getInstance().connection;        
            pst = connection.prepareStatement("Update halls set `Type`=?,  `Rate`=?, `Volume`=? where `Id`=?;");
            pst.setInt(1, hall.getType());
            
            pst.setDouble(2, hall.getRate());
            pst.setInt(3, hall.getVolume());
            pst.setInt(4, hall.getId());
           
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
}

