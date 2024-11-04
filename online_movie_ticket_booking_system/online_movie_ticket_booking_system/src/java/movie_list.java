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
public class movie_list extends HttpServlet 
{
    
    Connection cn = null;
    Statement st = null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String event = req.getParameter("submit");
        String movie_name = req.getParameter("movie_name");
        
          
        Database db = new Database();
        String result = db.Connectdb();
      
        
        if(event.equals("Bookings"))
        {
            session.setAttribute("movie_name", movie_name);
            resp.sendRedirect("bookings1.jsp");
        }
        
                    
       if(event.equals("Delete"))
          {
                  try
                  {
                      String sql = "delete from admin_assistant where movie_name='"+movie_name+"'";
                      String delete=db.delete(sql);
                      out.println(delete);
                      resp.setContentType("text/html");  
                      out.println("<script type='text/javascript'>");
                      out.println("alert('movie delete')");
                      out.println("location='movie_list.jsp'");
                      out.println("</script>");
                  }
                  catch(Exception ex)
                  {
                      resp.setContentType("text/html");  
                      out.println("<script type='text/javascript'>");
                      out.println("alert('"+ex.toString()+"')");
                      out.println("location='admin_home.jsp'");
                      out.println("</script>");
                      
                  }
              }
        
    } 
}