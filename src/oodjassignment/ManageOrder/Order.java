package oodjassignment.ManageOrder;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.IOException;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

public class Order {
    protected double tax=0.06;
    public double totalPrice;
    private double subTotal,calcTax;
    public String date;
    public String oID;
    public String uID;
    public String orderItem;

    public Order(double totalPrice, double subTotal, double calcTax, String date, String oID, String uID, String orderItem) {
        this.totalPrice = totalPrice;
        this.subTotal = subTotal;
        this.calcTax = calcTax;
        this.date = date;
        this.oID = oID;
        this.uID = uID;
        this.orderItem = orderItem;
    }

    public Order() {
        
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public String getuID() {
        return uID;
    }

    public void setuID(String uID) {
        this.uID = uID;
    }

    public String getOrderItem() {
        return orderItem;
    }

    public void setOrderItem(String orderItem) {
        this.orderItem = orderItem;
    }


    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public double getCalcTax() {
        return calcTax;
    }

    public void setCalcTax(double calcTax) {
        this.calcTax = calcTax;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
    public void AddOrder(String filepath,String uID, String date,double TotalPrice,String orderItem ) throws IOException{
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(filepath,true))) 
        {
            BufferedReader br = new BufferedReader(new FileReader(filepath));
            String currentLine;
            int index=1;
            while((currentLine = br.readLine()) != null){
                index++;
            }
            oID="O"+index;
            bw.write(oID+","+uID+","+date+","+TotalPrice+","+orderItem+"\n");
            bw.close();
        }
    }
    
    public void DeleteOrder(String filepath,String oID){
        String currentLine;
        
        try{
            BufferedReader br = new BufferedReader(new FileReader(filepath));

            ArrayList<String> datalist = new ArrayList<String>();
            while((currentLine = br.readLine()) != null)
            {
                if(!currentLine.startsWith(oID)){
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
            
        }
    }
    public String AddDate(){
        Date obj = new Date();
        date =obj.toString();
        return date;
    }
    public double calcTax(double subTotal){
        calcTax=subTotal*tax;
        return calcTax;
    }
    public double calcSubTotal(double oPrice,double oQuantity){
        subTotal=oPrice*oQuantity;
        return subTotal;
    }
    //calculate price after tax
    public double calcTotal(double subTotal){
        totalPrice=calcTax+subTotal;
        return totalPrice;
    }
}


