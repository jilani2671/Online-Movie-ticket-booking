/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jilani
 */
public class user_login extends HttpServlet
{ 
     Connection cn=null;
     Statement  st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        PrintWriter out =resp.getWriter();
        HttpSession session = req.getSession();
        
        String user_name = req.getParameter("user_name");
        String password = req.getParameter("password");
        String event = req.getParameter("submit"); 
        
        out.println(user_name);       
        out.println(password);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
        if(event.equals("login"))
        {
            if( user_name.equals("")||password.equals(""))
            {
                out.println("something is empty");
            }
            else
            {
                try
                {
                      Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from user_registration where first_name= '"+user_name+"' && password='"+password+"' ";
                      ResultSet rs= st.executeQuery(sql);
                       
                       
                     
                      if(rs.next())
                      {
                          session.setAttribute("user_id",rs.getString("id"));
                          session.setAttribute("user_email",rs.getString("email_id"));
                          session.setAttribute("first_name", rs.getString("first_name"));
                          session.setAttribute("last_name", rs.getString("last_name"));
                          session.setAttribute("phone_no", rs.getString("phone_no"));
                           session.setAttribute("email_id", rs.getString("email_id"));
                          resp.sendRedirect("home_page.jsp");
                      }
                      else
                      {
                          out.print("Login Failed");
                      }
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }
    } 
}
