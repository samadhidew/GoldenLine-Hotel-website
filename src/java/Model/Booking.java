/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import com.google.gson.Gson;

public class Booking {
    int BId, RId, IsConfirmed;
    String Checkin, Checkout, Customer,Contact, Email, NIC;

    public Booking(int BId, int RId, String Checkin, String Checkout, int IsConfirmed, String Customer, String Contact, String Email, String NIC) {
        this.BId = BId;
        this.RId = RId;
        this.IsConfirmed = IsConfirmed;
        this.Checkin = Checkin;
        this.Checkout = Checkout;
        this.Customer = Customer;
        this.Contact = Contact;
        this.Email = Email;
        this.NIC = NIC;
    }
    public Booking(){}

    public int getBId() {
        return BId;
    }

    public void setBId(int BId) {
        this.BId = BId;
    }

    public int getRId() {
        return RId;
    }

    public void setRId(int RId) {
        this.RId = RId;
    }

    public int getIsConfirmed() {
        return IsConfirmed;
    }

    public void setIsConfirmed(int IsConfirmed) {
        this.IsConfirmed = IsConfirmed;
    }

    public String getCheckin() {
        return Checkin;
    }

    public void setCheckin(String Checkin) {
        this.Checkin = Checkin;
    }

    public String getCheckout() {
        return Checkout;
    }

    public void setCheckout(String Checkout) {
        this.Checkout = Checkout;
    }

    public String getCustomer() {
        return Customer;
    }

    public void setCustomer(String Customer) {
        this.Customer = Customer;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNIC() {
        return NIC;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }

    public String getJson()
    {
        Gson gson = new Gson();
        return gson.toJson(this);       
    }
}
