<%-- 
    Document   : admin_assistant
    Created on : 16 Feb, 2023, 8:24:33 PM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Assistant</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_assistant.css"%></style>
    </head>
    <body>
        <form name="admin_assistant" action="admin_assistant" method="post">
            <br><br>
        <div class="whitediv">
        <br>
        <h2><center>Add Movie</center></h2>
            <hr>
             <input class="textbox" type="text" onkeypress="return isString(event)" placeholder="Movie name" name="movie_name">
              <input class="textbox" type="text" onkeypress="return isString(event)" placeholder="Casting" name="casting">
            <div class="row  myclass">
                <div class ="col-sm-6">
                    <label> Release Date-</label>
                </div>
                <div class ="col-sm-6 myclass2">
                    <input type="date" name="release_date"></input>
                </div>
            </div>
              <input class="textbox" type="file" value="Add movie" name="add_movie">
              <input class="textbox" type="text" placeholder="Info" name="info">
              <div class="row">
                <div class ="col-sm-6">
                    <input class="button" type="submit" name="submit" value="Cancel">
                </div>
                <div class ="col-sm-6">
                    <input class="button1" type="submit" name="submit" value="Add Movie">
                </div>
            </div>
               
        </div>
         </form>
    </body>
</html>
