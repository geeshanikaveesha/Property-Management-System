package payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class updatecard
 */
@WebServlet("/updatecard")
public class updatecard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String cardno = request.getParameter("cardno");
		String name = request.getParameter("name");
		String date = request.getParameter("edate");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue = true;
		
		isTrue = CardDB.updatecard(id, cardno, name, date, cvv);
		
		if(isTrue == true) {
			
			List<CardDetails> details = CardDB.getcarddetails(id);
			request.setAttribute("details", details);
			
			RequestDispatcher dis = request.getRequestDispatcher("Viewcard.jsp");
			dis.forward(request, response);
		}
		else {
			List<CardDetails> details = CardDB.getcarddetails(id);
			request.setAttribute("details", details);
			
			RequestDispatcher dis = request.getRequestDispatcher("Viewcard.jsp");
			dis.forward(request, response);
		}
	}
}
