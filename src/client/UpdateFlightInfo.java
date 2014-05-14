package client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Flightdetails;
import services.AMSProxy;

/**
 * Servlet implementation class UpdateFlightInfo
 */
@WebServlet("/UpdateFlightInfo")
public class UpdateFlightInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFlightInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AMSProxy proxy= new AMSProxy();
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		String s= request.getParameter("fnumber");
		
		Flightdetails f= proxy.listOneFlight(s);
		
		
		
		request.setAttribute("flightArray", f);
		RequestDispatcher dis= request.getRequestDispatcher("updateSearchResult2.jsp");
		dis.forward(request, response);
		
		
	}

}
