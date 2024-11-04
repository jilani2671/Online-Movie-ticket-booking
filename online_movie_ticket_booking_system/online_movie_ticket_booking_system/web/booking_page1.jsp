<%-- 
    Document   : booking_page
    Created on : 16 Feb, 2023, 8:16:45 PM
    Author     : Jilani
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include file="user_navbar.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/booking_page.css"%></style>
        
        <script type="text/javascript">
            function change(seat_no)
            {
            document.getElementById(seat_no).style.backgroundColor='defualt';
            }
            function Red(seat_no)
            {  
            document.getElementById(seat_no).style.backgroundColor='Red';
            }
        </script>
        
    </head>
    
</html>
<body>
    <br>
           
        <%
        
        Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from admin_assistant where id='"+session.getAttribute("id").toString() +"' ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>
        <div class="whitediv">

        <form name="booking_page" action="booking_page" method="post">
            
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
            <input type="hidden" name="movie_name" value="<%=rs.getString("movie_name")%>">
            <input type="hidden" name="casting" value="<%=rs.getString("casting")%>">
            <input type="hidden" name="release_date" value="<%=rs.getString("release_date")%>">
            <input type="hidden" name="add_movie" value="<%=rs.getString("add_movie")%>"> 
            
            <br>
            <div class="imagediv"style="margin-top:10px;">
             <img class="image1" src="images/<%=rs.getString("add_movie")%>">
             <label>Movie Name : <%=rs.getString("movie_name")%></label> 
             <label>Cast: <%=rs.getString("casting")%></label>
            </div>
                <br>
                <br>
                <div class="myclass">
                <label> Time-</label> 
                <select class="textbox" name="time">
                <option value="12pm"> 12 PM</option>
                <option value="03pm"> 03 PM</option>
                <option value="06pm"> 06 PM</option>
                <option value="09pm"> 09 PM</option>
                </select>
                <br>
                <br>
                <div class="row" >
                    <div class ="col-sm-6 ">
                         <label>Date-</label>
                    <input type="date" name="date"></input>
                    </div>
                    <div class ="col-sm-6">
                      <label>No. of seats- </label>
                      <input class="textbox1" type="text" placeholder="" name="no_of_seats" value="<%=session.getAttribute("noofseates")%>">
                    </div>
                </div>
                
                <div class="row" >
                    <div class ="col-sm-6 ">  </div>
                    <div class ="col-sm-6">  <label>Price - </label>
                      <input class="textbox1" type="text" placeholder="" name="price" value="<%=session.getAttribute("total_amount")%>">
                    </div>
                </div>
                
                
                
                <br>
               <label>Select Seat-</label>         
               <div class="imagediv1"style="margin-top:0px; width: 500px;"> 
                    <%
                   for(int i=1;i<=100;i++)
                    {
                    %>
                    <input class="button2" id="<%=i%>" value="<%=i%>" type="submit" name="seat" style="height: 20px; width: 35px;" onclick="this.style.backgroundColor = 'red';">
                    <%
                    }                     
                    %>
                
                 
                
               
               </div>
                </div>
                
                <div class="row" >
                <div class ="col-sm-6 ">
                    <input class="button" type="submit" value="Cancel" name="submit">
                </div>
                <div class ="col-sm-6">
                    <input class="button1" type="submit" value="Confirm Booking" name="submit">
                </div>
            </div>
        </div>

                
                </form>
               <%
                      }
               %>
               
            
    </div>
    
<%
try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
  Statement st2=cn2.createStatement();
  String sql2="select seat_no from seat_bookings where movie_id='"+session.getAttribute("id") +"' && movie_name='"+session.getAttribute("movie_name") +"' &&  date='"+session.getAttribute("date") +"' && time='"+session.getAttribute("time") +"' ";
  ResultSet rs2=st2.executeQuery(sql2);
  while(rs2.next())
           {
  %>
  <script> 
      Red(<%=rs2.getString("seat_no")%>);
  </script>
  
  <%
  }
   }catch(Exception ex)
                     {
   out.println(ex.toString());
   }

  %>
 </body>
</html>
