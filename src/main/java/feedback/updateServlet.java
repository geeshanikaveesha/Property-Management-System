package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String fid = request.getParameter("fid");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = feedbackDBUtil.updatefeedack(id, fid, email, message);
		
		if(isTrue == true) {
			
			List<feedback> Details = feedbackDBUtil.getFeedbackDetails(fid);
			request.setAttribute("Details", Details);
			
			RequestDispatcher dis = request.getRequestDispatcher("feedbackpage.jsp");
			dis.forward(request, response);
		}
		else {
			List<feedback> Details = feedbackDBUtil.getFeedbackDetails(fid);
			request.setAttribute("Details", Details);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
}
