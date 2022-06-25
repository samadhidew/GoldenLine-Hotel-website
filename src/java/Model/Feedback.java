/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;


public class Feedback {
    int id;
    String name,email, conatct, message;

    public Feedback(int id, String name, String conatct, String email,  String message) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.conatct = conatct;
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getConatct() {
        return conatct;
    }

    public void setConatct(String conatct) {
        this.conatct = conatct;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
}
