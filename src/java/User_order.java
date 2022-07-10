

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author RAHUL
 */
public class User_order extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
   HttpSession h = request.getSession();

try{
    
    int card_no = 0;
    String card_name = null;
   String card_validate=null;
   int card_cvv = 0;
        String card_order=request.getParameter("yesno");

    if(card_order.equals("CARD PAYMENT")){
    
    
    card_no=Integer.parseInt(request.getParameter("card_no"));
    card_name=request.getParameter("card_name");
    card_validate=request.getParameter("card_valid");
    card_cvv=Integer.parseInt(request.getParameter("card_cvv"));
    } 
//      
  
    
    int order=(int) (Math.random()*(1000-100+1)+100);
    
  String prod="select product.product_name,cart.id,product.image,cart.Quantity,cart.Price,cart.total_amount,cart.product_id from product,cart "
                + "where product.id=cart.product_id and customer_id=?";
        PreparedStatement  p_pst=database.data.getConnection().prepareStatement(prod);
        p_pst.setInt(1, (int)h.getAttribute("id"));			
        p_pst.execute();
        ResultSet cart_product=p_pst.executeQuery(); 
        while (cart_product.next()) {
            
      
            String q="insert into customer_order( order_no,image,product_name,quantity,product_price,product_total_price,payment_mode,card_number,card_name,card_validate,card_cvv,customer_id,order_info) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement x=database.data.getConnection().prepareStatement(q);
            x.setString(1, cart_product.getString("cart.id")+order);             
            x.setString(2,cart_product.getString("product.image"));
            x.setString(3,cart_product.getString("product.product_name") );
            x.setInt(4, cart_product.getInt("cart.Quantity"));
            x.setInt(5,  cart_product.getInt("cart.Price") );
            x.setInt(6, cart_product.getInt("cart.total_amount"));
            x.setString(7, card_order);         
            x.setInt(8, card_no);
            x.setString(9, card_name);
            x.setString(10, card_validate);
            x.setInt(11, card_cvv);
   
            
         
            
            x.setInt(12,(int)h.getAttribute("id") );   
                        x.setString(13, "order_done");         

             x.executeUpdate();
                   
        }
        
        String q="delete from cart where customer_id=?"; 

    PreparedStatement  pst=database.data.getConnection().prepareStatement(q);
    pst.setInt(1, (int)h.getAttribute("id"));			
    pst.execute();

    
    
       response.sendRedirect("customer_pur.jsp");  

        
        
        
    }catch(Exception e){
        PrintWriter w=response.getWriter();
        w.println(e);
    }
    

}}
