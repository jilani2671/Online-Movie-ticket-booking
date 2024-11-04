<%-- 
    Document   : user_listadminn
    Created on : 26 Mar, 2023, 2:21:42 PM
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
        <title>user list for Admin</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_listadmin.css"%></style>
    </head>
    <body>
        <br>
       
        <div class="whitediv">
            <br><h1><center>User List</center></h1><hr>
            <div class="row">
                <div class="col-sm-3"><hr><b><i><center>id</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Phone No</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Email Id</center></i></b><hr></div>
                <div class="col-sm-3"><hr><b><i><center>Action</center></i></b><hr></div>
            </div>
            
              <%
                Connection cn = null; 
                
                      Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from user_registration ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {

            %>
            <form name="user_listadmin" action="user_listadmin" method="post">
             <div class="row">
                <div class="col-sm-3"><b><br><i><center><%=rs.getString("id")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("first_name")%></center></i><br></b></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("phone_no")%></center></i></b><br></div> 
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("email_id")%></center></i></b><br></div> 
                <div class="col-sm-3"><b><br><i><center><input type="submit" name="submit" value="Remove"></center></i><br></b></div>
            </div>       
            <div class="row">
                <input type="hidden" name="id"         value="<%=rs.getString("id")%>">
                <input type="hidden" name="first_name" value="<%=rs.getString("first_name")%>">
                <input type="hidden" name="phone_no"   value="<%=rs.getString("phone_no")%>">
                <input type="hidden" name="email_id"   value="<%=rs.getString("email_id")%>">
            </div>
         </form>
 
        
                       <%
                            }
                       %>
       </div>     
        
    
    </body>
</html>
