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
        <link rel="stylesheet" href="Design.css">

    <link rel="stylesheet" href="product.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
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

.scrol {

  overflow: scroll;
  height: 519px;
}


</style>


<body>
       <%!
    String order="order_done";
        String enable="block";
        String ord="ORDER";
    String Heading="ORDER DETAILS";

    
    %> 
    
     <%if(request.getParameter("cancel")!=null){
        order="order_cancel";
        Heading="ORDER CANCEL";
         enable="none";
         ord="CANCEL";
    }else if(request.getParameter("order")!=null){
        order="order_done";
        Heading="ORDER DETAILS";
         enable="block";
         ord="ORDER";
    }
    
    
    %>
    
  
    
    
    
    
   <%


   HttpSession h = request.getSession();
   
       
    String q="select count(*) from customer_order where customer_id=? and order_info=?"; 
    PreparedStatement  pst=database.data.getConnection().prepareStatement(q);
    pst.setInt(1, (int)h.getAttribute("id"));	
    pst.setString(2,order);

    pst.execute();
    ResultSet resultCount=pst.executeQuery(); 
    resultCount.next();
    
    int count_1 = resultCount.getInt(1);
%>    


      <% 
      if(h.getAttribute("remove")!=null ){
%>



<div aria-live="polite" aria-atomic="true" class="position-fixed top-0 start-50 translate-middle-x "  style="position: absolute; margin-top: 30px;">
<div class="toast bg-white" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header bg-white " >
    <strong class="me-auto" style="color:#ff8873;">CART !</strong>
  </div>
  <div class="toast-body bg-white" >
    <center>
    <%=h.getAttribute("remove") %>   
    <%h.removeAttribute("remove");%>  
    </center>
 </div>
</div>
</div>
<% } %>

    
 
   




    
    


<div class="container-fluid overflow-auto" style="background-color: #222; color: #ededed; "><br>
        <center>
        <h3>&#26085;&#26412;  </h3>
        <h4><%=Heading%></h4>
        <p style="font-size: 14px;"> HERE CONTAINS THE ORDERED PRODUCTS AND IT'S DESCRIPTIONS
        </p>
        </center><br>
</div>


<div class="container-fluid" style=" border-top: 5px solid #FA9483;" >    
    <form method="post"> 
        <input type="submit" class="button mt-2 mb-2 me-2" style="padding-left:8px;padding-right:8px;padding-top:4px;padding-top:4px" name="order" value="ORDER DETAILS">
    <input type="submit" name="cancel" class="button" style="padding-left:8px;padding-right:8px;padding-top:4px;padding-top:4px" value="CANCEL ORDER">
    </form>
    
 
    
    
</div>

