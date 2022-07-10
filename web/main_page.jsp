<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="main_page.css">
    <link rel="stylesheet" href="product.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>


<body>

    
<% try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_server", "root", "");   
 %>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">        
  <div class="carousel-inner">
        <div class="carousel-item active">
        <video autoplay loop  muted style="width: 100%;" >
        <source class="embed-responsiv" src="img_homepage/japan_vid.webm" type="video/mp4" >
        </video>  
        </div>
     
  </div>
</div>
 
 
 <br><br>


<div class="container-fluid bg-white">
<br><br>

<center>
<!--    image rotate-->
    <div class="card_japan ">
    <div class="image_"></div>
    </div>
    
    
    <br><br>

   
   <h3>WELCOME</h3><br>
    <p class="text-uppercase"> Japan is one of the top famous places due to its advanced mechanisms, 
                                    beautiful sightseeing and high quality products
              <br>
             &#26085;&#26412;&#12399;&#12289;&#12381;&#12398;&#39640;&#24230;&#12394;&#12513;&#12459;&#12491;&#12474;&#12512;&#12289;&#32654;&#12375;&#12356;&#35251;&#20809;&#12392;&#39640;&#21697;&#36074;&#12398;&#35069;&#21697;&#12398;&#12488;&#12483;&#12503;&#12398;&#26377;&#21517;&#12394;&#22580;&#25152;&#12398;&#19968;&#12388;&#12391;&#12377;
            </p>        
             <p><i>"There is always light behind the clouds"
        </i></p>
       </center>
</div><br><br><br>


<div class="container-fluid" style="background-color:#ededed;">
<br><br>
  <div class="container-fluid">
      <div class="row">
      <div class="col">
          <img src="img_homepage/city.jpg" height="350" width="550" class="card_0"  alt="..." >
        </div>

  <div class="col-6">
      <h3>JAPAN &#26085;&#26412;</h3><br>
        <P>Japan, one of the world?s most literate and technically advanced nations, is an East Asian archipelago country made up of four primary islands and more than 6,800 others. While most of Japan is covered by mountains and heavily wooded areas, the country?s people lead a distinctly urban lifestyle. Long culturally influenced by its neighbors, today the country blends its ancient traditions with aspects of Western life.
            <br><br>
            Japan is known worldwide for its traditional arts, including tea ceremonies, calligraphy and flower arranging. The country has a legacy of distinctive gardens, sculpture and poetry. Japan is home to more than a dozen UNESCO World Heritage sites and is the birthplace of sushi, one of its most famous culinary exports. The country has developed many forms of martial arts. Its most famous traditional sport is sumo wrestling, which can trace its origins to the 8th century.
        </P>
      </div>
      </div>
  </div><br><br>
</div>
   


<div class="image"></div>

   
<div class="container-fluid div_dark" id="info">
<br><br>
  <div class="container">
<div class="row">
      <div class="col">
      <img src="img_homepage/card_1.jpg" height="450" style="border: 1px solid rgba(255, 255, 255, 0.507);">
      </div>

      <div class="col-7">
      <h3 style="max-width: 700px;">TOKYO &#26481;&#20140;</h3><br>
      <P style="max-width: 700px;">Tokyo, the capital city of Japan and one of the best places to visit in Asia, is also home to the Imperial Palace and the seat of Government and Parliament. Located in East-Central Honshu, the largest of Japan's main islands, this heavily populated city is well worth visiting, and serves as a great base from which to explore other parts of the country.
      <br><br>
      One of the world's most modern cities in terms of its infrastructure and design - due largely to the 1923 earthquake and the devastation of WWII - Tokyo also holds the title of the world's most expensive city in which to live. Fortunately, it's also one of the easiest to get around thanks to its superb rail and subway networks.
      <br><br>
      The cultural side of Tokyo is famous for its numerous things to do and top attractions, including museums; festivals; internationally noted cuisine; and professional sports clubs, including baseball, football, and traditional Japanese pursuits like sumo wrestling. It's also a city rich in music and theater, with numerous venues featuring everything from Japanese to modern dramas, symphony orchestras, and pop and rock concerts.
      </P>
      </div>
</div>
  </div><br><br>
</div>


<div class="container-fluid" style="background-color:#ededed;">
<br><br>
<div class="container">
<div class="row">
    <div class="col-9">
    <h3 style="max-width: 600px;">HIROSHIMA &#24195;&#23798;      </h3><br>
    <P style="max-width: 600px;">Hiroshima Prefecture is situated in Western Japan on the coast of the Seto Inland Sea in an environment richly endowed with natural resources and scenic beauty.  The northern part of the prefecture, dominated by the Chugoku Mountain Range, is characterized by small towns and farming villages, offering many kinds of traditional entertainment such as "Kagura" (sacred Shinto music and dance). The region is also renowned for its large variety of agricultural products including oranges and persimmons.
    <br><br>
    Located in the western part of Hiroshima prefecture facing the Seto Inland Sea, Hiroshima City is an energetic and thriving metropolis. Despite being the victim of the first atomic bomb in 1945, recent years have seen the city prosper with remarkable industrial development. Today's Hiroshima has flourished to such an extent that little evidence remains of the atomic bomb tragedy. It is not surprising that Hiroshima City has become one of the worlds leading centers for Peace Studies and one of the major campaigners for the abolition of nuclear weapons.
    </P>
    </div>
