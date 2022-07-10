<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../profile.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<style>
    input:hover{
border-color: #FA9483;

    }
    .form-control:focus {
        transition: 4s;
  border-color: #FF0000;
  box-shadow: 1px 1px 1px 0px #FF0000;
}

</style>


<body>


<div class="container-fluid" style="background-color: #222;color: white "><br>
        <center>

            <h5 style="font-size: 24px;"> PRODUCT DETAILS <br></h5>
        </center><br><br>
    </div>


<div class="container-fluid" style="height: 0.7cm;"></div>

<div class="container-fluid">
        
    <div class="row detail">

     

    <div class="cols inputs"  ><br><br>

        <form class="row g-3" action="../admin_addproduct" method="post" enctype="multipart/form-data">

             <div class="input-group ">
  <input type="text" name="pro_name" class="form-control" placeholder="Product Name" aria-label="Example text with button addon" aria-describedby="button-addon1">
  <input type="text" name="pro_dcard" class="form-control" placeholder="Product Description" aria-label="Example text with button addon" aria-describedby="button-addon1">
  <input type="text" name="pro_desc" class="form-control" placeholder="More Description" aria-label="Example text with button addon" aria-describedby="button-addon1">
  <input type="text" name="pro_mrp" class="form-control" placeholder="Mrp Price" aria-label="Example text with button addon" aria-describedby="button-addon1">

        </div>
        
        <div class="input-group mb-3">
              <input type="text" name="pro_disc" class="form-control" placeholder="Product Discount" aria-label="Example text with button addon" aria-describedby="button-addon1">
  <input type="text" name="pro_price" class="form-control" placeholder="Product Price" aria-label="Example text with button addon" aria-describedby="button-addon1">

  <input type="file" name="image" class="form-control" placeholder="Product Image" aria-label="Example text with button addon" aria-describedby="button-addon1">
 <button type="submit" class="button">ADD PRODUCT </button>
        
        </div>
        
        
               
                
              
        </form>
        </div>

        
        <table class="table table mt-3 table-dark table-borderless" >
  <thead>
    <tr style="border-bottom: 2px solid #FA9483">
      <th scope="col">PRODUCT  DATE</th>
      <th scope="col">PRODUCT NAME</th>
      <th scope="col">PRODUCT DESCRIBTION</th>
      <th scope="col">PRODUCT MORE DESCRIBTION</th>
      <th scope="col">PRODUCT MRP</th>
      <th scope="col">PRODUCT DISCOUNT</th>
      <th scope="col">PRODUCT PRICE</th>
     

    </tr>
  </thead>
  <tbody>
      
     <%
          Statement stmt = database.data.getConnection().createStatement();

      ResultSet retriveProduct = stmt.executeQuery("select * from product");
     while (retriveProduct.next()) {
     
     %> 
      
      
      
    <tr>
        <td><%=retriveProduct.getString("create_date")%></td>
      <td><%=retriveProduct.getString("product_name")%></td>
      <td><%=retriveProduct.getString("product_desc_card")%></td>
      <td><%=retriveProduct.getString("product_desc")%></td>
      <td><%=retriveProduct.getString("product_mrp")%></td>
      <td><%=retriveProduct.getString("product_discount")%></td>
      <td><%=retriveProduct.getString("product_price")%></td>


    </tr>
 
    <%}%>
  </tbody>
</table>
        
        
        
        

    
        </div>









</div>


      <div class="container-fluid" style="height: 0.7cm;"></div>

      <div class="container-fluid" style="background-color: #dedede; height: 1.5cm;">
      
      </div>







    

      <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-light" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">JAPAN</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 50%;justify-items: center;align-items: center;">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

       
           
            </ul>
             
            
            <form class="d-flex">
              <a href="Admin_home_custo.jsp" class="button me-3">MAIN PAGE </a>
              <a href="Admin_index.html" class="button">LOGOUT</a>

            </form>
          </div>
        </div>
      </nav>








    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>