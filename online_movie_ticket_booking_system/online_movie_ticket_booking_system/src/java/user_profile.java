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
public class user_profile extends HttpServlet 
{
    Connection cn=null;
    Statement  st=null;
 @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        PrintWriter out =resp.getWriter();
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String phone_no = req.getParameter("phone_no");
        String email_id = req.getParameter("email_id");
        String address= req.getParameter("address");
        String pincode= req.getParameter("pincode");
        String event = req.getParameter("submit"); 
        
        out.println(name);       
        out.println(surname);
        out.println(phone_no);
        out.println(email_id);
        out.println(address);
        out.println(pincode);
        out.println(event);
        
        
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
        if(event.equals(""))
        {
            if(event.equals("Update"))
         {
             if(name.equals("")|| surname.equals("")||phone_no.equals("")||email_id.equals("")||address.equals("")||pincode.equals(""))

             {
                 resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('Some Fields Are Empty');     ");
                   out.println("   location='user_profile.jsp';    ");
                   out.println("   </script>                           ");
             }
             
           else
             {
                 try
                 {
                     String sql="update user_profile set name='"+name+"',surname='"+surname+"',phone_no='"+phone_no+"',email_id='"+email_id+"',address='"+address+"',pincode='"+pincode+"'";
                     String update=db.update(sql);
                     out.println(update);
                     resp.setContentType("text/html");
                      out.println("   <script type=\"text/javascript\">   ");
                       out.println("   alert('user_profile updated');                ");
                      out.println("   location='add_bike.jsp';            ");
                       out.println("   </script>                           ");
                 }
                 catch(Exception ex)
                 {
                     resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('"+ex.toString()+"');                ");
                   out.println("   location='home_page.jsp';            ");
                   out.println("   </script>                           ");
                 }
          
          
          
             }
         }
        
        }
    }
}
    