<div class="col-1" >
    <img src="img_homepage/card_hiroshima.jpg" height="450">
</div>
</div>
</div><br><br>
</div>


<div class="container-fluid div_dark"  >
<br><br>
<div class="container">
<div class="row">
<div class="col">
    <img src="img_homepage/card_osaka.jpg" height="450" style="border: 1px solid rgba(255, 255, 255, 0.507);">
</div>
<div class="col-7">
    <h3 style="max-width: 700px;">OSAKA &#22823;&#38442; </h3><br>
    <P style="max-width: 700px;">Osaka is Japan's second largest metropolitan area after Tokyo. It has been the economic powerhouse of the Kansai Region for many centuries. Osaka was formerly known as Naniwa. Before the Nara Period, when the capital used to be moved with the reign of each new emperor, Naniwa was once Japan's capital city, the first one ever known.
    In the 16th century, Toyotomi Hideyoshi chose Osaka as the location for his castle, and the city may have become Japan's political capital if Tokugawa Ieyasu had not terminated the Toyotomi lineage after Hideyoshi's death and moved his government to distant Edo (Tokyo).
    <br><br>
    Osaka?s location has long been a perfect springboard for exploring other areas in Kansai, in particular the temples and gardens of Kyoto which are just 15 minutes away by bullet train (Nara and Kobe are also well connected).
    But the city itself is sometimes overlooked by transiting tourists en route to other destinations who become intimately acquainted with the interior of its train stations but opt not to explore Osaka itself.
    </P>
</div>
</div>
</div><br><br>
</div>
  
  
<div class="container-fluid" style="background-color:#ededed;">
<br><br>
<div class="container">
<div class="row">
<div class="col-9">
    <h3 style="max-width: 600px;">KYOTO &#20140;&#37117;      </h3><br>                           
    <P style="max-width: 600px;">Kyoto served as Japan's capital and the emperor's residence from 794 until 1868. It is one of the country's ten largest cities with a population of 1.5 million people and a modern face. Over the centuries, Kyoto was destroyed by many wars and fires, but due to its exceptional historic value, the city was dropped from the list of target cities for the atomic bomb and escaped destruction during World War II. Countless temples, shrines and other historically priceless structures survive in the city today.
    <br><br>
    Kyoto City attracts millions of local and international visitors each year looking for traditional Japanese culture. Temples and shrines such as Kiyomizudera Temple and Kinkakuji draw lots off attention from visitors, as do the bamboo groves of nearby Arashiyama. 
    In the north, Amanohashidate has long been considered one of Japan's three most scenic places. Nestled in the mountains, Miyama is one of the last towns with thatched-roof farmhouses, many of which are still inhabited.
    <br><br> Enjoy delicious local vegetables and the famous green tea grown in Uji.
    </P>
</div>
<div class="col-1">
    <img src="img_homepage/card_kyoto.jpg" height="450">
</div>
</div>
</div><br><br>
</div><br><br><br>   
 
 


<div class="container-fluid">
<center><h2>GALLERY OF PLACES</h2>
</center>
</div>

<br><br><br>

<div class="container-fluid">
  <div class="container">
     <div class="row">

        <div class="col-5 album">
        <div class="card  text-white card_gal">
        <img src="img_homepage/mount_fuji-gallery.jpg" height="300" width="" class="card-img">
        <div class="card-img-overlay">
        <center><h3 class="gallery">MOUNT FUJI<br>&#23500;&#22763;&#23665;          </h3></center>
        </div>
        </div>
        <br><br>
        </div> 


        <div class="col-3" >
        <div class="card  text-white card_gal">
        <img src="img_homepage/itsukushima_gallery.jpg" height="300" class="card-img " >
        <div class="card-img-overlay">
        <center><h3 class=" gallery">SHRINE OF ITSUKUSHIMA<br>&#21427;&#23798;&#31070;&#31038;          </h3></center>
        </div>
        </div>
        </div>


        <div class="col-4" >
        <div class="card  text-white card_gal ">
        <img src="img_homepage/osaka_castle-gallery.jpg" height="300" class="card-img " >
        <div class="card-img-overlay">
        <center><h3 class=" gallery">OSAKA CASTLE<br>&#22823;&#38442;&#22478;</h3></center>
        </div>
        </div>
        </div>

