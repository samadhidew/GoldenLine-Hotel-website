/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utility;

import com.google.gson.Gson;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;


public class SMSSender {
    public void sendMessage(String receiver, String msg){
    try{
    URL url = new URL("https://api.getshoutout.com/coreservice/messages");
    URLConnection con = url.openConnection();
    HttpURLConnection http = (HttpURLConnection)con;
    http.setRequestMethod("POST"); // PUT is another valid option
    http.setDoOutput(true);
    
    Root root = new Root();
    root.content = new Content();
    root.content.sms = msg;
    root.destinations = new ArrayList<String>();
    root.destinations.add(receiver);
    root.source = "ShoutDEMO";
    root.transports = new ArrayList<String>();
    root.transports.add("sms");

    byte[] out = new Gson().toJson(root).getBytes(StandardCharsets.UTF_8);
    int length = out.length;

    http.setFixedLengthStreamingMode(length);
    http.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
    http.setRequestProperty("Authorization", "Apikey eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJiM2NkZWQyMC03MDRlLTExZWMtYmVhOS05M2E3M2U4MjAzZmIiLCJzdWIiOiJTSE9VVE9VVF9BUElfVVNFUiIsImlhdCI6MTY0MTYyNDM4NiwiZXhwIjoxOTU3MTU3MTg2LCJzY29wZXMiOnsiYWN0aXZpdGllcyI6WyJyZWFkIiwid3JpdGUiXSwibWVzc2FnZXMiOlsicmVhZCIsIndyaXRlIl0sImNvbnRhY3RzIjpbInJlYWQiLCJ3cml0ZSJdfSwic29fdXNlcl9pZCI6IjYzNzY2Iiwic29fdXNlcl9yb2xlIjoidXNlciIsInNvX3Byb2ZpbGUiOiJhbGwiLCJzb191c2VyX25hbWUiOiIiLCJzb19hcGlrZXkiOiJub25lIn0.wRS-GuBlDhT1_gKQrF6Z5OoTHRdYz3ErBB3JHyMyTtE");
    http.connect();
    try(OutputStream os = http.getOutputStream()) {
        os.write(out);
    }
    catch(Exception exr){System.out.println(exr.toString());}
    }
    catch(Exception exr){System.out.println(exr.toString());}
    }


public class Content{
    public String sms;
    public Content(){}
}

public class Root{
    public Root(){}
    public String source;
    public List<String> destinations;
    public List<String> transports;
    public Content content;
}
}
