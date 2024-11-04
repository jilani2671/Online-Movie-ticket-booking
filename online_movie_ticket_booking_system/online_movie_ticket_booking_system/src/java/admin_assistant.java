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


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
 *
 * @author Jilani
 */
public class admin_assistant extends HttpServlet 
{
     Connection cn=null;
     Statement  st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          
         PrintWriter out =resp.getWriter();
        String movie_name = req.getParameter("movie_name");
        String casting = req.getParameter("casting");
        String release_date = req.getParameter("release_date");
        String info = req.getParameter("info");
        String add_movie = req.getParameter("add_movie");
       String event = req.getParameter("submit");
        
        
        
        
        out.println(movie_name);       
        out.println(casting);
        out.println(release_date);
        out.println(info);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Add Movie"))
        {
            if(movie_name.equals("")|| casting.equals("")|| release_date.equals("")||info.equals(""))
             {
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Some Fields Are Empty');     ");
                out.println("   location='admin_assistant.jsp';  ");
                out.println("   </script>  ");
             } 
            else
             {
             try
             {
              String sql= "insert into admin_assistant(movie_name,casting,release_date,info,add_movie)values('"+movie_name+"','"+casting+"','"+release_date+"','"+info+"','"+add_movie+"')";
              String insert=db.Insert(sql);
              out.println(insert);
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Record Inserted Successfully');");
                out.println("   location='admin_assistant.jsp';  ");
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

    