<div class="container-fluid">
        
    <div class="row detail">

        <!-- <div class="col-1 image img">

        </div> -->
            <div class="col-8 inputs scrol " style=" overflow:scroll;" >

   <%  
       int count=0;
       String prod="select * from customer_order  where  customer_id=? and order_info=?";
        PreparedStatement  p_pst=database.data.getConnection().prepareStatement(prod);
        p_pst.setInt(1, (int)session.getAttribute("id"));
        p_pst.setString(2,order);
       
        ResultSet order=p_pst.executeQuery(); 
        while (order.next()) {
           count++;

   %>        
        
        


   <form action="remove_order" method="post">
    <div class="card mb-3 shadow-lg p-3 mb-5  rounded" style="max-width: 820px; background-color: #222; color: #ededed; ">
        <div class="row g-0">
          <div class="col-md-4">
              <img src="image_product/<%=order.getString("image")%>" class=" rounded-start" alt="..." height="200" width="150">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">

                <div class="container">
                <div class="row">
                 
                  <div class="col">
                    <%=count%> . <%=order.getString("product_name")%>
                  </div>
                  <div class="col " style="text-align: right;">
                      <p><small class="text-gray button"><%=ord%> ID : <%=order.getString("order_no")%></small></p>
                    <input type="hidden" value="<%=order.getString("order_no")%>"name="order_id" >
                  </div>
                </div>
              </div></h5>

              <h6 class="card-text"> Quantity: <%=order.getString("quantity")%></h6>

              <h6 class="card-text"> Price : <%=order.getString("product_price")%> &nbsp;&nbsp; Total Price : <%=order.getString("product_total_price")%> </h6>
<br>
              <h6 class="card-text"><div class="container">
                <div class="row">
                 
                    <div class="col-7">
                        <small>  <%=order.getString("order_date")%>&nbsp; <%=order.getString("payment_mode")%></small>
                  </div>
                  <div class="col " style="text-align: right;">
                      <a type="button" class="button_1"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display:<%=enable%>">
  CANCEL NOW
</a>                  </div>
                </div>
              </div></h6>

              
            </div>
          </div>
        </div>
    </div>
   
   
   
   

<div class="modal fade popup " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog  modal-sm">
    <div class="modal-content">
        <div class="modal-header" style="height:15px">
            <p class="modal-title" id="staticBackdropLabel" style="font-size:13px" > ARE YOU CONFIRM ?</p>
      </div>
      <div class="modal-body">
          <button value="submit" class="button" style="font-size:13px "> YES CANCEL NOW </button>
             <button type="button" class="button" data-bs-dismiss="modal"style="background-color:#222 ;font-size:13px ">NO</button>

      </div>
    </div>
  </div>
</div>
   
   
   
   </form>

<% }%>
     


        </div>


        <div class="col ">
          <div class="card_japan_">
            <div class="image"></div>
            </div>
        </div>
        </div></div>


      <div class="container-fluid" style="height:0.7px; background-color: #ededed">  
      
        
      </div>

      <div class="container-fluid" style="background-color: #222; height:auto; color: #ededed;"><br>
       
        <h6 style="text-align: center;">
          THANK YOU FOR SHOPPING WITH US. DO VISIT AGAIN </h6><br>
      </div>

      <div class="container-fluid" style="background-color: #ededed; height: 0.7cm;">
      
      </div>




      <footer class="div_dark" style="height:auto;  border-top: 3px solid #FA9483;" id="about">
        <div class="container">
          <div class="row">
            <div class="col"><br><br>
            <h4>JAPAN SHOPPING</h4><br>
              <p style="font-size: 13px;">OUR SITE IS OFFICIALLY DESIGNED BY US FOR USERS TO EXPLORE ABOUT JAPAN. THE SITE  CONTAINS WILL ALL THE DETAILS OF USER THROUGH SIGN-IN AND SIGN-UP. A PRODUCT PAGE WHERE THE USER CAN DISCOVER THE WONDERS OF JAPAN THROUGH THEIR ARTS, TRADITION AND CULTURE</p>
            </div>
            <div class="col">
              <br><br><center>
              <h4>Contact us </h4><p>&#12362;&#21839;&#12356;&#21512;&#12431;&#12379;</p>
              <p>SHREYA DAS:&nbsp;  <a href="mailto:shreyad864@gmail.com" class="button_1 icon"><i class="material-icons "> email</i></a>
              <p>RAHUL VARUN:&nbsp;&nbsp;  <a href="mailto:rahulvarun387@gmail.com" class="button_1 icon"><i class="material-icons "> email</i></a></p><br>
      
              </p></center>
      
            </div>
            <div class="col">
              <br><br>
              <h5>CREATER OF WEBSITE: </h5>
              <p>&#12454;&#12455;&#12502;&#12469;&#12452;&#12488;&#21046;&#20316;&#32773; </p>
              <h6>RAHUL VARUN AND SHREYA DAS </h6><br>
              <p style="font-size: 13px;">WE HAVE DESIGNED THIS WEBSITE ON THE BASIS OF JAPAN PRODUCTS AND TECHNOLOGY , SO THAT PEOPLE GET TO KNOW MORE ABOUT JAPANESE LIFESTYLE</p>
      
            </div>
          </div></div><br><br><br>
      </footer>


    

      <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-light" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">JAPAN</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 50%;justify-items: center;align-items: center;">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#"> &#26085;&#26412;</a>
              </li>
           
            </ul>
             
            
              <form class="d-flex" action="signout" method="post">
                <a href="product.jsp" class="button">BUY MORE PRODUCT </a>&nbsp;
                <button  type="submit" class="button">SIGN OUT </button>

            </form>
          </div>
        </div>
      </nav>








   <script>
        $(document).ready(function(){
          $('.toast').toast('show');
        });
        
    </script>



<%--<jsp:forward page="Error_myorder.jsp"/>--%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>