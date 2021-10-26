package oodjassignment.Account;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class User {
    
    public final String ADMIN_ROLE ="admin";
    public final String CUSTOMER_ROLE ="customer";
    public String USER_ROLE;
    
    public String userID, userName;
    private String password, userEmail, loginStatus;
    private String userPhone;
    protected String userType;
    
    public User(String userID, String userName, String password, String userEmail, String userPhone, String userType) {
        this.userID = userID;
        this.userName = userName;
        this.password = password;
        this.userEmail = userEmail;
        this.userPhone = userPhone;
        this.userType = userType;
    }
    
    public User() {

    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUserName() {
        return userName;

    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void AddUser(String userID, String userName, String password, String userEmail, String userPhone, String userType) throws IOException {
        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter("User.txt", true))) {
            String[] line = {userID, userName, password, userEmail, userPhone, userType};
            String j = "";
            int index = 0;
            for (String i : line) {
                j = j + i;
                index++;
                if (index < 6) {
                    j = j + ",";
                }
                System.out.println(j);
            }
            bw.write(j);
            bw.write("\n");
            bw.close();
        }
    }

    public void DeleteUser(String filepath,String userID){
        
    }
    
    public void EditUser(String filepath, String userID, String userName, String password, String userEmail, String userPhone, String userType) throws IOException {
        String currentLine;
        String data[];
        
        try{
            BufferedReader br = new BufferedReader(new FileReader(filepath));
            ArrayList<String> datalist = new ArrayList<>();
            while((currentLine = br.readLine()) != null)
            {
                data = currentLine.split(",");
                if(data[0].equalsIgnoreCase(userID)){
                    currentLine= userID+","+ userName+","+ password+","+userEmail+","+userPhone+","+userType;
                    datalist.add(currentLine);
                    USER_ROLE=data[5];
                    System.out.println(currentLine);
                }else{
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
            br.close();
            
        }catch(IOException e){  
            System.out.println("Error: "+e);
        }
    }

    public boolean login(String userID,String password) throws FileNotFoundException, IOException{
        try(BufferedReader br = new BufferedReader(new FileReader("user.txt"))){
            String currentLine;
            String data[];
            boolean exist=false;
            this.setUserID(userID);

            while((currentLine = br.readLine()) != null)
            {
                data = currentLine.split(",");
                if(data[0].equals(userID)&& data[2].equals(password)){
                    this.userType=data[5];
                    USER_ROLE=data[5];
                    exist=true;
                    return exist;
                }
            }
        }catch(IOException e){
            System.out.println("Error: "+e);
        }
        return false;
    }
    public boolean isAdmin(){
        return this.ADMIN_ROLE.equals(this.USER_ROLE);
    }
}
