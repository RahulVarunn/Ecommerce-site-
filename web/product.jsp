<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

  
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="product.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<style>
        input:hover{
border-color: #FA9483;

    }
    .form-control:focus {
        transition: 4s;
  border-color: #FF0000;
  box-shadow: 0px 0px 0px 0px #FF0000;
}

</style>

<body>


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
    
    
    String name_data=customer_data.getString("name").toUpperCase();
    String email_data=customer_data.getString("email").toUpperCase();
    String phone_data=customer_data.getString("phone").toUpperCase();

    
%>   

    
    
 <% 
 Statement stmt = database.data.getConnection().createStatement();
ResultSet cou_prod =stmt.executeQuery("select count(*) from product" );
cou_prod.next();
int count_prod = cou_prod.getInt(1); %>   
    
    

    

    
    
    
<div id="carouselExampleCaptions" class="carousel slide " data-bs-ride="carousel">

 


<div class="carousel-indicators indicator">
     
       </div>
    <div class="carousel-inner">
    <div class="carousel-item active">

      <% 
      if(h.getAttribute("remove")!=null ){
%>



<div aria-live="polite" aria-atomic="true" class="position-fixed top-0 start-50 translate-middle-x "  style="position: absolute; margin-top: 30px;">
<div class="toast bg-white" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header bg-white " >
    <strong class="me-auto" style="color:#ff8873;">CART !</strong>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
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


            <video autoplay loop  muted style="padding-right: 63px;" >
            <source class="embed-responsiv" src="video/a.mp4" type="video/mp4" >
            </video>            
    <div class="carousel-caption d-none d-md-block">
            <h3  class="text">IT"S TIME TO EXPLORE  PRODUCT </h3>
            <p>A GLIMPSE IN THE HEART OF JAPAN</p>
                       <br><br><br><br><br>
</div></div></div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
             <span class="carousel-control-prev-icon" aria-hidden="true"></span>
             <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
        </button>
</div><br><br>



<div class="container top_layer"  id="info">
    <center><br>
     <h5>&#20170;&#26085;&#12399;</h5>
     <h4>HELLO <%=name_data%> </h4>
     <p>OUR PAGE WILL DISPLAY VARIETY OF JAPANESE HANDMADE PRODUCTS RELATED TO THEIR CULTURE AND TRADITION</p>
     <p>&#26085;&#26412;&#12398;&#25991;&#21270;&#12395;&#38306;&#36899;&#12375;&#12383;&#12373;&#12414;&#12374;&#12414;
        &#12394;&#25163;&#20316;&#12426;&#12398;&#35069;&#21697;&#12434;&#32057;&#20171;&#12375;&#12414;&#12377;</p>
    </center><br>
</div>


<div class="container-fluid div_dark " style="height:auto" >
        <br><br><br><br><br><br><br>

<div class="container ">
<div class="row">
<div class="col-8">
 
    <h3 style="max-width: 500px;  ">JAPANESE POTTERY</h3><br><br>
    <p style="max-width: 500px; ">Japanese pottery, objects made in 
    Japan from clay and hardened by fire: earthenware, stoneware, and porcelain.
    Japan is a well-wooded country, and wood has always been used 
    there for domestic utensils of all kinds, either in a natural state or lacquered.
    Until recent times, pottery and porcelain were not employed extensively for general domestic use but were reserved for such special purposes as the tea ceremony. 
    In pottery the Japanese especially admire accidental effects that resemble natural forms.
    Objects that appear misshapen and glazes that exhibit what would usually be regarded as serious imperfections in the West are admired by the Japanese connoisseur.<br><br>
    The Japanese potter liked to reveal the impress of the hand that made the object. Marks, such as the ridges left by the fingers in a newly thrown vessel, were frequently accentuated instead of being obliterated, and marks made by tools were often left untouched.
    </p>
</div>
     
<div class="col">
        <img src="video/image_pot.jpg" style="border: 1px solid rgba(255, 255, 255, 0.507);" height="450">
</div></div></div><br><br><br>



<div class="container">
<div class="row">
    
<div class="col-6">
    <img src="video/image_kimono.jpg" style="border: 1px solid rgba(255, 255, 255, 0.507);" height="450">
</div>

<div class="col-6">
    <h3 style="max-width: 500px; ">JAPANESE KIMONO</h3><br><br>
    <p style="max-width: 500px; ">
    he kimono, literally meaning ‘thing to wear’ is a traditional Japanese garment and national dress of Japan.
    It is usually a full length T-shaped robe with straight lines.
    It a worn so that the hem falls at the ankle and has collars and wide, long sleeves. 
    The kimono wraps around the body, with the left side on top of the right (except when dressing for a burial), and is secured with an obi (sash) tied at the back. 
    With a kimono, one wears traditional  Japanese footwear (geta or zori) and split toe socks called tabi.<br><br>
    A kimono is made from a single bolt of cloth. It takes outstanding skills to create a kimono. A whole bolt of fabric (tan) is used to make only one kimono. The standard dimensions of tan are 12½ yards long and 14 in. wide. When completed, a kimono is made up of four main strips of fabric: two panels form the sleeves, and another two cover the body.
</p>
</div></div></div><br><br><br>


<div class="container">
<div class="row">
<div class="col-8">
    
    <h3 style="max-width: 500px; ">KOKESHI DOLL</h3><br><br>
    <p style="max-width: 500px; ">Japanese Kokeshi Dolls are handmade wooden dolls distinguished by a single trunk and head, with their faces and clothing painted on.
    Unlike most other types of dolls, Kokeshi Dolls don’t have defined hands, legs and feet, and instead resemble a very minimalistic structure.
   <br><br><br> This unique structure has given Japanese Kokeshi Dolls an easily identifiable appearance, and one that is recognised across the globe.<br><br><br>
    These dolls are often used as ornaments, collection items, and gifts, which have become extremely popular worldwide. 
    Highly regarded for their historical origins and cultural association.
</p></div>
     
<div class="col">
    <img src="video/image_doll.jpg" style="border: 1px solid rgba(255, 255, 255, 0.507);" height="450">
</div></div></div><br><br><br>


 

</div><br><br>


<div class="container-fluid" id="album">

  <center>
      <H4>JAPANESE PRODUCT ALBUM</H4> 
      <P>THE IMAGES SHOWS THE TOP FAMOUS JAPANESE CULTURAL PRODUCTS WITH IT'S ELABORATED INFORMATION<BR>
      &#12371;&#12398;&#20889;&#30495;&#12399;&#12289;&#26085;&#26412;&#12398;&#26377;&#21517;&#12394;&#25991;&#21270;&#30340;
      &#35069;&#21697;&#12434;&#35443;&#32048;&#12394;&#24773;&#22577;&#12392;&#12392;&#12418;&#12395;&#31034;&#12375;&#12390;
      &#12356;&#12414;&#12377;</P>
  </center><BR><BR><BR>

<div class="container">
<div class="row">
<div class="col album">
      
      
<div class="card  text-white album">
      <img src="video/image_pot.jpg" height="450" class="card-img">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">JAPANESE POTTERY<br>日本の陶器  </h3></center>
</div>
</div>
<br><br></div>

<div class="col" >      
      <div class="card  text-white album">
      <img src="video/image_kimono.jpg" height="450" class="card-img " ;">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">JAPANESE KIMONO<br>日本の着物</h3></center>
      </div>
      </div>
</div>

<div class="col">
      <div class="card  text-white album">
      <img src="video/image_doll.jpg" height="450" class="card-img">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">KOKESHI DOLL<br>こけし </h3></center>
      </div>
      </div>
</div>
     

</div></div>



<div class="container">
      <div class="row">
      <div class="col-8 album">
      
      <div class="card  text-white album">
      <img src="video/image_koi.jpg" height="450" class="card-img">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">KOINOBORI<br> 鯉のぼり</h3></center>
      </div>
      </div>
      <br><br>
</div>

      <div class="col" >
      <div class="card  text-white album">
      <img src="video/image_ironware.jpg" height="450" class="card-img " ;">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">NAMBU IRONWARE<br> (南部鉄器)</h3></center>
      </div></div></div></div>
</div>


<div class="container">
      <div class="row">
      <div class="col" >
      <div class="card  text-white album">
      <img src="video/image_daruma.jpg" height="450" class="card-img " ;">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">DARUMA<br> だるま   </h3></center>
      </div></div> </div>

      <div class="col-8 album">
      <div class="card  text-white album">
      <img src="video/image_lac.jpg" height="450" class="card-img">
      <div class="card-img-overlay">
      <center><h3 class=" album_cont">LACQUERWARE<br> 漆器   </h3></center>
      </div>
      </div>
<br><br> </div>
     
  </div>
</div>

</div>



<div class="container-fluid " style="height:auto; background-color: #ededed;" ><center><br><br>
      <h5>&#26085;&#26412;&#12398;&#20253;&#32113;&#12420;&#12362;&#31085;&#12426;&#12395;&#38306;&#36899;&#12377;&#12427;&#35079;&#25968;&#12398;&#35069;&#21697;&#12434;&#36092;&#20837;&#12377;&#12427;&#12371;&#12392;&#12364;&#12391;&#12365;&#12414;&#12377;
      </h5>
       <p>YOU CAN BUY MULTIPLE PRODUCT'S WHICH ARE RELATED TO JAPANESE TRADITION AND FESTIVES  </p>
       <P>SHRIMES , POTTERY, TEA CEREMONY AND MANY MORE  </P>
      <a href="#shop" class="button">SHOP NOW</a>
      </center><br><br>
</div>

<div class="container-fluid " style="height:auto; " ><br>
    <div class="container">
    <div class="row justify-content-end">
    <div class="col"><h5><BR>
    TOTAL ITEM : <%=count_prod%><br>
    &#12503;&#12525;&#12480;&#12463;&#12488;
    </h5>
    
    
   
    
    </div>
   
      <div class="col-md-4 offset-md-4" id="shop">
      <CENTER>
      <h4>HELLO <%=name_data%> </h4>
      <p>LET'S DISCOVER YOUR FAVOURITE PRODUCT<BR>
      &#12354;&#12394;&#12383;&#12398;&#22909;&#12365;&#12394;&#35069;&#21697;&#12434;&#35211;&#12388;&#12369;&#12414;&#12375;&#12423;&#12358;</P></CENTER>
      </div>
    </div>
    </div><br>
    

    
    
    
    
    
    
    
    
    
    
    
    
    
       <form id="SEARCH">
    <div class="input-group mb-4" style="width:400px">
          <input type="text" name="search" class="form-control" placeholder="SEARCH PRODUCT" aria-label="Example text with two button addons">

  <button class="button"  type="submit" name="button">Search</button>
  <button class="btn btn-outline-secondary" name="close" type="submit">Close</button>
</div>
    </form>
    
    
    
    
    
       <% 
         
            
           if(request.getParameter("button")!= null){%>
          
            
        <% 
            String search = request.getParameter("search");
            String a = "select * from product where product_name=?";
        
            PreparedStatement stmt1 = database.data.getConnection().prepareStatement(a);
            stmt1.setString(1, search);
            ResultSet retriveProduct1 = stmt1.executeQuery();
           
            %>       
    
            
           <center>   <h4 class="mb-5,mt-5">SEARCH RESULT</h4> </center>
     
       
 <div class="row row-cols-1 row-cols-md-4 mt-4 g-4" style="  border-bottom: 1.5px solid #FD5D61;">
      
     

 <%
     
     
         
     while (retriveProduct1.next()) {
 %>    
      

 
 
      <div class="col">
           <form action="addtocart.jsp" >

      <div class="card h-50 card_hover" style="width: 19rem;" >
          <input type="hidden" name="prod_id" value="<%=retriveProduct1.getInt("id")%>">
          
          <input type="hidden" name="price" value="<%=retriveProduct1.getString("product_price")%>">
          <img src="image_product/<%=retriveProduct1.getString("image")%>" height="250" width="100" class="card-img " ;">
      <div class="card-body" >
          <h5 class="card-title"><%=retriveProduct1.getString("product_name")%></h5> 
      <div class="container">
      <div class="row">
      <div class="col-7"> </div>
      <div class="col discount" ><%=retriveProduct1.getString("product_discount")%> % OFF </div>
      </div></div>
      <p class="card-text"><%=retriveProduct1.getString("product_desc_card")%></p>
      <h6 class="card-text">MRP: <del><%=retriveProduct1.getString("product_mrp")%>.RS</del></h6>
      <h5 class="card-text" style=" color: #FD363B;">PRICE: <%=retriveProduct1.getString("product_price")%>.RS</h5>
      <button type="submit" style="padding: 4px; padding-left: 7px;padding-bottom:  3px"  class="button"  >
      <span>SHOP NOW </span><i class="material-icons icon" style="font-size: 30px;">shopping_bag</i>
      </button>
      
  
      </div>
      </div>
      </form>
           

      <div style="width: 19rem">
         <form action="product_detail" method="post" >
       <input type="hidden" name="prod_d" value="<%=retriveProduct1.getInt("id")%>">
       <button type="submit" class="button" style="width: 19rem;  " action="product_detail" >
      KNOW MORE
      </button>
         </form></div><br><br>
      </div>
<%  } %>

</div>     
<br><br>
           <% }else if(request.getParameter("close")!= null){%>



<%  }  %>



 <div class="row row-cols-1 row-cols-md-4 g-4" >

 <%
     ResultSet retriveProduct = stmt.executeQuery("select * from product");
     while (retriveProduct.next()) {
 %>    
     
      <div class="col">
           <form action="addtocart.jsp" >

      <div class="card h-50 card_hover" style="width: 19rem;" >
          <input type="hidden" name="prod_id" value="<%=retriveProduct.getInt("id")%>">
          
          <input type="hidden" name="price" value="<%=retriveProduct.getString("product_price")%>">
          <img src="image_product/<%=retriveProduct.getString("image")%>" height="250" width="100" class="card-img " ;">
      <div class="card-body" >
          <h5 class="card-title"><%=retriveProduct.getString("product_name")%></h5> 
      <div class="container">
      <div class="row">
      <div class="col-7"> </div>
      <div class="col discount" ><%=retriveProduct.getString("product_discount")%> % OFF </div>
      </div></div>
      <p class="card-text"><%=retriveProduct.getString("product_desc_card")%></p>
      <h6 class="card-text">MRP: <del><%=retriveProduct.getString("product_mrp")%>.RS</del></h6>
      <h5 class="card-text" style=" color: #FD363B;">PRICE: <%=retriveProduct.getString("product_price")%>.RS</h5>
      <button type="submit" style="padding: 4px; padding-left: 7px;padding-bottom:  3px"  class="button"  >
      <span>SHOP NOW </span><i class="material-icons icon" style="font-size: 30px;">shopping_bag</i>
      </button>
      
  
      </div>
      </div>
      </form>
           

      <div style="width: 19rem">
         <form action="product_detail" method="post" >
       <input type="hidden" name="prod_d" value="<%=retriveProduct.getInt("id")%>">
       <button type="submit" class="button" style="width: 19rem;  " action="product_detail" >
      KNOW MORE
      </button>
         </form></div><br><br>
      </div>
<%}%>
</div>

         
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



</div><br><br>




<div class="container-fluid " style="height:auto; background-color: #ededed;" >
      <br>
      <center>
      <h2>&#12354;&#12426;&#12364;&#12392;</h2>
      <h4>THANKS FOR VISITING ! HOPE YOU LIKE OUR PRODUCTS</h4><br>
      <p style="font-size: 12px;"> REPLACEMENT AND RETURN POLICY : The product will be replaced or returned within 10 days if any damages occur during the delivery<br>
      CUSTOMER CARE : Our customer service line will be available to the user for 24/7 for any issues and other purposes related to product<br>
      CASH BACK : The product amount will be returned in 2-3 days to the user after collecting the product from the user.
      </p>  
      <br>
      </center>
</div>

<div style="height: 2cm;"></div>

  <div class="container-fluid">
  <div class="row row-cols-5">
        <div class="col">
            <img src="video/img_1.jpg" class="rounded mx-auto d-block" alt="..." height="300">
        </div>

        <div class="col">
            <img src="video/img_2.jpg" class="rounded mx-auto d-block" alt="..." height="300">
        </div>

        <div class="col">
          <img src="video/img_3.jpg" class="rounded mx-auto d-block" alt="..." height="300">
        </div>

        <div class="col">
          <img src="video/img_4.jpg" class="rounded mx-auto d-block" alt="..." height="300">
        </div>

        <div class="col">
          <img src="video/img_5.jpg" class="rounded mx-auto d-block" alt="..." height="300">
        </div>
  </div><br>
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
    </div></div>
</footer>


  
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
      if (count > 0) {
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
    </div>
    </div>


    <div class="container">
    <div class="row">
    <div class="col"-2>

   <form action="change" method="post">
        <input type="hidden" value="<%=cart_product.getInt("product_id")%>" name="prod_id">
        <input type="number" name="quantity" value="<%=cart_product.getString("Quantity")%>" style="width: 100px; height: 35px;">
        <button type="submit" class="button" value="Change" >CHANGE</button>
  </form>
  </div>
        
<div class="col-4">
    
   <form action="remove_prod" method="post">
   <input type="hidden" value="<%=cart_product.getInt("product_id")%>"name="prod_id">
   <button type="submit" class="button"  >REMOVE</button>
</form>
</div></div></div></div>
</div><br>                      
<% } %>


 
<% } 
else{ %>

    
         
         
<div class="container-fluid back" style="color:#ededed" >
    <center><br>

    <img src="image/empty.gif" style="width: 200px ;
    ;">
   
     <h2>OOPS</h2>
     <h3>EMPTY CART !! </h3><br>
     <a href="#shop" class="button">SHOP !!</a>
 </center>
</div>

<% }%>

