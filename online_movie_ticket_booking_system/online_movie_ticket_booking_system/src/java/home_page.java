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
public class home_page extends HttpServlet
{
     Connection cn=null;
     Statement  st=null;
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out =resp.getWriter();
        HttpSession session = req.getSession();
        
        String event = req.getParameter("submit"); 
         
        String id = req.getParameter("id");
        String add_movie = req.getParameter("add_movie");
        String movie_name = req.getParameter("movie_name"); 
        
        long noofseates = 0;
        long total_amount = 0;
 
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result); 
        
         if(event.equals("Book"))
        {
             session.setAttribute("noofseates",noofseates);
             session.setAttribute("total_amount",total_amount);
             session.setAttribute("id",id);
             session.setAttribute("movie_name",movie_name);
             resp.sendRedirect("booking_page1.jsp");
        }
    }
}
    
   