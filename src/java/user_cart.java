//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.PreparedStatement;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//
//
//
//public class user_cart extends HttpServlet {
//
//   
//    @Override
//    public void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int product = Integer.parseInt(request.getParameter("prod_id"));
//        String price = request.getParameter("price");
//        HttpSession hs = request.getSession();
//        int customer = (int) hs.getAttribute("id");
//        
// try{    
// String a="insert into  cart(Quantity,Price,total_amount,customer_id,product_id) values(?,?,?,?,?)";
//            PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
//            pst.setInt(1, 1);
//            pst.setString(2, price);
//            pst.setString(3, price);
//            pst.setInt(4, customer);
//            pst.setInt(5, product);
//
//         pst.executeUpdate();
//       
//            String x="SUCCESSFULLY ADDED PRODUCT TO THE CART";
//        hs.setAttribute("remove", x);
//           response.sendRedirect("product.jsp");
//             
//       
//
//       
// }catch(Exception e){ 
//     String x="PRODUCT ALREADY THERE IN CART!!";
//     hs.setAttribute("remove", x);
//     response.sendRedirect("product.jsp");
//
// }
//       
//        }
//    }