</div>



  <%
    String amt="select sum(total_amount) from cart where customer_id=?";
    PreparedStatement  pst_=database.data.getConnection().prepareStatement(amt);
    pst_.setInt(1, (int)h.getAttribute("id"));			
    pst_.execute();
    ResultSet total_amount=pst_.executeQuery(); 
    if (total_amount.next()) {
        int total = total_amount.getInt(1);  
           if(total>0){
  %>
   <div class="container-fluid div_dark" style="border-top: 3px solid #FA9483;" >
          <br>
          <center>
          <h6>YOUR TOTAL AMOUNT </h6>
          <p><%=total%> RUPEES</p>
          
          <form action="payment.jsp" >
              <button type="submit" class="button">ORDER NOW</button>
          </form>
         </center><br>
           </div>  
  <%} else{%>
  
    
    <% } }%>  


</div>           
            







<div class="div_dark" style="height: 2cm;"></div>

    <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-white" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
    <div class="container-fluid">
          <a class="navbar-brand" href="#">JAPAN</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 70%;justify-items: center;align-items: center;">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class=" link_" aria-current="page" href="main_page.jsp">HOME</a>
              </li>

              <li class="nav-item">
                <a class=" link_" href="#SEARCH">SEARCH</a>
              </li>

              <li class="nav-item">
                <a class=" link_" href="#album">ALBUM</a>
              </li>

              <li class="nav-item">
                <a class=" link_" href="#shop">SHOP</a>
              </li>

              <li class="nav-item">
                <a class=" link_" href="#about">ABOUT US</a>
              </li>
              
              <li class="nav-item">
                <a class=" link_" href="profile.jsp">MY ACCOUNT</a>
              </li>
              
               
              <li class="nav-item">
                <a class=" link_" href="customer_pur.jsp">MY ORDER</a>
              </li>
              
              
          </ul>

            <form class="d-flex cart_count" >
                          
              <a  class=" cart_no " type="submit" data-bs-toggle="offcanvas" href="#cart"  aria-controls="offcanvasScrolling">
                CART &#12459;&#12540;&#12488; &nbsp;<div class="icon">
                  <span class="material-icons"> shopping_cart</span></div> <span class="badge bg-secondary "><%=count%></span>
              <br><br></a>
            </form>              
          </div>
        </div>
    </nav>

         

      <script>
        $(document).ready(function(){
          $('.toast').toast('show');
        });
        
        $(window).bind("pageshow", function(event) {
    if (event.originalEvent.persisted) {
        window.location.reload(); 
    }
});
        </script>
        
        
 

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>