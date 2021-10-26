package oodjassignment.GUI;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import static oodjassignment.Account.Global.userID;
import oodjassignment.ManageOrder.Order;
import oodjassignment.ManageOrder.OrderItem;

public class CheckOutOrderGUI extends javax.swing.JFrame {

    OrderItem orItem= new OrderItem();
    CheckOutCartGUI checkout =new CheckOutCartGUI();
    Order  or = new Order();
    private static final DecimalFormat df2 = new DecimalFormat("#.##");
    public double totalPrice;
    public String orderItem;
    public boolean orderStatues=false;
    public CheckOutOrderGUI() throws IOException {
        initComponents();
        CreateReceipt();
    }

    public final void CreateReceipt() throws IOException{
        String data[];
        try{
            txtOrderDetail.setText("***************************************\n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"                 Receipt          \n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"_______________________________________\n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"User ID:"+userID+"\n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"Date:"+or.AddDate()+"\n");
            String currentLine;
            String line;
            BufferedReader br = new BufferedReader(new FileReader("OrderItem.txt"));
            double total=0;
            orderItem="";
            txtOrderDetail.setText(txtOrderDetail.getText()+"ID   Name\tPrice Quantity\tTotal\n");
            while((currentLine = br.readLine()) != null){
                data=currentLine.split(",");
                double sub=or.calcSubTotal(Double.parseDouble(data[2]),Double.parseDouble(data[3]));
                total=total+sub;
                txtOrderDetail.append(data[0]+"  "+data[1]+"\t"+data[2]+"\t"+Integer.parseInt(data[3])+"\t"+String.valueOf(sub)+"\n");
                orderItem=orderItem+data[0]+"-"+data[3]+"/";
            }
            totalPrice=or.calcTotal(total);
            txtOrderDetail.setText(txtOrderDetail.getText()+"_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"Sub Price:"+"\t\t\t"+checkout.lblSubAmount.getText()+"\n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"Total tax(6%):"+"\t\t\t"+df2.format(or.calcTax(Double.parseDouble(checkout.lblSubAmount.getText())))+"\n");
            txtOrderDetail.setText(txtOrderDetail.getText()+"Total Price:"+"\t\t\t"+or.calcTotal(Double.parseDouble(checkout.lblSubAmount.getText()))+"\n");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CheckOutOrderGUI.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        txtOrderDetail = new javax.swing.JTextArea();
        jLabel1 = new javax.swing.JLabel();
        btnOrder = new javax.swing.JButton();
        btnBack = new javax.swing.JButton();
        btnPrint = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Check Out-Order");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        txtOrderDetail.setColumns(20);
        txtOrderDetail.setFont(new java.awt.Font("Monospaced", 0, 18)); // NOI18N
        txtOrderDetail.setRows(5);
        jScrollPane1.setViewportView(txtOrderDetail);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setText("Check Out-Order");

        btnOrder.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnOrder.setText("Place order");
        btnOrder.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOrderActionPerformed(evt);
            }
        });

        btnBack.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnBack.setText("Back");
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });

        btnPrint.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnPrint.setText("Print");
        btnPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrintActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(12, 12, 12)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnOrder, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(btnPrint, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btnBack, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(49, 49, 49)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 444, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(20, 20, 20))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addComponent(jLabel1)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 433, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(81, 81, 81)
                        .addComponent(btnOrder, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(49, 49, 49)
                        .addComponent(btnPrint, javax.swing.GroupLayout.DEFAULT_SIZE, 35, Short.MAX_VALUE)
                        .addGap(43, 43, 43)
                        .addComponent(btnBack, javax.swing.GroupLayout.DEFAULT_SIZE, 36, Short.MAX_VALUE)
                        .addGap(186, 186, 186)))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnOrderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOrderActionPerformed
        int opt= JOptionPane.showConfirmDialog(null,"Are you sure you want to place order?","Check Out Warning",JOptionPane.YES_NO_OPTION);
        if(opt == JOptionPane.YES_OPTION){
            JOptionPane.showMessageDialog(this, "Place order successful!");
            try {
                or.AddOrder("OrderRecord.txt",userID,or.getDate(),or.calcTotal(Double.parseDouble(checkout.lblSubAmount.getText())),orderItem);
                btnOrder.setEnabled(false);
                btnPrint.setEnabled(true);
                orderStatues=true;
            } catch (IOException ex) {
                Logger.getLogger(CheckOutOrderGUI.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_btnOrderActionPerformed

    private void btnPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrintActionPerformed
        JOptionPane.showMessageDialog(null, "Print receipt successful!"); 
        System.out.println(txtOrderDetail.getText());
        int opt2=JOptionPane.showConfirmDialog(null,"Do you want to close this program?","Quit",JOptionPane.YES_NO_OPTION);
            if(opt2 == JOptionPane.YES_OPTION){
                PrintWriter pw = null;
            try {
                JOptionPane.showMessageDialog(this, "Thanks for using this application!");
                pw = new PrintWriter("OrderItem.txt");
                pw.close();
                System.exit(0);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(CheckOutOrderGUI.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                pw.close();
            }
            }
    }//GEN-LAST:event_btnPrintActionPerformed

    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
        try {
            if(orderStatues){
                PrintWriter pw = new PrintWriter("OrderItem.txt");
                pw.close();
                new ProductCaterlogGUI().setVisible(true);
                this.dispose();
            }else{
                int opt2=JOptionPane.showConfirmDialog(null,"Are u sure want to back? Your cart's item will be clean after you click yes","Back Warning",JOptionPane.YES_NO_OPTION);
                if(opt2 == JOptionPane.YES_OPTION){
                    PrintWriter pw = new PrintWriter("OrderItem.txt");
                    pw.close();
                    new CheckOutCartGUI().setVisible(true);
                    this.dispose();
                    //clean the order item
                    
                }
            } 
        }catch(Exception e){
        }           
    }//GEN-LAST:event_btnBackActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        txtOrderDetail.setEnabled(false);
        btnPrint.setEnabled(false);
    }//GEN-LAST:event_formWindowOpened

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    new CheckOutOrderGUI().setVisible(true);
                } catch (IOException ex) {
                    Logger.getLogger(CheckOutOrderGUI.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBack;
    private javax.swing.JButton btnOrder;
    private javax.swing.JButton btnPrint;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea txtOrderDetail;
    // End of variables declaration//GEN-END:variables
}
