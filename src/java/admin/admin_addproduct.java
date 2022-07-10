
package admin;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig
public class admin_addproduct extends HttpServlet {


 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
         try{
            
       Part file = request.getPart("image");
       String file_name = file.getSubmittedFileName();
     
        InputStream read_image = file.getInputStream();
        FileOutputStream write = new FileOutputStream("C:/Users/RAHUL/Desktop/Japan_project_clg/web/image_product/"+file_name);
        byte[] data = new byte[read_image.available()];
        read_image.read(data);
        write.write(data);
        write.close();
        
        String p_name = request.getParameter("pro_name");
        String p_desc = request.getParameter("pro_desc");
         String p_card = request.getParameter("pro_dcard");
         int p_mrp = Integer.parseInt(request.getParameter("pro_mrp"));
         int p_disc = Integer.parseInt(request.getParameter("pro_disc"));
         int p_price = Integer.parseInt(request.getParameter("pro_price"));
     
        
        String store = "Insert into product(product_name, product_desc, product_desc_card, product_mrp, product_discount, product_price, image) values(?,?,?,?,?,?,?)"; 
        PreparedStatement stmt = database.data.getConnection().prepareStatement(store);
        stmt.setString(1, p_name);
        stmt.setString(2, p_desc);
        stmt.setString(3, p_card);
        stmt.setInt(4, p_mrp);
        stmt.setInt(5, p_disc);
        stmt.setInt(6, p_price);
        stmt.setString(7, file_name);
       
        stmt.executeUpdate();
        response.sendRedirect("_Admin/Admin_product.jsp");
        
    }catch(Exception e){
        out.print(e);
    }

 
}
}
