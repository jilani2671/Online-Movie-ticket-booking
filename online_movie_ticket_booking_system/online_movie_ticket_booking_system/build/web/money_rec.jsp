<%-- 
    Document   : money_rec
    Created on : 28 Mar, 2023, 5:43:58 PM
    Author     : Jilani
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>money rec</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/moeny_rec.css"%></style>
         <%@include file="admin_navbar.jsp"%>
    </head>
    <body>
        <br>
        <div class="whitediv">
            <br>
            <center> <h2>Payment Receiver Table</h2></center>
            <hr>
       
	<table>
		<thead>
			<tr>
                                <th>Id</th>
                                <th>Name</th>
				<th>phone No</th>
                                <th>Amount</th>
			</tr>
		</thead>
                <%
        
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from payment_page ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>
		<tbody>
			<tr>
                                <td><%=rs.getString("id")%></td>
				<td><%=rs.getString("name")%>
				<td><%=rs.getString("phone_no")%></td>
                                <td><%=rs.getString("amount")%></td>
			</tr>
			 
		</tbody>
                  <%
                      }
          %>
	</table>
        </div>
    </body>
</html>
