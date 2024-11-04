<%-- 
    Document   : report_page
    Created on : 16 Feb, 2023, 7:59:52 PM
    Author     : Jilani
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report </title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/report_page.css"%></style>
         <%@include file="user_navbar.jsp"%>
        
  </head>
    <body>
        <br>
        <div class="whitediv">
            
            <br>
            <h1><center>My Bookings</center></h1>
            <br>
            <div class="hr1"> 
            <div class="row">
                 
                <div class="col-sm-2"><b><br><i><center>Movie</center></i></b><hr></div>
                <div class="col-sm-2"><br><b><i><center>Time</center></i></b><hr></div>
                <div class="col-sm-2"><br><b><i><center>Date</center></i></b><hr></div>
                <div class="col-sm-2"><br><b><i><center>No of seats</center></i></b><hr></div>
                <div class="col-sm-2"><br><b><i><center>Price</center></i></b><hr></div>
                <div class="col-sm-2"><br><b><i><center>Action</center></i></b><hr></div>
               
            </div>
              <%
                Connection cn = null;
                
                      Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                      String sql="select * from booking_page where user_id = '"+session.getAttribute("user_id")+"' ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {

            %>
        <form name="report_page" action="report_page" method="post">
            <div class="row">
                 
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("movie_name")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("time")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("date")%></center></i></b><hr></div> 
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("no_of_seats")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("price")%></center></i></b><hr></div> 
                 
                <div class="col-sm-2"><hr><b><i><center><input type="submit" name="submit" value="Cancel"></center></i></b><hr></div>
            </div>       
            <div class="row">
                <input type="hidden" name="user_name"  value="<%=rs.getString("user_name")%>">
                <input type="hidden" name="movie_name" value="<%=rs.getString("movie_name")%>">
                <input type="hidden" name="time"       value="<%=rs.getString("time")%>">
                <input type="hidden" name="date"       value="<%=rs.getString("date")%>">
                <input type="hidden" name="no_of_seats"value="<%=rs.getString("no_of_seats")%>">
                <input type="hidden" name="price"      value="<%=rs.getString("price")%>">
            </div>
            
        
       
        </form>
             <%
                            }
            %>
             </div>
            
    </body>
</html>
