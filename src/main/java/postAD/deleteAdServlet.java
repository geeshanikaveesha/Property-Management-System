package postAD;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.user;
import user.userdbutil;


@WebServlet("/deleteAdServlet")
public class deleteAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = adDBUtil.deletecard(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("createAd.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<user> userDetails = userdbutil.getuserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("createAd.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
