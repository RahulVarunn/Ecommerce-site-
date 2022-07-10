<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="profile.css">
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


<%  ServletContext context = getServletContext();  %>

<div class="container-fluid" style="background-color: #dedede; "><br><br>
  
   





<center>
          
              <h2>SIGN-UP</h2>
              <p style="font-size: 14px;">TO EXPLORE MORE ABOUT OUR SITE AND PRODUCTS PLEASE FILL UP THE DETAILS FOR SIGNING UP. </p>
            <br>
          </center>


</div>

<div class="container-fluid" style="height: 0.7cm;"></div>

<br>

<div class="container-fluid">
<div class="row detail">

  <div class="col-1 img image" style="height: 550px;">
  
    <center>   
    <br><br><br><BR></BR>
      <br>
      <h1 class="">&#26085;</h1>
      <h1 class="">&#26412;</h1>
    
     
      </center> 
  
  </div>



<div class="col-8 inputs" style="border-left: 110px solid white;">

        <form class="row g-3" action="signup" method="post">

      

            <div class="col-md-10">
            <h6 class="input_text">NAME </h6>
            <input type="text" class="form-control" style="outline: none;" name="name" required>
            </div>
                       
            <div class="col-md-5">
            <h6 class="input_text">EMAIL </h6>
            <input type="email" class="form-control" style="outline: none;" name="email" required>
            </div>

            <div class="col-md-5">
            <h6 class="input_text">PHONE</h6>
            <input type="number" class="form-control" style="outline: none;" name="mobile" required>
            </div>

            <div class="col-md-5">
            <h6 class="input_text">PASSWORD</h6>
            <input type="password" class="form-control" style="outline: none;" name="password" required>
            </div>

            <div class="col-md-5">
            <h6 class="input_text">GENDER</h6>
            <select id="inputState" class="form-select" name="gender">
            <option selected>Male</option>
            <option>Female</option>
            </select>
            </div>

   
            <div class="col-md-5">
            <h6 class="input_text">BUILDING/FLAT NO</h6>
            <input type="text" class="form-control" style="outline: none;" name="build_no" required >
            </div>
                
            <div class="col-md-5">
            <h6 class="input_text">STREET ADDRESS</h6>
            <input type="text" class="form-control" name="street_adr" required>
            </div>

            <div class="col-md-5">
            <h6 class="input_text">PIN CODE</h6>
            <input type="number" class="form-control" name="pincode" required >
            </div>
                
            <div class="col-md-5">
            <h6 class="input_text">CITY</h6>
            <input type="text" class="form-control" name="city" required>
            </div>

            <div class="col-md-5">
            <h6 class="input_text">DISTRICT</h6>
            <input type="text" class="form-control" name="district" required>
            </div>

            <div class="col-md-5">


                    <h6 class="input_text">STATE</h6>
                    <select id="inputState" class="form-select" name="state">
                    <option selected>Maharashtra</option>
                            <option>Andhra Pradesh</option>
                            <option>Arunachal Pradesh</option>
                            <option>Assam</option>
                            <option>Bihar</option>
                            <option>Chhattisgarh</option>
                            <option>Goa</option>
                            <option>Gujarat</option>
                            <option>Haryana</option>
                            <option>Himachal pradesh</option>
                            <option>Jammu and Kashmir</option>
                            <option>Jharkhand</option>
                            <option>Karnataka</option>
                            <option>Kerala</option>
                            <option>Madhya Pradesh</option>
                            <option>Maharashtra</option>
                            <option>Manipur</option>
                            <option>Meghalaya</option>
                            <option>Mizoram</option>
                            <option>Nagaland</option>
                            <option>Odisha</option>
                            <option>Punjab</option>
                            <option>Rajasthan</option>
                            <option>Sikkim</option>
                            <option>Tamil Nadu</option>
                            <option>Telangana</option>
                            <option>Tripura</option>
                            <option>Uttar Pradesh</option>
                            <option>Uttarakhand</option>
                            <option>West Bengal</option>
                    </select></div>
               
                
            <div class="col-10"><br>
                    
                   

<center>
                        
                                <button type="submit" class="button">SIGNUP NOW  </button>                          
                            
                              </center>
                              

            </div></form>
        </div>


        <div class="col img image" style="height: 550px;"></div>
        </div></div>


      <div class="container-fluid" style="height: 0.7cm;"></div>

      <div class="container-fluid" style="background-color: #dedede; height: 1.5cm;">
      
      </div>

<footer class="container-fluid " style="background-color: #222; color: #dedede;  border-top: 3px solid #FA9483; " ><br><br><br><br>
    <center><h4 >THE BEAUTY IS OFTEN IN DARK PLACES </h4>
        <br>
    <p>The symbolism behind Japanese art is rich and much of the art is viewed in dark places.<br> From behind paper screens to dark corners in the alcoves of temples, it is often viewed by candlelight adding another layer to the art itself.</p>
</center><br><br><br><br><br><br>
</footer>





    

      <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-light" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><%= context.getInitParameter("sitename") %></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 60%;justify-items: center;align-items: center;">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">THE PLACE WHERE OUR HEART LONGS FOR!<a>
              </li>
           
            </ul>
             
            
            <form class="d-flex">
              <a href="customer_signin.jsp"class="button">ALREADY HAVE ACCOUNT</a> 

            </form>
          </div>
        </div>
      </nav>








    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>