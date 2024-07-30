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
 * Servlet implementation class deletecard
 */
@WebServlet("/deletecard")
public class deletecard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = CardDB.deletecard(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AddCard.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<CardDetails> details = CardDB.getcarddetails(id);
			request.setAttribute("details", details);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("reportaccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}


}
