package client;

import beans.Flightdetails;
import services.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListAndUpdateFlight
 */
@WebServlet("/FlightCriteria")
public class FlightCriteria extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy = new AMSProxy();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FlightCriteria() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String fno = request.getParameter("flightnumber");
		String src = request.getParameter("source");
		String dest = request.getParameter("destination");
		System.out.println("in servlet");

		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		Flightdetails[] f = proxy.listFlightsToUpdate(fno, src, dest);
		System.out.println(f.length);

		if (f[0].getMsg().equals("failed")) {
			String m = "Records not found. Check the values entered.";
			request.setAttribute("msg", m);
			RequestDispatcher dis = request.getRequestDispatcher("flightcriteria.jsp");
			dis.forward(request, response);
		} else {

			request.setAttribute("flightArray", f);
			RequestDispatcher dis = request.getRequestDispatcher("updateSearchResult.jsp");
			dis.forward(request, response);
		}

	}

}
