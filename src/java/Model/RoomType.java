/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;


public class RoomType {
    String RoomType, PaymentLink, Img;
    Double Price;

    public RoomType(){}

    public RoomType(String RoomType, String PaymentLink, String Img, Double Price) {
        this.RoomType = RoomType;
        this.PaymentLink = PaymentLink;
        this.Img = Img;
        this.Price = Price;
    }

    public String getRoomType() {
        return RoomType;
    }

    public void setRoomType(String RoomType) {
        this.RoomType = RoomType;
    }

    public String getPaymentLink() {
        return PaymentLink;
    }

    public void setPaymentLink(String PaymentLink) {
        this.PaymentLink = PaymentLink;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double Price) {
        this.Price = Price;
    }
    

}