<div class="container">
  <div class="row">

        <div class="col-3 album">
        <div class="card  text-white card_gal">
        <img src="img_homepage/todaji-gallery.jpg" height="300" width="" class="card-img">
        <div class="card-img-overlay">
        <center><h3 class=" gallery">TODAJI TEMPLE<br>&#26481;&#22823;&#23546;</h3></center>
        </div>
        </div>
        <br><br>
        </div>


        <div class="col-6" >
        <div class="card  text-white card_gal">
        <img src="img_homepage/Golden_Pavilion-gallery.jpg" height="300" class="card-img " >
        <div class="card-img-overlay">
        <center><h3 class=" gallery">GOLDEN PAVILION<br>&#12468;&#12540;&#12523;&#12487;&#12531;&#12497;&#12499;&#12522;&#12458;&#12531;</h3></center>
        </div>
        </div>
        </div>



        <div class="col-3" >
        <div class="card  text-white card_gal">
        <img src="img_homepage/Himeji_Castle-gallery.jpg" height="300" class="card-img " >
        <div class="card-img-overlay">
        <center><h3 class=" gallery">HIMEJI CASTLE<br>&#23019;&#36335;&#22478;</h3></center>
        </div>
        </div>
        </div>

<div class="container">
    <div class="row">

        <div class="col-4 album">
        <div class="card  text-white card_gal">
        <img src="img_homepage/Kamakura-gallery.jpg" height="300" width="" class="card-img">
        <div class="card-img-overlay">
        <center><h3 class=" gallery">KAMAKURA <br> &#37772;&#20489; </h3></center>
        </div>
        </div>
        <br><br>
        </div>


        <div class="col-3" >
        <div class="card  text-white card_gal">
        <img src="img_homepage/Kamakura-gallery.jpg" height="300" class="card-img " >
        <div class="card-img-overlay">
        <center><h3 class=" gallery">TOKYO TOWER<br>&#26481;&#20140;&#12479;&#12527;&#12540 </h3></center>
        </div>
        </div>
        </div>


        <div class="col-5" >
        <div class="card  text-white card_gal">
        <img src="img_homepage/Hiroshima_peace-gallery.jpg" height="300" class="card-img " >
        <div class="card-img-overlay">
        <center><h3 class=" gallery">HIROSHIMA PEACE MEMORIAL<br>&#24195;&#23798;&#24179;&#21644;&#35352;&#24565;&#30865;</h3></center>
        </div>
        </div>
        </div>
        </div>
</div>
</div></div></div>

<br><br><br></div></div>



<div class="container-fluid" style="height: 220px; background-color:#ededed;" id="shop"><br><br>
<center>  
<p>&#26085;&#26412;&#35069;&#21697;</p>
<h3>JAPANESE PRODUCT'S</h3>

<br>
<p>YOU CAN BUY MULTIPLE PRODUCT'S WHICH ARE RELATED TO JAPANESE TRADITION AND FESTIVES <br>
    SHRIMES , POTTERY, TEA CEREMONY AND MANY MORE  </P>
</center><br>
</div>



<div class="container-fluid" style="color: #ededed;"><br><br>
<div class="container-fluid" >
<div class="row" style="color: #ededed;">

      <div class="col-6">
      <img src="img_homepage/tea.jpg" height="490">
      </div>

      <div class="col-6"  style="background-color: #222; color: #ededed;">
      <br><br><br><center>
      <h2>EXPLORE PRODUCT'S</h2>
      <p>&#35069;&#21697;&#12434;&#25506;&#32034;&#12377;&#12427;
      </p>
      <br>
      <p style="max-width: 600px;">Our Site Highlights The Exclusive And Well-Known Products Of Japan Which Are Used In Their Tradition And Day-To-Day Life.
      The Products Are Listed With Great Offers, To Visit Our Shopping Page Click On Shop Now Button.<br><br> You Can Buy Multiple Product's Which Are Related To Japanese Tradition And Festives Shrimes , Pottery, Tea Ceremony And Many More
      </p><br><br>
<!--      FORM-->
      <form action="check_session" method="post">
      <button type="submit" class="button">SHOP NOW </button>
      </form>
      
      
      </center>
      </div>
</div>
</div><br><br>
</div>


<div class="image_2" style="min-height: 500px;"> </div>

<!--FOOTER-->

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



<div class="container-fluid div_dark" style="height: 2cm;">
    
    
</div>


<!--NAVIGATION BAR-->


<nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-white" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
<div class="container-fluid">
    <a class="navbar-brand" href="#">JAPAN</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 60%;justify-items: center;align-items: center;">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class=" link_" aria-current="page" href="#">HOME</a>
          </li>



          <li class="nav-item">
            <a class=" link_" href="#shop">SHOP</a>
          </li>

          <li class="nav-item">
            <a class=" link_" href="#info">KNOW MORE </a>
          </li>

          <li class="nav-item">
            <a class=" link_" href="#about">ABOUT US</a>
          </li>
      </ul>

                 
      </div>
    </div>
</nav>
    
    <jsp:include page="Loader.html"></jsp:include>

<% } catch (Exception e) {%>


<jsp:forward page="Error_page.jsp"/>



<%}%>








     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>