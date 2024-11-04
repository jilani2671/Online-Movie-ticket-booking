<%-- 
    Document   : exampage
    Created on : Nov 24, 2018, 5:27:20 PM
    Author     : Sayali
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>exam page</title>
        <link rel="stylesheet" href="bootstrap.css" type="text/css">
        <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <script src="validation.js"></script>
        
        <script type="text/javascript">
            function change(qno)
            {
            document.getElementById(qno).style.backgroundColor='Green';
            }
            function Red(qno)
            {
            document.getElementById(qno).style.backgroundColor='Red';
            }
        </script>
        <script>
// Set the date we're counting down to
var countDownDate = new Date("Jun, 1 2023 16:30s:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML =hours +"h "
  + minutes + "m " + seconds + "s ";
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "Exam Is Over";
  }
}, 1000);
</script>
        <style>
            
            label1{
                text-align: center;
                font-size: 10%;
                 padding-top:0px;            
            }
            
            label
            {
               
                font-size: 15px;
                font-family: arial black;
                
            }
            input[type=text]:hover
                    {
                    border: 2px solid darkgrey;
                    
                   }
          
                   input[type=submit]:hover
                    {
                    border: 2px solid darkgreen;
                    
                   }
                   
        
             
              ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
   }
   
   li a:hover
 {
     color: white;
     
 }
 

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 35px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
p {
  text-align: center;
  font-size: 60px;
  margin-top: 0px;
}
               
        </style>
    </head>
    <ul>
  <li><a class="active" href="home.html">Home</a></li>
  <li><a href="signup.jsp">User Signup</a></li>
  
 
  <li><a href="paperselection.jsp">Start Exam</a></li>
  <li><a href="exampage.jsp">Exam Page</a></li>
 
  
  
  <li><a href="paperselection.jsp">Logout</a></li>
 
</ul>
     <body style="background-image: url(pari.jpg);background-size: cover;background-repeat: no-repeat">
        
        <%
        
Connection cn=null;
Statement st=null;
String question="";
 String ans1="";
 String ans2="";
 String ans3="";
 String ans4="";
 String correct_ans="";
try
               {
Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
  st=cn.createStatement();
  String sql="select * from exam where exam_name='"+session.getAttribute("exam") +"' and ques_no='"+session.getAttribute("qno") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
           {
  question=rs.getString("question");
  ans1=rs.getString("answer_1");
  ans2=rs.getString("answer_2");
  ans3=rs.getString("answer_3");
  ans4=rs.getString("answer_4");
  correct_ans=rs.getString("correct");
  session.setAttribute("correct", correct_ans);
  }
%>
<form name="addquestion" action="exampage" method="post">
              <div class="jumbotron" style="margin-left:50px;margin-right:50px;margin-top: 80px;width:25%;float:right;opacity:0.9;box-shadow:0px 0px 8px 8px black;height:525px">
                  <center><h4 style="margin-top:0px">Time Left</h4></center><p id="demo" style=""></p>
                  <%
for(int i=1;i<=20;i++)
{
%>
<input type="submit" id="<%=i%>" name="save" onclick="this.style.backgroundColor = 'red';" value="<%=i%>" class="btn btn-default" style="width:100px;border-radius: 12px;margin-bottom: 5px;margin-top: 5px;margin-left: 5px;">

<%
}                     
%>
<br>
<center><label style="padding-top:20px">Remaning Question:</label><label><%=session.getAttribute("rquestion")%></label></center>
<div class="row">
                   <div class="col-sm-4"></div>
                   <div class="col-sm-4">
                        <input type="submit"  value="Result" name="submit" class="btn-primary"style="color:white;background-color: darkgreen;width:75%;height: 33px;border-radius: 12px">
                    </div>
                   <div class="col-sm-4"></div>
                 </div>
<br>
<br>
              </div>         
        <div class="jumbotron" style="margin-left:180px;margin-top:80px;width:50%;opacity:0.9;box-shadow:0px 0px 8px 8px black;float: left ">
    
            <div class="row">
                   <div class="col-sm-4"></div>
                   <div class="col-sm-4">
                       <label><h2 style="text-align: center;color: black;text-shadow: 3px 3px 6px silver"> Exam Page </h2></label>
                    </div>
                   <div class="col-sm-3"></div>
                 </div>
                 <br> 
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       <b><span style="font-size:20px;padding-left: 10px"><label> Question No:</label></span></b>
                    </div>
                   <div class="col-sm-6">
                       <label><%=session.getAttribute("qno")%></label>
                       
                   </div>
                   <div class="col-sm-2"></div>
                 </div>
            
                 
                 <br>
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       <label> Question:</label>
                    </div>
                   <div class="col-sm-6">
                       <b><span style="font-size:20px;padding-left: 10px"><label><%=question%></label></span></b>
                       <input type="hidden" name="question" value="<%=question%>"
                    </div>
                   <div class="col-sm-2"></div>
                 </div>
            
                 <br>
                 <br>
                 <br>
                 <br>
                 <br>
                 <br>
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-4">
                       <input type="radio" style="height: 20px;width: 20px" value="<%=ans1%>" name="op" ><b><span style="font-size:20px;padding-left: 10px"><%=ans1%></span></b>
                       
                    </div>
                   <div class="col-sm-2">
                  
                   </div>
                   <div class="col-sm-4">
                       <input type="radio"style="height: 20px;width: 20px"  placeholder=" " value="<%=ans2%>" name="op" ><b><span style="font-size:20px;padding-left: 10px"><%=ans2%></span></b>
                   </div>
                  
                 </div>
                 
                 <br>
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-4">
                       <input type="radio" style="height: 20px;width: 20px" value="<%=ans3%>" placeholder=" " name="op"><b><span style="font-size:20px;padding-left: 10px"><%=ans3%></span></b>
                    </div>
                   <div class="col-sm-2">
                      
                       
                   </div>
                   <div class="col-sm-4">
                       <input type="radio" style="height: 20px;width: 20px"placeholder=" " value="<%=ans4%>" name="op"><b><span style="font-size:20px;padding-left: 10px"><%=ans4%></span></b>
                      </div>
               
                 </div>
                 
               <br>
                 <br>
                 <div class="row">
                   <div class="col-sm-3"></div>
                   <div class="col-sm-2">
                       <input type="submit" value="Previous" name="submit" class="btn-primary"style="color:white;background-color: darkgreen;width:75%;height: 33px;border-radius: 12px">
                   </div>
                   <div class="col-sm-2">
                       <input type="submit" value="Submit" name="submit" class="btn-primary"style="color:white;background-color: darkgreen;width:75%;height: 33px;border-radius: 12px">
                   </div>
                    <div class="col-sm-2">
                        <input type="submit" value="Next" name="submit" class="btn-primary"style="color:white;background-color:darkgreen;width:75%;height: 33px;border-radius: 12px">

                    </div>
                   
                   <div class="col-sm-3"></div>
                 </div>
            
  <%
}catch(Exception ex)
       {
out.println(ex.toString());
}
%>           



<%
try
               {
Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
  st=cn.createStatement();
  String sql="select qno from exam_page where user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and  exam_name='"+session.getAttribute("exam") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
           {
  %>
  <script>
      change(<%=rs.getString("qno")%>);
      Red(<%=session.getAttribute("qno")%>);
  </script>
  
  <%
  }
   }catch(Exception ex)
                     {
   out.println(ex.toString());
   }

  %>
            </div>
        </form>
    
   </body>
    
 </html>