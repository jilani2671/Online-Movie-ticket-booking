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
public class booking_page extends HttpServlet 
{
    Connection cn=null;
    Statement  st=null;
    
    
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        PrintWriter out =resp.getWriter();
        HttpSession session = req.getSession();
        
        String time= req.getParameter("time");
        String date = req.getParameter("date");
        String no_of_seats = req.getParameter("no_of_seats");
        String movie_name = req.getParameter("movie_name");
        String id = req.getParameter("id");
        String add_movie = req.getParameter("add_movie");
        String price = req.getParameter("price");
        
        String event = req.getParameter("submit");
        String event1 = req.getParameter("seat");
        
        out.println(time);       
        out.println(date);
        out.println(no_of_seats);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event1!=null)
        {
            session.setAttribute("noofseates",Long.parseLong(no_of_seats)+1);
            session.setAttribute("total_amount",Long.parseLong(price)+300);
            session.setAttribute("date",date);
            session.setAttribute("time",time);
            
            String sql1= "insert into seat_bookings(user_id,user_name,movie_id,movie_name,movie_image,time,date,seat_no)values('"+session.getAttribute("user_id")+"', '"+session.getAttribute("first_name") +"' , '"+id+"', '"+movie_name+"', '"+add_movie+"','"+time+"','"+date+"','"+event1+"')";
            String Insert1=db.Insert(sql1);
            resp.sendRedirect("booking_page1.jsp");
        }
        else if(event.equals("Confirm Booking"))
        {
            if( time.equals("")|| date.equals("")||no_of_seats.equals(""))
             {
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Some Fields Are Empty');     ");
                out.println("   location='booking_page1.jsp';  ");
                out.println("   </script>  ");
             } 
            else
             {
                try
                {
                   session.setAttribute("total_amount",price);
                   String sql= "insert into booking_page(user_id,user_name,movie_id,movie_name,movie_image,time,date,no_of_seats,price)values('"+session.getAttribute("user_id")+"', '"+session.getAttribute("first_name") +"' , '"+id+"', '"+movie_name+"', '"+add_movie+"','"+time+"','"+date+"','"+no_of_seats+"', '"+price+"')";
                   String Insert=db.Insert(sql);
                   resp.sendRedirect("payment_page.jsp");  
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }                 
        
            }
        }  
        else if(event.equals("Cancel"))
          {
              resp.sendRedirect("home_page.jsp");
          }
  }
}
