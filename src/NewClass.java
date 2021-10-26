
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Owner
 */
public class NewClass {
    static void q(int n) throws Exception{
    
        if(n>0){
            System.out.println( "Positive input" );
        }else{
            throw new Exception("Negative input" +n);
        }
    }
    public static void main(String [] args) throws Exception{
        
            NewClass n = new NewClass();
            q(-20);
         
    }
}

