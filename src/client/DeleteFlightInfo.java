package client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Flightdetails;
import services.AMSProxy;

/**
 * Servlet implementation class DeleteFlightInfo
 */
@WebServlet("/DeleteFlightInfo")
public class DeleteFlightInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFlightInfo() {
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
		
		String str= proxy.deleteOneFlight(s);
		String message="";
		if(str.matches("success"))
			message="Flight Successfully Deleted";
		else 
			message="Error Occured. Try Again";
		
		request.setAttribute("message", message);
		RequestDispatcher dis= request.getRequestDispatcher("deleteFlight.jsp");
		dis.forward(request, response);
	
		
	}

}
