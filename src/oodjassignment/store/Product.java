package oodjassignment.store;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Product {
    private String pID;
    private String pName;
    private double pPrice;
    private int pQuantity;
    private String pType;
    private double pCost;
    
    public Product(String pID, String pName, double pPrice, int pQuantity, String pType, double pCost) {
         this.pID = pID;
         this.pName = pName;
         this.pPrice = pPrice;
         this.pQuantity = pQuantity;
         this.pType = pType;
         this.pCost = pCost;
    }

    //constructer
    public Product(String pID, String pName, double pPrice) {
        this.pID = pID;
        this.pName = pName;
        this.pPrice = pPrice;
    }

    //constructer
    public Product() {
        
    }
        
    //Getter & Setter
    public String getProductID() {
        return pID;
    } 
    
    public void setProductID(String pID) {
        this.pID = pID;
    }
    
    public String getProductName() {
        return pName;
    } 
    
    public void setProductName(String pName) {
        this.pName = pName;
    }
    
    public double getProductPrice() {
        return pPrice;
    } 
    
    public void setProductPrice(double pPrice) {
        this.pPrice = pPrice;
    }    
    public int getProductQuantity() {
        return pQuantity;
    } 
    
    public void setProductQuantity(int pQuantity) {
        this.pQuantity = pQuantity;
    }
    
    public String getProductType(){
        return pType;
    } 
    
    public void setProductType(String pType) {
        this.pType = pType;
    }
    
    public double getProductCost() {
        return pCost;
    }
    
    public void setProductCost(double pCost) {
        this.pCost = pCost;
    }
    
//Method of manage product
    public void AddProduct(String pID, String pName, double pPrice, int pQuantity, String pType, double pCost) throws IOException
    {
        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter("Product.txt",true))) 
        {
            String[] line = {pID, pName, Double.toString(pPrice), Integer.toString(pQuantity), pType, Double.toString(pCost)};
            String j = "";
            int index = 0;
            
            for (String i : line)
            {
                j = j+i;
                index ++;
                if (index < 6){
                    j = j+",";
                }
                System.out.println(j);
            }
            bw.write(j);
            bw.write("\n");
            bw.close();
        }
    }
    
    
    public void DeleteProduct(String filepath, String pID) throws IOException {
        String currentLine;
        
        try{
            BufferedReader br = new BufferedReader(new FileReader(filepath));

            ArrayList<String> datalist = new ArrayList<String>();
            while((currentLine = br.readLine()) != null)
            {
                if(!currentLine.startsWith(pID)){
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
    
    public void UpdateProduct(String filepath, String pID, String pName, double pPrice, int pQuantity, String pType, double pCost){
        File file = new File(filepath);
        String currentLine;
        String data[];
        
        try{

            BufferedReader br = new BufferedReader(new FileReader(filepath));
            ArrayList<String> datalist = new ArrayList<String>();
            while((currentLine = br.readLine()) != null)
            {
                data = currentLine.split(",");
                if(data[0].equalsIgnoreCase(pID)){
                    currentLine= pID+","+ pName+","+ pPrice+","+pQuantity+","+pType+","+pCost;
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
    public void UpdateProductQuantity() throws IOException{
        try {
            //read
            BufferedReader bro = new BufferedReader(new FileReader("OrderItem.txt"));
            BufferedReader brp = new BufferedReader(new FileReader("Product.txt"));
            String CurrentLineO;
            String CurrentLineP;
            
            ArrayList<String> data = new ArrayList<String>();
            ArrayList<String> order = new ArrayList<String>();
            
            while((CurrentLineP =brp.readLine())!=null){
                data.add(CurrentLineP);
            }
            while((CurrentLineO =bro.readLine())!=null){
                order.add(CurrentLineO);
            }
            for (String i : order){
                String[] dataO = i.split(",");
                int index = 0;
                for (String j : data){
                    String[] dataP = j.split(",");
                    if(dataO[0].equals(dataP[0])){
                        int newValue=Integer.parseInt(dataP[3])-Integer.parseInt(dataO[3]);
                        String CP=dataP[0]+","+dataP[1]+","+dataP[2]+","+Integer.toString(newValue)+","+dataP[4]+","+dataP[5];
                        System.out.println(CP);
                        data.set(index, CP);
                        break;
                    }else{
                        index++;
                    }
                }
            }
            System.out.println(data);
            
            BufferedWriter bw = new BufferedWriter(new FileWriter("Product.txt"));
            PrintWriter pw=new PrintWriter(bw);
            for (String i : data){
                pw.println(i);
            }
            pw.flush();
            pw.close();
            bw.close();
            bro.close();
            brp.close();
        }   catch (FileNotFoundException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
    