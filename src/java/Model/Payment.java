/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;


public class Payment {
    int PId, Room;
    String Card, Expiry, CVV, Date;
    Double Amount;

    public Payment() {}
    public Payment(int PId, int Room, String Card, String Expiry, String CVV, String Date, Double Amount) {
        this.PId = PId;
        this.Room = Room;
        this.Card = Card;
        this.Expiry = Expiry;
        this.CVV = CVV;
        this.Date = Date;
        this.Amount = Amount;
    }

    public int getPId() {
        return PId;
    }

    public void setPId(int PId) {
        this.PId = PId;
    }

    public int getRoom() {
        return Room;
    }

    public void setRoom(int Room) {
        this.Room = Room;
    }

    public String getCard() {
        return Card;
    }

    public void setCard(String Card) {
        this.Card = Card;
    }

    public String getExpiry() {
        return Expiry;
    }

    public void setExpiry(String Expiry) {
        this.Expiry = Expiry;
    }

    public String getCVV() {
        return CVV;
    }

    public void setCVV(String CVV) {
        this.CVV = CVV;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public Double getAmount() {
        return Amount;
    }

    public void setAmount(Double Amount) {
        this.Amount = Amount;
    }

}
