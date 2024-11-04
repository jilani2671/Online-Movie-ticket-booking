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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jilani
 */
public class user_listadmin1 extends HttpServlet {
Connection cn=null;
Statement st=null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String event = req.getParameter("submit");
        out.println(event);
       String first_name = req.getParameter("first_name");
        
          
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
       
        
                    
       if(event.equals("Remove"))
          {
                  try
                  {
                      String sql = "delete from user_registration where first_name='"+first_name+"'";
                      String delete=db.delete(sql);
                      out.println(delete);
                      resp.setContentType("text/html");  
                      out.println("<script type='text/javascript'>");
                      out.println("alert('User Removed')");
                      out.println("location='user_listadmin.jsp'");
                      out.println("</script>");
                  }
                  catch(Exception ex)
                  {
                      resp.setContentType("text/html");  
                      out.println("<script type='text/javascript'>");
                      out.println("alert('"+ex.toString()+"')");
                      out.println("location='user_listadmin.jsp'");
                      out.println("</script>");
                      
                  }
              }
        
    } 
}
   
    