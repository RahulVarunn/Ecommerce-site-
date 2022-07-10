

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;


public class check_session extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
HttpSession hs = request.getSession();
       
 if(hs.getAttribute("email")!=null && hs.getAttribute("id")!=null) {
    response.sendRedirect("product.jsp");
       }    
 
 else{
        response.sendRedirect("customer_signup.jsp");
        hs.removeAttribute("password");
 
 }
         
    }

}
