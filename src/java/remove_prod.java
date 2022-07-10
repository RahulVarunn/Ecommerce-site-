

import java.io.IOException;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class remove_prod extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     int productId = Integer.parseInt(request.getParameter("prod_id"));
                  HttpSession hs = request.getSession();

  try{        
String a="delete from cart where product_id=? and customer_id=?";  
    PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
             pst.setInt(1,productId );   
             pst.setInt(2,(int)hs.getAttribute("id"));
              
             int remove=pst.executeUpdate();
             
    if (remove > 0) {
        String x="ITEM HAS BEEN REMOVED!";
        hs.setAttribute("remove", x);
                response.sendRedirect("product.jsp");

    } else {
        response.sendRedirect("product.jsp");
    }
    
    
    }catch(Exception e){
    
}

    }}
