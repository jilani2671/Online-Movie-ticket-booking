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
public class payment_page extends HttpServlet
{
   Connection cn=null;
   Statement  st=null;
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        PrintWriter out =resp.getWriter();
        String name = req.getParameter("name");
        String phone_no = req.getParameter("phone_no");
        String amount = req.getParameter("amount");
        String payment_method= req.getParameter("payment_method");
        String payment_no= req.getParameter("payment_no");
        String event = req.getParameter("submit"); 
        
        out.println(name);       
        out.println(phone_no);
        out.println(amount);
        out.println(payment_method);
        out.println(payment_no);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        
        
        out.println(result);
        
         if(event.equals("Pay Now"))
        {
            if( name.equals("")|| phone_no.equals("")||amount.equals("")||payment_method.equals("")||payment_no.equals(""))
             {
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Some Fields Are Empty');     ");
                out.println("   location='payment_page.jsp';  ");
                out.println("   </script>  ");
             } 
            else
             {
             try
             {
              String sql= "insert into payment_page(name,phone_no,amount,payment_method,payment_no)values('"+name+"','"+phone_no+"','"+amount+"','"+payment_method+"','"+payment_no+"')";
              String Insert=db.Insert(sql);
              out.println(Insert); resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Your tickets are booked');");
                out.println("   location='report_page.jsp';  ");
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
            
 
