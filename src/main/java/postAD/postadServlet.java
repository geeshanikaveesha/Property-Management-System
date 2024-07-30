package postAD;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/postadServlet")
public class postadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String owner = request.getParameter("owner");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String desc = request.getParameter("desc");
		
		boolean isTrue;
		
		isTrue = adDBUtil.postad(owner, email, phone, address, desc);
		
		if(isTrue == true) {
			
			response.setContentType("text/html");
			
			List<PropertyDetails> details = adDBUtil.getpostdetails(owner);
			request.setAttribute("details", details);
				
			
			RequestDispatcher dis2 = request.getRequestDispatcher("viewAd.jsp");
			dis2.forward(request, response);
				
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("view.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
