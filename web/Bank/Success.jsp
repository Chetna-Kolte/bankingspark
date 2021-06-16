<%-- 
    Document   : Success
    Created on : 13 Jun, 2021, 6:08:28 PM
    Author     : chetna
--%>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Transfer Money</title>
    <link rel="icon" href="favicon/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <script src="https://kit.fontawesome.com/8f292731f0.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .tcard{
          margin-top:5%;
          margin-left:35%;
        }
        h3{
  font-style: normal;
  font-family: sans-serif;
  font-size: 2.5rem;
  font-weight: bold;
  color: #231e23;
  text-align: center;
  padding-top: 10px;
  padding-bottom: 10px;
}
#footer{
  text-align: center;
}
/*navigation-bar*/
.navbar{
  padding:1 0 0.5rem;
}

.navbar-brand{
  font-family: serif;
  font-size: 1.5rem;
  font-weight: bold;
  padding-left: 1%;
}
.nav-item{
  font-family: serif;
  padding: 0 18px;
}

.nav-link{
  font-size: 1.2rem;
}
.card-img-top{
  max-height: 180px;
  max-width: 170px;
  text-align: center;
  display: inline;
  border-radius: 50%;
}
label{
  display: inline-block;
  width:150px;
}
.btn{
  margin-left: 15%;
  margin-right: 15%;
}
.input-form{
  margin-bottom: 10px;
}
.colored-section{
  background-color: #f4c7ab;
  color:#231e23;
}
.container-fluid{
  padding: 2% 15%;
}

.social-icon{
  margin:20px 10px;
  color:#231e23;
}
#goto{
    margin-bottom: 10px;
}
#form{
    text-align: center;
    padding-left: 30%;
  }
.price-text{
    font-size: 3rem;
    line-height: 1.5;
  }

@media (max-width:1028px){
  #title{
    text-align: center;
  }
    </style>
  </head>
  <body>
    <section class="colored-section" id="title">
      <div >
        <!-- Nav Bar -->
        <nav class="navbar  navbar-expand-lg navbar-light ">
          <a class="navbar-brand" href="">SPARKS BANK</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.html">Home Page</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="http://localhost:8084/sparksbank/Bank/user.jsp">Customers</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="http://localhost:8084/sparksbank/Bank/history.jsp">Transaction History</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>

      </section>
      <h3>Transaction Successfull !</h3>
    <section class="tcard">
      <div class="card text-black bg-danger mb-3" style="width: 50%;" align="center">
      <div class="card text-center">
    <div class="card-header">
    <img class="card-img-top" src="Bank/images/success.jfif" alt="trans-mockup"></img>
    </div>
    <div class="card-body">
      <h5 class="card-title">Yay! It's Done</h5>
      <p class="card-text"> We are proud ,you have made someone richer.</p>
      <a href="http://localhost:8084/sparksbank/Bank/history.jsp" class="btn btn-lg  btn-dark" id="goto">Go to transaction history</a>
       <a href="http://localhost:8084/sparksbank/Bank/transfer.html" class="btn btn-lg  btn-dark">Do another transaction</a>
    </div>
  </div>
  </section>
    <footer class="colored-section" id="footer">
      <div class="container-fluid">
      <i class="social-icon fab fa-facebook-f"></i>
      <i class="social-icon fab fa-twitter"></i>
      <i class="social-icon fab fa-instagram"></i>
      <i class="social-icon fas fa-envelope"></i>
      <p>© Copyright 2021 ChetnaKolte</p>
      </div>
    </footer>

  </body>
</html>

