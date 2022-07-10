

import java.io.IOException;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class remove_order extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           int order_id = Integer.parseInt(request.getParameter("order_id"));
           HttpSession hs = request.getSession();

  try{        
String a="update  customer_order set order_info=? where order_no=? and customer_id=?";  
    PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
             pst.setString(1,"order_cancel");
             pst.setInt(2,order_id );   
             pst.setInt(3,(int)hs.getAttribute("id"));
              
             int remove=pst.executeUpdate();
             
    if (remove > 0) {
        String x="ORDER CANCEL SUCCESSFULL!";
        hs.setAttribute("remove", x);
        response.sendRedirect("customer_pur.jsp");

    } else {
        response.sendRedirect("product.jsp");
    }
    
    
    }catch(Exception e){
    
        response.getWriter().println(e);
}

    }}
