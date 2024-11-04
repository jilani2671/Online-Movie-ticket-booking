<%-- 
    Document   : bookings1
    Created on : 25 Apr, 2023, 12:53:56 PM
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
        <br>
        <div class="whitediv">
            <br> <h1><center>Bookings Records</center></h1><hr>
            <div class="row">
                <div class="col-sm-2"><hr><b><i><center>id</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Cust name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Movie Name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Seats</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Date</center></i></b> <hr></div>
                <div class="col-sm-2"><hr><b><i><center>Payment Rec</center></i></b><hr></div>
                
            </div>
             <%
        
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from booking_page where movie_name='"+session.getAttribute("movie_name") +"' ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>
        <form name="bookings_admin" action="bookings_admin" method="post">
            <div class="row">
                <div class="col-sm-2"><b><br><i><center> <%=rs.getString("id")%></center></i></b></div>
                <div class="col-sm-2"><b><br><i><center> <%=rs.getString("user_name")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center> <%=rs.getString("movie_name")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center> <%=rs.getString("no_of_seats")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center> <%=rs.getString("date")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center> <%=rs.getString("price")%></center></i></b><br></div>
                
            </div>
                <input type="hidden" name="id"  value="<%=rs.getString("id")%>">
                <input type="hidden" name="user_name"  value="<%=rs.getString("user_name")%>">
                <input type="hidden" name="movie_name" value="<%=rs.getString("movie_name")%>">
                <input type="hidden" name="no_of_seats"value="<%=rs.getString("no_of_seats")%>">
                <input type="hidden" name="date"       value="<%=rs.getString("date")%>">
                <input type="hidden" name="price"      value="<%=rs.getString("price")%>">
            
        </form>
          <%
                      }
          %>
        
        </div>
    </body>
</html>
