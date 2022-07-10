

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class add_review extends HttpServlet {

 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
                   PrintWriter out=response.getWriter();

                   
                   
                   
                   
          try {
           
              
              
              
             
String a="INSERT INTO review(customer_review,product_id,customer_id,name,email)"
        + " VALUES(?,?,?,?,?)";
PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
             pst.setString(1,request.getParameter("review") );   
             pst.setInt(2,(int)Integer.parseInt(request.getParameter("product_id")) );  
             pst.setInt(3, (int)session.getAttribute("id"));
             pst.setString(4,request.getParameter("name") );
             pst.setString(5,request.getParameter("email") );
             
            		

             pst.executeUpdate();
             
             response.sendRedirect("exper.jsp");
        

                
        } 
       catch (Exception ex) {
           out.println(ex);
       }
        
        
    }

 
 
 

}
