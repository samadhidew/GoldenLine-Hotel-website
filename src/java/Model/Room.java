/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import com.google.gson.Gson;
import java.io.InputStream;


public class Room {
    int id, rType, mealType;
    String roomNo, bookingURL;
    double price;
    InputStream stream;

    public Room(){}

    public Room(int id,String roomNo, int rType, int mealType,  double price) {
        this.id = id;
        this.rType = rType;
        this.mealType = mealType;
        this.roomNo = roomNo;
        this.price = price;
    }

    public InputStream getStream() {
        return stream;
    }

    public void setStream(InputStream stream) {
        this.stream = stream;
    }

    public String getBookingURL() {
        return bookingURL;
    }

    public void setBookingURL(String bookingURL) {
        this.bookingURL = bookingURL;
    }

    public int getId() {
        return id;
    }

    public String getrTypeStr(){
      String str = "";
      if(rType ==1) str = "Family" ;
      else if(rType ==2) str = "Classic";
      else if(rType ==3) str = "Luxury";
      else str = "Superior"; 
      return str+" Room";    
    }

    public String getPaymentLink(){
      String str = "";
      if(rType ==1) str = "https://sandbox.payhere.lk/pay/ofe5c8da2" ;
      else if(rType ==2) str = "https://sandbox.payhere.lk/pay/o60381801";
      else if(rType ==3) str = "https://sandbox.payhere.lk/pay/o173f2897";
      else str = "https://sandbox.payhere.lk/pay/o895bbd34"; 
      return str;    
    }

    public String getImgStr(){
      String str = "";
      if(rType ==1) str = "background-image: url(images/room-5.jpg);" ;
      else if(rType ==2) str = "background-image: url(images/room-11.jpg);";
      else if(rType ==3) str = "background-image: url(images/room-9.jpg);";
      else str = "background-image: url(images/room-13.jpg);"; 
      return str;    
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getrType() {
        return rType;
    }

    public void setrType(int rType) {
        this.rType = rType;
    }

    public int getMealType() {
        return mealType;
    }

    public void setMealType(int mealType) {
        this.mealType = mealType;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getJson()
    {
        Gson gson = new Gson();
        return gson.toJson(this);       
    }
}
