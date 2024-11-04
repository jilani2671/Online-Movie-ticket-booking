<%-- 
    Document   : index
    Created on : 16 Feb, 2023, 10:38:26 AM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <body>
        <br><br><br>
        <div class="myclass"><p style="color:#DD3636"><b>Online Movie Ticket Booking</b></p></div>
        <div class="myclass2"> 
            <a href="user_login.jsp"> <input type="submit" class="button1" id="go" value="User login" name="submit"></a>
            <a href="admin_login.jsp"> <input type="submit" class="button1" id="go" value="Admin login" name="submit"></a>
        </div>        
        
<style>
body
{
    background-image: url(images/index_bg.jpg);
    background-size: cover;
    background-repeat: no-repeat;
}
.myclass2
{
    height:300px;
    width:250px;
    border-radius:15px;
    margin-left:1200px;
    margin-top:200px;
    background-color: white;
    opacity:80%;
}
p
{
  display: center;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  margin-top: -50px;
  margin-left: 50px;
  margin-right: 50px;
  font-size: 80pt;
  font-family: Gautami;
  background-color: whitesmoke;
  opacity: 70%;
  border-radius:15px;
}

.button1    {
                height: 40px;
                width: 150px;
                margin-top: 75px;
                margin-left:50px;
                padding:10px;
                background-color:#C84242;
                color: white;
                border-radius: 10px;
                border: none;
            }
           input#go:hover
            {
                background-color: #515A5A  ;
                 color: white
            }
myclass2
{
    background-color:black;
}
</style>
</body>
</html>