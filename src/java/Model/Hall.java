/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import com.google.gson.Gson;


public class Hall {
    int id, type, volume;
    double rate;
    String url;
    public Hall(int id, int type, double rate, int volume) {
        this.id = id;
        this.type = type;
        this.volume = volume;
        this.rate = rate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public String getHallTypeStr(){
        if(this.type ==1) return "Classic Type";
        else return "Luxury Type";
    }
    public String getHallNumber(){
       return "H"+this.id;
    }
    
    public String getPaymentLink(){
        if(this.type ==1) return "https://sandbox.payhere.lk/pay/o6755dc18";
        else return "https://sandbox.payhere.lk/pay/o1052ec8e";
    }
    public String getJson()
    {
        Gson gson = new Gson();
        return gson.toJson(this);       
    }
    public String getURL(){
       return url;
    }
    
    public void setBookingURL(String url){
       this.url = url;  
    }
    public String getImgStr(){
      String str = "";
      if(type ==1) str = "background-image: url(images/poio.jpg);" ;
      else str = "background-image: url(images/chera3.jpg);"; 
      return str;    
    }
}
