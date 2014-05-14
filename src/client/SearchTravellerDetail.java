package client;

import services.*;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.SearchTraveller;

/**
 * Servlet implementation class SearchPersonDetail
 */
@WebServlet("/SearchTravellerDetail")
public class SearchTravellerDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTravellerDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String fno=request.getParameter("fno");
		String dest=request.getParameter("dest");
		String traveldate=request.getParameter("traveldate");
		
		SearchTraveller[] t=proxy.searchtraveller(fname, lname, fno, dest, traveldate);
		System.out.println(t.length);
//		for(int i=0;i<t.length;i++)
//		{
//			System.out.println(t[i].getFirstname());
//			System.out.println(t[i].getLastname());
//			System.out.println(t[i].getFlightnumber());
//			System.out.println(t[i].getDestination());
//			System.out.println(t[i].getTraveldate());
//			System.out.println(t[i].getMsg());
//			
//		}
		
		
		
		if(t[0].getMsg().equals("failed"))
		{
			String m="Records not found. Check the values entered.";
			request.setAttribute("msg", m);
			RequestDispatcher dis= request.getRequestDispatcher("searchtravellerdetail.jsp");
			dis.forward(request, response);
		}
		else
		{
		System.out.println("success!!!!!!!!!!!");
		request.setAttribute("traveller", t);
		RequestDispatcher dis= request.getRequestDispatcher("showsearchtravellerdetail.jsp");
		dis.forward(request, response);
		}
	
		
		
		
		
	}

}
