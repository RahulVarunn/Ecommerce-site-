

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
       <%  int product = Integer.parseInt(request.getParameter("prod_id"));
        String price = request.getParameter("price");
        HttpSession hs = request.getSession();
        int customer = (int) hs.getAttribute("id");
        
       
       try{    
          
            PreparedStatement  pst=database.data.getConnection().prepareStatement("insert into  cart(Quantity,Price,total_amount,customer_id,product_id) values(?,?,?,?,?)");
            pst.setInt(1, 1);
            pst.setString(2, price);
            pst.setString(3, price);
            pst.setInt(4, customer);
            pst.setInt(5, product);

         pst.executeUpdate();
       
            String x="SUCCESSFULLY ADDED PRODUCT TO THE CART";
        hs.setAttribute("remove", x);
           response.sendRedirect("product.jsp");
             
       

       
 }catch(Exception e){ 
     
     
     String x="PRODUCT ALREADY THERE IN CART!!";
     hs.setAttribute("remove", x);
     response.sendRedirect("product.jsp");

 }
       
       
       
       
       %>
    </body>
</html>
