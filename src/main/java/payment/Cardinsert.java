package payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Cardinsert")
public class Cardinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cardno = request.getParameter("cardno");
		String name = request.getParameter("name");
		String edate = request.getParameter("edate");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = CardDB.addcard(cardno, name, edate, cvv);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Viewcard.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}
}
