<%-- 
    Document   : history
    Created on : 13 Jun, 2021, 7:23:00 PM
    Author     : chetna
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Transaction History</title>
    <link rel="icon" href="favicon/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/history.css">
    <script src="https://kit.fontawesome.com/8f292731f0.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        th,td{
            padding: 15px;
        }
        .user-details{
            padding-bottom: 5%;
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
                <a class="nav-link" href="transfer.html">Transfer Money</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>

      </section>
      <h3>Transaction History</h3>
      <% 
 Connection con=null;
 Statement smt=null;
 ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();

        //(2) Establishing connection with database
con=DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/bank","root","root");
        //(3) Creating statment object 
       smt=con.createStatement();
       rs=smt.executeQuery("select * from transaction");
      
       
%>
 <section id="table">
      <div class="user-details">
       <table border="1" style="width:80%" class="center" align="center">
         <thead class="head">
           <tr>
             <th>Transaction_id</th>
             <th>Sender Name</th>
             <th>Reciever Name</th>
            <th>Amount </th>
           </tr>
         </thead>
         <tbody class="body">
             <%
              while(rs.next())
              {
                  String tid=rs.getString("t_id");
                  String sname=rs.getString("sender_name");
                  String rname=rs.getString("reciever_name");
                  String amt=rs.getString("amount");
             %>
            <tr>
             <td><%=tid%></td>
             <td><%=sname%></td>
             <td><%=rname%></td>
             <td><%=amt%></td>
           </tr>
        <%
        
              }
        %>
         </tbody>
       </table>

      </div>
    </section>
<!-- Footer -->

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

