<%-- 
    Document   : user_login
    Created on : 16 Feb, 2023, 10:44:47 AM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_login.css"%></style>
    </head>   
    <body>
        <form name="user_login" action="user_login" method="post">
            <div class="col-sm-6">
                <div class="box"><br>
                    <h1><b><center>Sign In</center></b></h1>
                    <input type="text" name="user_name" class="textbox" onkeypress="return isString(event)" placeholder="User Name"><br>
                    <input type="password" name="password"  class="textbox" placeholder="Password"><br><br>
                    <div class="row">
                        <div class="col-sm-6"><input type="checkbox" value="Remember me" style="margin-left: 50px;">Remember me </div>
                        <div class="col-sm-6"><a style="margin-left: 40px" href="user_registration.jsp">Create Account</a></div>
                    </div>
                    <b><input type="submit" class="button" id="go" value="login" style="margin-left:110px " name="submit"></b><br> 
              </div>
        </div>
       </form>
    </body>
</html>