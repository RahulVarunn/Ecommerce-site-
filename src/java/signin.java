
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class signin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession hs = request.getSession();
        
        try {
            
 
            
            String a="select * from customer_data where email=? and password=?";
            PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet signin=pst.executeQuery();
 
            if(signin.next() ){
                
            

                     hs.removeAttribute("password");
                     
                   

                    
                    hs.setAttribute("id", signin.getInt("id"));
                    hs.setAttribute("email", signin.getString("email"));
                    response.sendRedirect("profile.jsp");

                }      
       
            else{
                    hs.setAttribute("password", "PLEASE ENTER A CORRECT USERNAME AND PASSWORD");
                    response.sendRedirect("customer_signin.jsp");
                    

            }
             
        } catch (Exception e) {
            
  PrintWriter writerB = response.getWriter();
writerB.println(e);







        }
    }
}
