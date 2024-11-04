<%-- 
    Document   : user_history
    Created on : 16 Feb, 2023, 8:09:25 PM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_history</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_history.css"%></style>
    </head>
    
    
    <body>
         <form name="user_history" action="user_history" method="post">
        <div class="whitediv">
            <br> <h1><center>History_bahubali</center></h1><hr>
            <div class="row">
                <div class="col-sm-2"> <hr><b><i><center>name</center></i></b><hr></div>
                <div class="col-sm-2"> <hr><b><i><center>Movie</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Time</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Date</center></i></b> <hr></div>
                <div class="col-sm-2"><hr><b><i><center>No of seats</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Price</center></i></b><hr></div>
            </div>
            <div class="row">
                <div class="col-sm-2"><hr><b><i><center>Jilani</center></i></b><br><hr></div>
                <div class="col-sm-2"><hr><b><i><center>bahubali</center></i></b><br><hr></div>
                <div class="col-sm-2"><hr><b><i><center>3pm-6pm</center></i></b><br><hr></div>
                <div class="col-sm-2"><hr><b><i><center>21/02/2023</center></i></b><br><hr></div>
                <div class="col-sm-2"> <hr><b><i><center>6</center></i></b><br><hr></div>
                <div class="col-sm-2"><hr><b><i><center>560</center></i></b><br><hr></div>
            </div>
            
            <div class="row">
                <div class="col-sm-3">
                    <input class="button" type="submit" value="Cancel Ticket" name="submit">
                </div>
                <div class="col-sm-3">
                    <input class="button1" type="submit" value="Feedback" name="submit">
                </div>
            </div>
         </div>

         </form>
    </body>
    
   </html>