<%-- 
    Document   : admin_registration
    Created on : 9 May, 2023, 8:28:37 AM
    Author     : Jilani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Registration</title>
       <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       <style><%@include file="css/admin_registration.css"%></style>
       <script type="text/javascript" src="css/validation.js"></script>
    </head>
      <body>
        <form action="admin_registration1" method="post" name="admin_registration">
         <div class="whitediv">
            <br>
            <h2><center><b> Admin Register Here</b></center></h2>
            <hr>
            <input class="textbox" type="text" name="first_name"   onkeypress="return isString(event)" placeholder="First Name">
            <input class="textbox" type="text" name="last_name"    placeholder="Last Name">
            <input class="textbox" type="text" name="phone_no"     onkeypress="return isNumber(event)" maxlength="10" placeholder="Phone No">
            <input class="textbox" type="text" name="email_id"     placeholder="Email Id">
            <input class="textbox" type="password" name="password" placeholder="Password">
            <input class="textbox" type="password" name="con_pass"   placeholder="Confirm Password">
            <div class="row">
                <br>
            <div class="col-sm-6"><a style="margin-left: 60px"href="admin_login.jsp">Sign Up</a></div>
            <div class="col-sm-6"><input type="checkbox" value="Remember me" style="margin-left:60px;">Remember me</div>
            </div>  
            <b><input class="button" id="go" type="submit" value="Create Account"name="submit"></b>
        </div>
        </form>
    </body>
</html>

