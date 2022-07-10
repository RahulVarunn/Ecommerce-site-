
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
















public class signup extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession hs = request.getSession();

       if(hs.getAttribute("email")!=null && hs.getAttribute("id")!=null) {
                        response.sendRedirect("product.jsp");
   
       }
        
       else{
        
        
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("mobile");
        String gender = request.getParameter("gender");
        String build = request.getParameter("build_no");
        String street = request.getParameter("street_adr");
        String pincode = request.getParameter("pincode");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String state = request.getParameter("state");

        try {
           
             
String a="INSERT INTO customer_data(name,phone,email,gender,password,build_no,street_adr,pincode,city,district,State)"
        + " VALUES(?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
             pst.setString(1,name );   
             pst.setString(2, phone);  
             pst.setString(3, email); 
             pst.setString(4, gender);
             pst.setString(5, password);
             pst.setString(6, build);			
             pst.setString(7, street);			
             pst.setString(8, pincode);
             pst.setString(9, city);			
             pst.setString(10, district);			
             pst.setString(11, state);			

             pst.executeUpdate();
             
                String message = "Customer register successfully.";
                response.sendRedirect("customer_signin.jsp");
         
        } 
       catch (Exception ex) {
           PrintWriter a=response.getWriter();
a.println(ex);
       }
        }
    }
}
