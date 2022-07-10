<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="profile.css">
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

</style>


<body>
<%  ServletContext context = getServletContext();  %>

    <% HttpSession hs = request.getSession();
          if(hs.getAttribute("password")!=null ){
    %>



<div aria-live="polite" aria-atomic="true" class="position-fixed top-0 start-50 translate-middle-x"  style="position: absolute; margin-top: 30px;" >
    <div class="toast bg-dark" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header bg-dark text-warning" >
        <strong class="me-auto" style="color:#FA9483;">LOGIN ERROR !</strong>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
      <div class="toast-body" style="color: #dedede;">
        <%=hs.getAttribute("password") %>     
     </div>
    </div>
  </div>
 <% } %>


<div class="container-fluid" style="background-color: #dedede; "><br>
        <center>
        <h2>LOGIN</h2><br>
        <h5>WELCOME BACK</h5>
        <p style="font-size: 14px;"><br>
            YOU ALREADY HAVE AN ACCOUNT PLEASE FILL IN THE DETAILS BELOW FOR CONFIRMATION.
       </p>
        </center><br><br>
    </div>


<div class="container-fluid" style="height: 0.7cm;"></div>

<div class="container-fluid">
        
    <div class="row detail">

        <div class="col-4"><br><br>

            <center>   
            <img src="image/profile.jpg"  alt="..." style="border-radius: 50%;" height="100" width="100"><br><br>
            <br>
            <h5 class="text">WELCOME</h5>
            <h5 class="text">TO JAPAN</h5>
            <h5 class="text"></h5>
            </center> 
        </div>

    <div class="col-5 inputs" ><br><br>
        

        <form action="signin" method="post">

                
            <div class="col-md-10">
                <center> <h4 >WELCOME BACK</h4></center> <br>

                  <h6 class="input_text">EMAIL</h6>
                  <input type="email" class="form-control" name="email" required >
            </div>

            <div class="col-md-10"><br>
                    <h6 class="input_text">PASSWORD</h6>
                    <input type="password" class="form-control" name="password" required >
            </div>
            

          
                
                <div class="col-10"><br><br>
                <center>   <button type="submit" class="button">LOGIN</button></center> 
                </div>


        </form>


        </div>


        <div class="col img image"></div>
        </div></div>


      <div class="container-fluid" style="height: 0.7cm;"></div>

      <div class="container-fluid" style="background-color: #dedede; height: 1.5cm;">
      
      </div>

<div class="container-fluid " style="background-color: #222; color: #dedede;" ><br><br><br><br>
    <center><h4 >THE BEAUTY IS OFTEN IN DARK PLACES </h4>
    <p>The symbolism behind Japanese art is rich and much of the art is viewed in dark places.<br> From behind paper screens to dark corners in the alcoves of temples, it is often viewed by candlelight adding another layer to the art itself.</p>
</center><br><br><br><br><br><br>
</div>





    

      <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-light" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><%= context.getInitParameter("sitename") %></a>
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
              <a href="customer_signup.jsp" class="button">BACK TO SIGN UP</a>
            </form>
          </div>
        </div>
      </nav>





      <script>
        $(document).ready(function(){
          $('.toast').toast('show');
        });
        </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>