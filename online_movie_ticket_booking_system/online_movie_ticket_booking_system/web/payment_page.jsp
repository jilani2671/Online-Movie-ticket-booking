<%-- 
    Document   : payment_page
    Created on : 16 Feb, 2023, 8:03:33 PM
    Author     : Jilani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/payment_page.css"%></style>
          <%@include file="user_navbar.jsp"%>
    </head>
    <body>
        <br>
        <form name="payment_page" action="payment_page" method="post">
        <div class="whitediv ">
            <br>
             <h2><b><center>Payment Gateway</center></b></h2>
             <hr>
             <input class="textbox" type="text" name="name"      onkeypress="return isString(event)"  placeholder=" Name" value="<%=session.getAttribute("first_name")%>">
            <input class="textbox" type="text" name="phone_no"  onkeypress="return isnumber(event)"  placeholder="Phone No" value="<%=session.getAttribute("phone_no")%>" >
            <input class="textbox" type="text" name="amount"    onkeypress="return isnumber(event)"  placeholder="Amount" value="<%=session.getAttribute("total_amount")%>">
            <br>
            <div class="myclass">
           
            </div>
                <select name="payment_method"class="textbox">
                <option >Payment method </option>
                <option value="card">card</option>
                <option value="upi">Upi</option>
                <option value="net_banking">Net banking</option>
               </select>
          <input class="textbox" type="password" name="payment_no" onkeypress="return isnumber(event)" placeholder="payment No">
          <br> 
          
        <div class="row">
               
            </div>
            <input class="button1" type="submit" value="Pay Now" name="submit">
        </div>
        </form>
    </body>
</html>