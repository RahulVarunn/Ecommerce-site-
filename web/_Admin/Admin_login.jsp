

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        
    <%
      
       
            String a="select * from admin_control where  admin_password=?";
            PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
            pst.setString(1, request.getParameter("admin_password"));
            ResultSet verify=pst.executeQuery();
 
            if(verify.next() ){
                
            
response.sendRedirect("Admin_home_custo.jsp");
                   

                  

                }      
       
            else{
                    
response.sendRedirect("Admin_index.html");

            }
    
    %>
        
    </body>
</html>


