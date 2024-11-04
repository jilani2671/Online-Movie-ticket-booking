<%-- 
    Document   : admin_login
    Created on : 16 Feb, 2023, 8:20:26 PM
    Author     : Jilani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login </title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_login.css"%></style>
    </head>
    
    <body>
        <form name="admin_login" action="admin_login" method="post">
        <div class="whitediv">
            <br>
            <h2><b><center>Admin Sign-Up</center></b></h2>
            <hr>
            <input class="textbox" type="text" name ="username"   onkeypress="return isString(event)" placeholder="Username">
            <input class="textbox" type="text" name="password"   placeholder="password">
            <br>
            <br>
             <div class="col-sm-6"><input type="checkbox" value="Remember me" style="margin-left: 30px;">Remember me </div><br><br>
            <div class="col-sm-6"><a style="margin-left: 40px" href="admin_registration.jsp">Create Account</a></div>
            <input class="button" type="submit" value="LOGIN" name="submit">
           
        </div>
        </form>
    </body>
    
</html>




