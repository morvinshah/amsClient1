package client;
import services.*;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Journey;
/**
 * Servlet implementation class Listreservations
 */
@WebServlet("/Listreservations")
public class Listreservations extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Listreservations() {
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
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		
		Journey[] jry = proxy.listreservations();
		if(jry.length!=0)
		{
				request.setAttribute("journeyArray", jry);
				RequestDispatcher dispatch = request.getRequestDispatcher("displayallreservations.jsp");
	            dispatch.forward(request, response); 
		}
		else
		{
				request.setAttribute("msg", "Error Occurred. Could not list reservations. Try Again");
	           RequestDispatcher dispatch = request.getRequestDispatcher("adminhome.jsp");
	            dispatch.forward( request, response);  
		}
		
	}

}
