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

     <%
           HttpSession hs = request.getSession();

            String a="select * from customer_data where email=? and id=?";
            PreparedStatement  pst=database.data.getConnection().prepareStatement(a);
            
            pst.setString(1,(String)session.getAttribute("email"));
            pst.setInt(2,(int)session.getAttribute("id"));

            ResultSet user_detail=pst.executeQuery(); 
            user_detail.next();

        %>
    
    
    


<div class="container-fluid" style="background-color: #dedede; "><br>
        <center>
        <h2>&#12362;&#12356;</h2>
        <h4>HEY <%= user_detail.getString("name").toUpperCase()%></h4>
        <p style="font-size: 14px;"> HERE ARE YOUR ACCOUNT DETAILS .<br>
        IF YOU WANT TO CHANGE YOUR ACCOUNT DETAILS CLICK ON UPDATE OR TO MOVE ON TO THE NEXT PAGE CLICK ON CONTINUE </p>
        </center><br><br>
    </div>


<div class="container-fluid" style="height: 0.7cm;"></div>

<div class="container-fluid">
        
    <div class="row detail">

        <div class="col-4"><br><br>

            <center>   
            <img src="image/profile.jpg"  alt="..." style="border-radius: 50%;" height="100" width="100"><br><br>
            <br>
            <h5 class="text"><%= user_detail.getString("name").toUpperCase()%></h5>
            <h5 class="text"><%= user_detail.getString("phone")%></h5>
            <h5 class="text"><%= user_detail.getString("email")%></h5>
            </center> 
        </div>

    <div class="col-5 inputs"  ><br><br>

        <form class="row g-3"action="update_profile" method="post">

            <div class="col-md-10">
                  <h6 class="input_text">BUILDING/FLAT NO</h6>
                  <input type="text" class="form-control text-capitalize" style="outline: none;" value="<%=user_detail.getString("build_no")%>" name="build_no">
            </div>
                
            <div class="col-md-10">
                  <h6 class="input_text">STREET ADDRESS</h6>
                  <input type="text" class="form-control text-capitalize" value="<%=user_detail.getString("street_adr")%>" name="street_adr">
            </div>

            <div class="col-md-5">
                    <h6 class="input_text">PIN CODE</h6>
                    <input type="text" class="form-control text-capitalize" value="<%=user_detail.getString("pincode")%>" name="pincode">
            </div>
                
            <div class="col-md-5">
                    <h6 class="input_text">CITY</h6>
                    <input type="text" class="form-control text-capitalize" value="<%=user_detail.getString("city")%>" name="city">
            </div>

            <div class="col-md-5">
                    <h6 class="input_text">DISTRICT</h6>
                    <input type="text" class="form-control text-capitalize" value="<%=user_detail.getString("district")%>" name="district">
            </div>

            <div class="col-md-5">
                    <h6 class="input_text">STATE</h6>
                    <select id="inputState" class="form-select"  name="state">
                        <option selected><%=user_detail.getString("state")%></option>
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
               
                
                <div class="col-12">
                    <button type="submit" class="button">UPDATE NOW </button>
                </div>
        </form>
        </div>


        <div class="col img image"></div>
        </div></div>


      <div class="container-fluid" style="height: 0.7cm;"></div>

      <div class="container-fluid" style="background-color: #dedede; height: 1.5cm;">
      
      </div>

      <footer class="container-fluid div_dark" style="border-top: 3px solid #FA9483; background-color: #222; color: #ededed;"  ><br><br><br><br>
    <center><h4 >THE BEAUTY IS OFTEN IN DARK PLACES </h4>
        <h6> &#32654;&#12375;&#12373;&#12399;&#12375;&#12400;&#12375;&#12400;&#26263;&#12356;&#22580;&#25152;&#12395;&#12354;&#12426;&#12414;&#12377;</h6><br>
    <p>The symbolism behind Japanese art is rich and much of the art is viewed in dark places.<br> From behind paper screens to dark corners in the alcoves of temples, it is often viewed by candlelight adding another layer to the art itself.</p>
</center><br><br><br><br><br><br>
</footer>





    

      <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-light" style="box-shadow: 6px 2px 16px 0px rgba(69, 69, 70, 0.699) ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><%=context.getInitParameter("sitename") %></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" style="max-width: 50%;justify-items: center;align-items: center;">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">HOME &#26085;&#26412;</a>
              </li>
           
            </ul>
             
              <form class="d-flex" action="signout" method="post">
                   <button class="button" value="submit">SIGN OUT </button>
              </form>&nbsp;&nbsp;
            
            <form class="d-flex">
              <a href="product.jsp" class="button">CONTINUE SHOPPING </a>
            </form>
          </div>
        </div>
      </nav>




    <jsp:include page="Loader.html"></jsp:include>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>