/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oodjassignment.User;

/**
 *
 * @author Owner
 */
public class user {
    public String userID,userName;
    private String password,userEmail,userPhone,loginStatus;
    protected String userType;
    
    public String getUserName(){
        return userName;
        
    }
    public void setUserName(String userName){
        this.userName=userName;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    public void RegisterUser(){
        //code of register user
    }
    
    public void LoginUser(){
        //code of Login User
    }
    
    public void VerifyUserAccount(String userType){
        //code of verify user account(user or admin)
    }
    
    public void VerifyLoginStatus(String loginstatus){
        //code of verify login status(login success or faild)
    }
    
    public void EditUserProfile(){
        //code of edit user profile
    }
    
    public void DeleteUser(){
        //code of delete user
    }
    
    public void ViewUser(){
        //code of view all user detail
    }
    
    public String toString(){
        return"User[username="+userName+",password="+password+"]";
    }
    
    
}
