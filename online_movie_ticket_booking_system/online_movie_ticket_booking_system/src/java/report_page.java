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
public class report_page extends HttpServlet 
{
    Connection cn=null;
    Statement  st=null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
         PrintWriter out =resp.getWriter();
         String event = req.getParameter("submit");
         String user_name = req.getParameter("user_name");
        
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
        
         if(event.equals("Cancel"))
          {
                  try
                  {
                      String sql = "delete from booking_page where user_name='"+user_name+"'";
                      String delete=db.delete(sql);
                      out.println(delete);
                     // resp.setContentType("text/html");  
                      //out.println("<script type='text/javascript'>");
                      //out.println("alert('Ticket Was Cancelled')");
                      //out.println("location='report_page.jsp'");
                      //out.println("</script>");
                  }
                  catch(Exception ex)
                  {
                      resp.setContentType("text/html");  
                      out.println("<script type='text/javascript'>");
                      out.println("alert('"+ex.toString()+"')");
                      out.println("location='report_page.jsp'");
                      out.println("</script>");
                      
                  }
              }
        
    } 
}
   
    

 