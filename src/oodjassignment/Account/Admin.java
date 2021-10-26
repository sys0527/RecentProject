package oodjassignment.Account;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Admin extends User{

    public Admin(String userID, String userName, String password, String userEmail, String userPhone, String userType) {
        super(userID, userName, password, userEmail, userPhone, userType);
    }

    public Admin() {
    }
    
    @Override
    public void DeleteUser(String filepath,String userID) {
        String currentLine;
        try{
            BufferedReader br = new BufferedReader(new FileReader(filepath));
            ArrayList<String> datalist = new ArrayList<>();
            while((currentLine = br.readLine()) != null)
            {
                if(!(currentLine.startsWith(userID))){
                    datalist.add(currentLine);
                }
            }
            BufferedWriter bw = new BufferedWriter(new FileWriter(filepath));
            PrintWriter pw = new PrintWriter(bw);
            for (String i : datalist){
                pw.println(i);
            }
            pw.flush();
            pw.close();
            bw.close();
        }catch(IOException e){
            System.out.println("Error: "+e);
        }
    }
}
