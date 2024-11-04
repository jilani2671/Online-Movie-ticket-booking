<%-- 
    Document   : home_page
    Created on : 16 Feb, 2023, 8:06:28 PM
    Author     : Jilani
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home </title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/home_page.css"%></style>
         
    </head> 
    <body>  
        <br>
        <div class="row" style="margin-left: 350px;margin-top:2%;">
            
            <%
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from admin_assistant ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {

            %>
            
             <form name="home_page" action="home_page" method="post">
                 
            <div class="col-sm-4">
                <div class="moviediv">
                    <img class="image" src="images/<%=rs.getString("add_movie")%>">
                    <label>Movie Name  : <%=rs.getString("movie_name")%></label>  <br>
                    <label>Cast : <%=rs.getString("casting")%></label> <br>
                     <label>Release: <%=rs.getString("release_date")%></label>
                    <input class="button" type="submit" id="go" value="Book" name="submit">
                </div>
                    
                    <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                    <input type="hidden" name="add_movie" value="<%=rs.getString("add_movie")%>">
                    <input type="hidden" name="movie_name" value="<%=rs.getString("movie_name")%>">
                    <input type="hidden" name="casting" value="<%=rs.getString("casting")%>">
                    <input type="hidden" name="release_date" value="<%=rs.getString("release_date")%>">
                    <br> 
            </div>
                    
             </form>
            <%
            
                    }
            %>
            
        </div>
       
    </body>
</html>
