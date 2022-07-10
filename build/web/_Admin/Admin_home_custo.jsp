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

.img{
    background-image: url("../image/profile.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
    height: 300px;
}


</style>


<body>


<div class="container-fluid" style="background-color: #222;color: white "><br>
        <center>

            <h5 style="font-size: 24px;"> PRODUCT DETAILS <br></h5>
        </center><br><br>
    </div>


<div class="container-fluid img" style="height: 5cm; "></div>

<div class="container-fluid">
        
    <div class="row detail">

     



        
        <table class="table table  table-dark table-borderless" >
  <thead>
    <tr style="border-bottom: 2px solid #FA9483">
      <th scope="col"> NAME</th>
      <th scope="col"> EMAIL</th>
      <th scope="col"> GENDER</th>
      <th scope="col">PHONE NO</th>
      <th scope="col">ADDRESS </th>
      <th scope="col">JOIN DATE</th>
     

    </tr>
  </thead>
  <tbody>
      
     <%
          Statement stmt = database.data.getConnection().createStatement();

      ResultSet retriveProduct = stmt.executeQuery("select * from customer_data");
          


     while (retriveProduct.next()) {
 String adr=retriveProduct.getString("build_no").toUpperCase()+" "+
        retriveProduct.getString("street_adr").toUpperCase()+" "+
        retriveProduct.getString("pincode").toUpperCase()+" "+
        retriveProduct.getString("city").toUpperCase()+" "+
        retriveProduct.getString("district").toUpperCase()+" "+
        retriveProduct.getString("State").toUpperCase();        
     
     %> 
      
      
      
    <tr>
        <td><%=retriveProduct.getString("name")%></td>
      <td><%=retriveProduct.getString("email")%></td>
      <td><%=retriveProduct.getString("gender")%></td>
      <td><%=retriveProduct.getString("phone")%></td>
      <td><%=adr%></td>
      <td><%=retriveProduct.getString("added_date")%></td>


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
              <a href="Admin_product.jsp" class="button me-3">ADD PRODUCT </a>
              <a href="Admin_index.html" class="button">LOGOUT</a>

            </form>
          </div>
        </div>
      </nav>








    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>