package client;
import services.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.AMSProxy;
import client.WebServlet;
import beans.Flightdetails;

/**
 * Servlet implementation class Listflights
 */
@WebServlet("/ListflightsCustomer")
public class ListflightsCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListflightsCustomer() {
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
		
		String src = request.getParameter("source");
		String des = request.getParameter("destination");
		String td = request.getParameter("reldate");
		
		
		Flightdetails[] dg = proxy.listflightsCustomer(src,des);
		if(dg.length!=0)
		{
		request.setAttribute("flightsArray", dg);
           RequestDispatcher dispatch = request.getRequestDispatcher("displayallflights.jsp?s="+src+"&d="+des+"&traveldate="+td);
            dispatch.forward( request, response);  
		}
		
		
	}

}
