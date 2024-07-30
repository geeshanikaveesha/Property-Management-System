package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackServlet")
public class feedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String fid = request.getParameter("fid");
		
			List<feedback> Details = feedbackDBUtil.getFeedbackDetails(fid);
			request.setAttribute("Details", Details);
			
			RequestDispatcher dis = request.getRequestDispatcher("feedbackpage.jsp");
			dis.forward(request, response);
		
		
	}

}
