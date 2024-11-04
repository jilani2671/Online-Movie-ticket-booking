<%-- 
    Document   : final_report
    Created on : 10 May, 2023, 1:13:12 PM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Final Report Page</title>
           <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
          <%@include file="admin_navbar.jsp" %>
    </head>
    
    <body>
        <br>
        <form name="final_report" action="view_report.jsp" method="post">
              <div class="whitediv">
            <br>
            <center><h1> <label> Reports</label></h1></center><hr>
            
            <div class="row">
                <div class="col-sm-6"> <input class="button1" type="submit" value="User Registration list" style="font-size:100%" name="submit"> </div>
                <div class="col-sm-6"> <input class="button2" type="submit" value="Booking Page list" style="font-size:100%" name="submit"> </div>
            </div>
            <div class="row">
                <div class="col-sm-6"> <input class="button3" type="submit" value="Payment Page list" style="font-size:100%" name="submit"> </div>
                <div class="col-sm-6"> <input class="button4" type="submit" value="Feedback page list" style="font-size:100%" name="submit"> </div>
            </div>
                <div class="col-sm-6"> <input class="button5" type="submit" value="Movie list" style="font-size:100%" name="submit"> </div>
                <input class="textbox" type="text" name="id" onkeypress="return isnumber(event)">
          <div class="row">
                <div class="col-sm-6"> <input class="button6" type="submit" value="User Detail" style="font-size:100%" name="submit"> </div>
                <div class="col-sm-6"> <input class="button7" type="submit" value="Booking Detail" style="font-size:100%" name="submit"> </div>
           </div>
             
            
            
        </div>
        </form>
    </body>
    
    
    <style>
body
   {
        background-image: url(images/abcd.jpg);
        background-size: cover;
        background-repeat: no-repeat;        
   }

.whitediv
        {
         height:600px;
         width:700px;
         margin-top:60px;
         margin-left:500px;
         background-color:white;
         border-radius:15px;
        }
        .button1
        {
         height:40px;
         width:150px;
         margin-top:20px;
         margin-left:60px; 
         background-color:#993300;
         color:white;
         border-radius: 5px;
        
         
        } 
        
         .button2
        {
         height:40px;
         width:150px;
         margin-top:20px;
         margin-left:90px; 
         background-color:#993300;
         color:white;
         border-radius: 5px;
        
        } 
         .button3
        {
         height:40px;
         width:150px;
         margin-top:50px;
         margin-left:60px; 
         background-color:#993300;
         color:white;
         border-radius: 5px;
         
        } 
        
         .button4
        {
         height:40px;
         width:150px;
         margin-top:50px;
         margin-left:90px; 
         background-color:#993300;
         color:white;
         border-radius: 5px;
        
        } 
        
        .button5
        {
         height:40px;
         width:150px;
         margin-top:65px;
         margin-left:250px; 
         background-color:#993300;
         color:white;
         border-radius: 5px;
         
        } 
        
         .button6
        {
         height:40px;
         width:150px;
         margin-top:60px;
         margin-left:70px; 
         background-color:#341c2c;
         color:white;
         border-radius: 5px;
        
        } 
       
         .button7
        {
         height:40px;
         width:150px;
         margin-top:60px;
         margin-left:101px; 
         background-color:#0c077d;
         color:white;
         border-radius: 5px;
        
        } 
        
        .textbox
        {
         height:40px;
         width:150px;
         margin-top:145px;
         margin-left:-280px; 
         background-color:white;
         color:black;
         border-radius: 5px;  
        }
    </style>
</html>
