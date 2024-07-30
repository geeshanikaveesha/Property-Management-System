package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = feedbackDBUtil.deletefeedback(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("createfeedback.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<feedback> Details = feedbackDBUtil.getFeedbackDetails(id);
			request.setAttribute("Details",Details);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("feedbackpage.jsp");
			dispatcher.forward(request, response);
		}
	}	
}
