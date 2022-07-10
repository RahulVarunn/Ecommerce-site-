
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class change extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  HttpSession session = request.getSession();
  int quantity = Integer.parseInt(request.getParameter("quantity"));
  int prod_id = Integer.parseInt(request.getParameter("prod_id"));
          HttpSession hs = request.getSession();

  
  
   String discount_price = null;
        
        Double productPrice = 0.0;
        try {
            String a="select Price from cart where customer_id=? and product_id=? ";
            PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
            pst.setInt(1, (int)session.getAttribute("id"));
            pst.setInt(2, prod_id);
            ResultSet rs=pst.executeQuery();
                      
            
            while (rs.next()) {
                discount_price = rs.getString("price");
                productPrice = Double.parseDouble(discount_price);
            }
            
            
            productPrice = productPrice * quantity;
            
String b="update cart set Quantity=? ,total_amount=?  where customer_id=? and product_id=? ";
PreparedStatement  pst_=database.data.getConnection().prepareStatement(b);
            pst_.setInt(1, quantity);
            pst_.setDouble(2,productPrice );
            pst_.setInt(3, (int)session.getAttribute("id"));
            pst_.setInt(4, prod_id);

            int updateQuantity=pst_.executeUpdate();
            
            if(updateQuantity>0){
                 String x="QUANTITY OF YOUR SELECTED PRODUCT HAS BEEN UPDATED !!";
        hs.setAttribute("remove", x);
                response.sendRedirect("product.jsp");
                
            }
            
        }catch(Exception e){
             PrintWriter x=response.getWriter();
x.println(e);
        }
  
  
  
    }
}