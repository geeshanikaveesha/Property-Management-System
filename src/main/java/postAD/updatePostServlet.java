package postAD;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatePostServlet")
public class updatePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String owner = request.getParameter("owner");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String desc = request.getParameter("desc");
		
		boolean isTrue;
		
		isTrue = adDBUtil.updatead(id, owner, email, phone, address, desc);
		
		if(isTrue == true) {
			
			List<PropertyDetails> details = adDBUtil.getpostdetails(owner);
			request.setAttribute("details",details);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewAd.jsp");
			
			dis.forward(request, response);
		}
		else {
			List<PropertyDetails> details = adDBUtil.getpostdetails(owner);
			request.setAttribute("details",details);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
