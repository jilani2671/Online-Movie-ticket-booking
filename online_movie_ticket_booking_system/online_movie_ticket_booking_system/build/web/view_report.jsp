<%-- 
    Document   : view_report
    Created on : 10 May, 2023, 4:26:10 PM
    Author     : Jilani
--%>

<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
       String event=request.getParameter("submit");
       if(event!=null)
       {
           // Normal Report
            if(event.equals("User Registration list"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\user_registration2.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
            
            if(event.equals("Booking Page list"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\booking_page3.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
            
            
            if(event.equals("Payment Page list"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\payment_page.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
           
              if(event.equals("Feedback page list"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\feedback_page.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
           
          if(event.equals("Movie list"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\admin_assistant.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
           
    
                         else{   
              
           // Date Wise Reports && Id Wise Reports
           if(event.equals("Booking Detail"))
           {
              String date1=request.getParameter("id");
              out.println(date1); 
         
              Connection cn = null;
              try 
              {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
          
              } 
              catch (Exception ex) 
              {
                ex.printStackTrace();
              }
              
                File reportFile = new File(application.getRealPath("Report\\Booking_page1.jasper"));//your report_name.jasper file
                HashMap parameters = new HashMap();
                parameters.put("id", date1);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close(); 
           }
           
           if(event.equals("User Detail"))
           {
              String date1=request.getParameter("id");
              out.println(date1); 
         
              Connection cn = null;
              try 
              {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
          
              } 
              catch (Exception ex) 
              {
                ex.printStackTrace();
              }
              
                File reportFile = new File(application.getRealPath("Report\\user_registration.jasper"));//your report_name.jasper file
                HashMap parameters = new HashMap();
                parameters.put("id", date1);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close(); 
           }
                   
      }
           
           
                   }   
        
           
            
        %>
    </body>
</html>