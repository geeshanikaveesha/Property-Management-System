package payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AddcardDB
 */
@WebServlet("/AddcardDB")
public class AddcardDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String cardno = request.getParameter("cardno");
		
			List<CardDetails> details = CardDB.getcard(cardno);
			request.setAttribute("details", details);
			
			if (details.size() > 0) {
				RequestDispatcher dis = request.getRequestDispatcher("carddetails.jsp");
				dis.forward(request, response);
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Incorrect Card Number.Please Re Enter Correct Card Number');");
				out.println("location='Viewcard.jsp'");
				out.println("</script>");
				
			}
			
		
		
	}

}