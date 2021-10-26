package oodjassignment.ManageOrder;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

public class OrderItem {
    public String oID,oName;
    public int oPrice,oQuantity;

    public OrderItem(String oID, String oName, int oPrice, int oQuantity, Date cusAssDate, double tax, double totalPrice, double subTotal, double calcTax) {
        this.oID = oID;
        this.oName = oName;
        this.oPrice = oPrice;
        this.oQuantity = oQuantity;
    }

    public OrderItem() {
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public String getoName() {
        return oName;
    }

    public void setoName(String oName) {
        this.oName = oName;
    }

    public int getoPrice() {
        return oPrice;
    }

    public void setoPrice(int oPrice) {
        this.oPrice = oPrice;
    }

    public int getoQuantity() {
        return oQuantity;
    }

    public void setoQuantity(int oQuantity) {
        this.oQuantity = oQuantity;
    }
    
    public void AddOrderItem(String oID, String oName, double oPrice, int oQuantity) throws IOException
    {
        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter("OrderItem.txt",true))) 
        {
            String[] line = {oID, oName, Double.toString(oPrice), Integer.toString(oQuantity)};
            String j = "";
            int index = 0;
            
            for (String i : line)
            {
                j = j+i;
                index ++;
                if (index < 4){
                    j = j+",";
                }
                System.out.println(j);
            }
            bw.write(j);
            bw.write("\n");
            bw.close();
        }
    }
    public void DeleteOrderItem(String filepath, String oID){
        File file = new File(filepath);
        String currentLine;
        
        try{
            BufferedReader br = new BufferedReader(new FileReader(filepath));

            ArrayList<String> datalist = new ArrayList<>();
            while((currentLine = br.readLine()) != null)
            {
                if(!currentLine.startsWith(oID)){
                    datalist.add(currentLine);
                }
                System.out.println(currentLine);
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
    
    public void EditOrderItem(String filepath,String oID,String oName,double oPrice, int oQuantity){
        File file = new File(filepath);
        String currentLine;
        String data[];
        try{
            BufferedReader br = new BufferedReader(new FileReader(filepath));
            ArrayList<String> datalist = new ArrayList<>();
            while((currentLine = br.readLine()) != null)
            {
                data = currentLine.split(",");
                if(data[0].equalsIgnoreCase(oID)){
                    currentLine= oID+","+ oName+","+ oPrice+","+oQuantity;
                    datalist.add(currentLine);
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
        }catch(Exception e){  
        }
    }
    
}
