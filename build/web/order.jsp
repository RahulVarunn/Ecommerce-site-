<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="profile.css">
    <link rel="stylesheet" href="order.css">
    <link rel="stylesheet" href="product.css">
     <link rel="stylesheet" href="Design.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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


.imagg{
    background-image: url("image/profile.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
    height: auto;
}

body{
    background-image: url(image/img_1.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}

</style>





<body style="background-color: #222;">
    
  



  <%


   HttpSession h = request.getSession();
   
       
    String q="select count(*) from cart where customer_id=?"; 
    PreparedStatement  pst=database.data.getConnection().prepareStatement(q);
    pst.setInt(1, (int)h.getAttribute("id"));			

    pst.execute();
    ResultSet resultCount=pst.executeQuery(); 
    resultCount.next();
    
    int count = resultCount.getInt(1);
%> 
   
<%

    q="select * from customer_data where email=? and id=?";
    PreparedStatement  pst_data=database.data.getConnection().prepareStatement(q);
     pst_data.setString(1, (String)h.getAttribute("email"));
      pst_data.setInt(2, (int)h.getAttribute("id"));			

    ResultSet customer_data=pst_data.executeQuery(); 
    customer_data.next();
    
    
    
String adr=customer_data.getString("build_no").toUpperCase()+" "+
        customer_data.getString("street_adr").toUpperCase()+" "+
        customer_data.getString("pincode").toUpperCase()+" "+
        customer_data.getString("city").toUpperCase()+" "+
        customer_data.getString("district").toUpperCase()+" "+
        customer_data.getString("State").toUpperCase();



    
%>   



  <%
    String amt="select sum(total_amount) from cart where customer_id=?";
    PreparedStatement  pst_=database.data.getConnection().prepareStatement(amt);
    pst_.setInt(1, (int)h.getAttribute("id"));			
    pst_.execute();
    ResultSet total_amount=pst_.executeQuery(); 
   total_amount.next();
        int total = total_amount.getInt(1);  
    
  %>

    
    
<br><br><br>


<% if(count>0){ %>


<div class="container  ">
<div class="row">
      
      <div class="col imagg"> </div>
      <div class="col" style="background-color: white;">
         <br> <br><center><h5>PAYMENT PROCESS</h5></center><br>

      <div class="container"style=" overflow: scroll;height: 520px;">

      <div class="row">
          <div class="col-6">
            <h5>DETAILS :</h5><br>

          <h6><%=customer_data.getString("name").toUpperCase()%>    <i class="spinner-border ms-auto spinner-border-sm" role="status" aria-hidden="true" style="font-size: 16px; color: #FA9483;"></i>
          </h6>
          <h6><%=customer_data.getString("phone").toUpperCase()%> </h6>
                    <h6><%=customer_data.getString("email").toUpperCase()%> </h6>

      </div>
      <div class="shadow p-3 mb-5 bg-body rounded col  top-0 end-0">
          
     <div class="progress">
    <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="10" aria-valuemax="100" style="width:<%=count+10%>% ;background-color: #FA9483; color: #222">
      <%=count%> Item
    </div>
  </div>
          
     <br> <h6>Total Amount :<%=total%></h6>
      <a class="button" value="submit"  type="submit" data-bs-toggle="offcanvas" href="#cart"  aria-controls="offcanvasScrolling">VIEW PRODUCTS</a>
      </div></div>
                  
      <div class="row">
        

        <h6 class="input_text">SELECT YOUR PAYMENT TYPE: </h6>
        

        <form class="row g-2" action="User_order" method="post">

                    



                      
                      <div class="col-5" >





                        <div class="form-check " >
                          <input class="form-check-input" type="radio"    onclick="javascript:yesnoCheck();" value="CASH ON DELIVERY" name="yesno" id="noCheck">
                          <label class="form-check-label" for="flexRadioDefault1">
                            <p class="input_text">CASH ON DELIVERY</p>
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" onclick="javascript:yesnoCheck();" value="CARD PAYMENT" name="yesno" id="yesCheck">
                          <label class="form-check-label" for="flexRadioDefault2">
                            <p class="input_text">CARD PAYMENT</p>
                          </label>
                        </div>



                        
                      </div>




                       <div class="col-md-7 shadow p-3 mb-5 bg-body rounded   top-0 end-0" id="ifYes" style="display: none;">
                        <h6 class="input_text">Enter Your Card Details</h6>

                        <div class="col-12">
                            <input type="number" class="form-control"placeholder="Enter Your Card Number" name="card_no"><br>
                          <input type="text" class="form-control"  placeholder="Enter A Card Holder Name" name="card_name"><br>

                        </div>

                        <div class="row">
                          <div class="col-7">
                            <input type="text" class="form-control" placeholder="Valid Till "  name="card_valid">
                          </div>
                          
                          <div class="col">
                            <input type="text" class="form-control" placeholder="CVV" name="card_cvv">
                          </div>
                        </div>



                        </div>   
                        



                      

                    
                      <div class="col-12">
                        <h6 class="input_text">Address</h6>
                        <textarea class="form-control" style="background-color:#ededed; color: #222" id="exampleFormControlTextarea1" rows="4" readonly ><%=adr %></textarea>
                      </div><br>
                      <div class="col-12 s top-0 end-0">

                        <button type="" class="button">CANCEL </button>


<button type="button" class="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
   PROCEED NOW
</button>                      </div>
                      
                      
<div class="modal fade popup" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog  modal-sm">
    <div class="modal-content">
        <div class="modal-header" style="height:15px">
            <p class="modal-title" id="staticBackdropLabel" style="font-size:13px" > ARE YOU CONFIRM ?</p>
      </div>
      <div class="modal-body">
          <button value="submit" class="button" style="font-size:13px "> YES CONTINUE </button>
             <button type="button" class="button" data-bs-dismiss="modal"style="background-color:#222 ;font-size:13px ">NO</button>

      </div>
    </div>
  </div>
</div>                   
                      
                      
                    </form>
                   
      </div><br></div>

                    

                    

                      </div>
                      
                      
                      
                      
                      
                      <br><br>
                </div>
          </div>

          
        
    





<br>



    
   


<script>
function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('ifYes').style.display = 'block';
    }
    else document.getElementById('ifYes').style.display = 'none';
}

</script>

  
  <div class="offcanvas offcanvas-start " tabindex="-1" id="cart" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header div_dark">
    <div class="container-fluid div_dark" >

<center>
<h5>MY CART</h5>
<h6>&#12459;&#12540;&#12488;</h6>
</center>
    </div>  
</div>
<div class="offcanvas-body  " style="background-color: #222; " >


      <%
      int cartno = 0;
      %>
      
      <%
        String prod="select product.product_name,product.image,cart.Quantity,cart.Price,cart.total_amount,cart.product_id from product,cart "
                + "where product.id=cart.product_id and customer_id=?";
        PreparedStatement  p_pst=database.data.getConnection().prepareStatement(prod);
        p_pst.setInt(1, (int)h.getAttribute("id"));			
        p_pst.execute();
        ResultSet cart_product=p_pst.executeQuery(); 
        while (cart_product.next()) {
            cartno++;
      %>


      <div class="card" style="box-shadow: 0px 0px 6px 2px rgba(0, 0, 0, 0.205)">
      <div class="card-header"><%=cartno%> . <%=cart_product.getString("product_name")%> </div>
    <div class="card-body">  
    <div class="container">
    <div class="row">
   
       
        
    <div class="col-auto">
        <p class="card-title">PRICE : <%=cart_product.getString("price")%></p>
    </div>

    <div class="col-auto">
        <p class="card-title">TOTAL PRICE : <%=cart_product.getString("total_amount")%></p>
    </div>
    
      <div class="col-auto">
              <p class="card-title button"> QUANTITY : <%=cart_product.getString("Quantity")%></p>

    </div>
   
   
    
    </div>
    
    
    </div>


    </div>
</div><br>                      
<% } %>


</div></div>



   <div class="container-fluid div_dark" style="border-top: 3px solid #FA9483;" >
          <br>
          <center>
          <h6>YOUR TOTAL AMOUNT ??</h6>
          <p><%=total%> RUPEES</p>
          
       
         </center><br>
           </div>  
 

    <%}else{%>
 
    <jsp:forward page="product.jsp"/>
<%}%>




  <script> 
        $(window).bind("pageshow", function(event) {
    if (event.originalEvent.persisted) {
        window.location.reload(); 
    }
    });

    </script>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>