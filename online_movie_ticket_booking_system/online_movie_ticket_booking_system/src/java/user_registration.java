/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jilani
 */
public class user_registration extends HttpServlet
 {
     Connection cn=null;
     Statement  st=null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out =resp.getWriter();
        String first_name = req.getParameter("first_name");
        String last_name  = req.getParameter("last_name");
        String phone_no   = req.getParameter("phone_no");
        String email_id   = req.getParameter("email_id");
        String password   = req.getParameter("password");
        String con_pass     = req.getParameter("con_pass");
        String event      =  req.getParameter("submit"); 

        
        out.println(first_name);       
        out.println(last_name);
        out.println(phone_no);
        out.println(email_id);
        out.println(password);
        out.println(con_pass);
        out.println(event);

        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
                
        if(event.equals("Create Account"))
        {
            if(first_name.equals("")|| last_name.equals("")|| phone_no.equals("")||email_id.equals("")||password.equals("")||con_pass.equals(""))
             {
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Some Fields Are Empty');     ");
                out.println("   location='user_registration.jsp';  ");
                out.println("   </script>  ");
             } 
            else
             {
             try
             {
              String sql= "insert into user_registration(first_name,last_name,phone_no,email_id,password,c_pass)values('"+first_name+"','"+last_name+"','"+phone_no+"','"+email_id+"','"+password+"','"+con_pass+"')";
              String Insert=db.Insert(sql);
              out.println(Insert);
                resp.setContentType("text/html");
               out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Record Inserted Successfully');");
                out.println("   location='user_login.jsp';  ");
                out.println("   </script>  ");
             }
             catch(Exception ex)
             {
                 out.println(ex.toString());
             }                 
          }
       }
    }
 }
    