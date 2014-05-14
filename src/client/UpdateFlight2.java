package client;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import services.AMSProxy;
import beans.Person;

/**
 * Servlet implementation class UpdateFlight2
 */
@WebServlet("/UpdateFlight2")
public class UpdateFlight2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFlight2() {
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
		PrintWriter out=response.getWriter();
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		HttpSession session = request.getSession();
		
//		Flightdetails flight= (Flightdetails)session.getAttribute("f1");

		// response.setContentType("text/html");
		try
		{
			String duration=request.getParameter("duration");
			int numberofseats=Integer.parseInt(request.getParameter("numberofseats"));
			String crewdetails=request.getParameter("crewdetails");				
			String flightnumber=request.getParameter("flightnumber");
			String update_flight=proxy.updateFlight(duration,numberofseats, crewdetails,flightnumber);	
			System.out.println(update_flight);
			if(update_flight.matches("Updation successful"))
			{
				request.setAttribute("msg", update_flight);
	            RequestDispatcher dis=request.getRequestDispatcher("employeeHome.jsp");
	            dis.forward(request, response);
				
			}
			
			else
			{
			
				request.setAttribute("msg", update_flight);
	            RequestDispatcher dis=request.getRequestDispatcher("updateSearchResult2.jsp");
	            dis.forward(request, response);
				//out.println(update_flight.substring(6));

			}
		
		}
		
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
			
	}

		
	}


