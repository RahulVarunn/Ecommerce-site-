<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="profile.css">
    <link rel="stylesheet" href="product.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>



<body style="background-color: #222;">

 <% 
        HttpSession h = request.getSession();
        String x= "select * from product where id=?";
        PreparedStatement  p_pst=database.data.getConnection().prepareStatement(x);
        p_pst.setInt(1,(int)h.getAttribute("produ_id"));
        ResultSet cart_product=p_pst.executeQuery(); 
        if( cart_product.next()){

            
        %>
<div class="container-fluid" style="height: 0.7cm;"></div>


<form action="addtocart.jsp" >
<div class="container-fluid"><br>
<div class="row detail">
        
    <div class="col-4" style="border-left: 20px solid #222">
    <input type="hidden" name="prod_id" value="<%=cart_product.getInt("id")%>">         
    <input type="hidden" name="price" value="<%=cart_product.getString("product_price")%>">
    <img src="image_product/<%=cart_product.getString("image")%>" class="img-fluid"  alt="...">
    </div>

<div class="col-8 inputs" style="background-color: rgb(241, 240, 240); color: #222; border-right: 50px solid rgb(32, 30, 30); border-left: 20px solid #222" >
<br>
    
    <div class="col discount"  style="padding-left: 25px ; padding-right: 25px;">
        <%=cart_product.getString("product_discount")%>% OFF
    </div><center><br><br>
         
    <h3><%=cart_product.getString("product_name")%></h3><br><br>
    <p><%=cart_product.getString("product_desc")%></p><br>
     
    <h6 class="card-text">MRP: <del><%=cart_product.getString("product_price")%>.RS</del></h6>
    <h5 class="card-text" style=" color: #FD363B;">PRICE: <%=cart_product.getString("product_price")%>.RS</h5><br><br><br><br>

    <button type="submit"class="button" >
      ADD TO CART 
    </button>


      </center>

      <br>
        </div>





%>

      
</div></div><br><br></form>
<% } %>


<% 

    

   String q="select * from customer_data where  id=?";
    PreparedStatement  pst_data=database.data.getConnection().prepareStatement(q);
      pst_data.setInt(1, (int)h.getAttribute("id"));			

    ResultSet customer_data=pst_data.executeQuery(); 
    customer_data.next();
    
    
    String name_data=customer_data.getString("name").toUpperCase();
    String email_data=customer_data.getString("email").toUpperCase();

    
%>   


<div class="container-fluid " style="background-color: #222; color: #dedede; border-top: 3px solid #FA9483; background-color: #222; color: #ededed;"><br><br>
<div class="container">
   
    <label for="formFile" class="form-label"><h6>PRODUCT REVIEW</h6></label>
    
    <form action="add_review" method="post">
    <div class="input-group mb-3 mt-2 " >
  <input type="text"  class="form-control" name="review" placeholder="ADD YOUR REVIEW" aria-label="Example text with button addon" aria-describedby="button-addon1">
  <input type="hidden" value="<%=(int)h.getAttribute("produ_id")%>" name="product_id" ">
    <input type="hidden" value="<%=name_data%>" name="name" ">
  <input type="hidden" value="<%=email_data%>" name="email" ">

  <button class=" button" type="submit" id="button-addon1">SUBMIT YOUR REVIEW</button>
    </div>
        
    </form>
    
    
    <% 
    
               
             

        
        String x1= "select * from review where product_id=? ";
        
          

        PreparedStatement  p_pst1=database.data.getConnection().prepareStatement(x1);
        p_pst1.setInt(1, (int)h.getAttribute("produ_id"));
        
            ResultSet data=p_pst1.executeQuery();
            while(data.next()){
    %>
    <h5 class="mt-4" style="color: #FA9483"><%=data.getString("name")%></h5>
    <h6 style="font-size: 12px;text-align: left"> <%="REVIEW ON : "+data.getTimestamp("date")%></h6>
    <p><%=data.getString("customer_review")%></p>   
    
    <% }%>
</div>
    <br><br><br>
</div>





    

      <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-light" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">JAPAN</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 50%;justify-items: center;align-items: center;">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">HOME &#26085;&#26412;</a>
              </li>
           
            </ul>
             
            
            <form class="d-flex">
              <a href="product.jsp" class="button">BACK TO PRODUCT  </a>
            </form>
          </div>
        </div>
      </nav>



        <jsp:include page="Loader.html"></jsp:include>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>