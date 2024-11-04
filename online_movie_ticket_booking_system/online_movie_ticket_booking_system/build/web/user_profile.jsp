<%-- 
    Document   : user_profile
    Created on : 16 Feb, 2023, 7:54:43 PM
    Author     : Jilani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       <style><%@include file="css/user_profile.css"%></style>
    </head>  
<body>
      <form name="user_profile" action="user_profile" method="post">
        <div class="whitediv">
            <br>
            <h1><b><center>Profile</center></b></h1>
            <hr>
            <input class="textbox" type="text" name="name"     onkeypress="return isString(event)" value="<%=session.getAttribute("first_name")%>">
            <input class="textbox" type="text" name="surname"  onkeypress="return isString(event)" value="<%=session.getAttribute("last_name")%>">
            <input class="textbox" type="text" name="phone_no" onkeypress="return isnumber(event)" value="<%=session.getAttribute("phone_no")%>">
            <input class="textbox" type="text" name="email_id" value="<%=session.getAttribute("email_id")%>" >
               
        </div>
      </form>
    </body>
</html>