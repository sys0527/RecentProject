/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oodjassignment;

import java.util.Date;

/**
 *
 * @author Owner
 */
public class Order {
    public String oID,cusID;
    public Date cusAssDate;
    protected double tax;
    public double totalPrice;
    private double subTotal,calcTax;//added
    
    public Order_Item oder_item;//use oder item in order
    
    public void DeleteOrder(){
        //code of Delete Order
    }
    
    public void SearchOrder(){
        //code of search order
    }
    
    public void CheckOut(){
        //code of check out
    }
    
    public double calcSubTotal(double totalPrice){
        
        //code of calcSubTotal
        return subTotal;
    }
    
    public double calcTax(double subTotal){
        //code
        return calcTax;//maybe
    }
    
    public double calcTotal(double calcTax,double subTotal){
        return totalPrice;//maybe
    }
}
