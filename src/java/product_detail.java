

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class product_detail extends HttpServlet {



    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int a=Integer.parseInt(request.getParameter("prod_d"));
        HttpSession hs = request.getSession();
        hs.setAttribute("produ_id", a);
                     response.sendRedirect("exper.jsp");

    }


}
