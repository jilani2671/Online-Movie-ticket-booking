<%-- 
    Document   : feedback_page
    Created on : 16 Feb, 2023, 8:13:02 PM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/feedback_page.css"%></style>
          <%@include file="user_navbar.jsp"%>
    </head>
    <body>
         <form name="feedback_page" action="feedback_page" method="post">
             <br><br>
         <div class="whitediv">
             <h1><b><center>Feedback</center></b></h1>
             <hr>
             <label>Description-</label>     
             <input class="textbox" type="text" onkeypress="return isString(event)" placeholder="description" name="description">
             <div class="row">
                 <div class="col-sm-6">
                      <input class="button" type="submit" value="Submit"  name="submit">
                 </div>
                 <div class=" col-sm-6">
                      <input class="button1" type="submit" value="Cancel" name="submit" >
                 </div>
             </div>
         </div>
         </form>
    </body>
</html>

