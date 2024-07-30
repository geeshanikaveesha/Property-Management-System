package feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackInsertServlet")
public class feedbackInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String fid = request.getParameter("fid");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = feedbackDBUtil.insertfeedback(fid, email, message);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("viewFeedback.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
