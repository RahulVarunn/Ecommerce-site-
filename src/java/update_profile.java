
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class update_profile extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        
        
  
        String build = request.getParameter("build_no");
        String street = request.getParameter("street_adr");
        String pincode = request.getParameter("pincode");
                String city = request.getParameter("city");

        String district = request.getParameter("district");
        String state = request.getParameter("state");

        HttpSession hs = request.getSession();

        try {
           
            
String a="UPDATE  customer_data SET build_no=?,street_adr=?,pincode=?,city=?,district=?,State=?"
        + " where email=? and id=?";
            PreparedStatement  pst=database.data.getConnection().prepareStatement(a);


             pst.setString(1, build);			
             pst.setString(2, street);			
             pst.setString(3, pincode);	
             pst.setString(4, city);			
             pst.setString(5, district);			
             pst.setString(6, state);			
             pst.setString(7, (String)hs.getAttribute("email"));			
             pst.setInt   (8, (int)hs.getAttribute("id"));			
             pst.executeUpdate();
             

                response.sendRedirect("profile.jsp");
         
        } catch (Exception ex) {
           PrintWriter a=response.getWriter();
a.println(ex);
        }
    }
}
