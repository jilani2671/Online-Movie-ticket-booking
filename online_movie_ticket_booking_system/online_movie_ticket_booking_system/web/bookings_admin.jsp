<%-- 
    Document   : bookings_admin
    Created on : 26 Mar, 2023, 3:06:54 PM
    Author     : Jilani
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookings</title>
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
          <style><%@include file="css/bookings_admin.css"%></style>
        
    </head>
    <body>
        
        <div class="whitediv">
            <br> <h1><center>Bookings</center></h1><hr>
            <div class="row">
                <div class="col-sm-2"><hr><b><i><center>id</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>cust name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Movie Name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Seats</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Date</center></i></b> <hr></div>
                <div class="col-sm-2"><hr><b><i><center>Money Rec</center></i></b><hr></div>
                
            </div>
             <%
        
        Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from bookings_admin where id='"+session.getAttribute("id").toString() +"' ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>
        <form name="bookings_admin" action="bookings_admin" method="post">
            <div class="row">
                <div class="col-sm-2"><b><br><i><center></center></i></b></div>
                <div class="col-sm-2"><b><br><i><center></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center></center></i></b><br></div>
                
            </div>
        </form>
          <%
                      }
          %>
        
        </div>
    </body>
</html>
