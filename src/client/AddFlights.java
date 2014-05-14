package client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import services.*;

/**
 * Servlet implementation class AddFlight
 */
@WebServlet("/AddFlights")
public class AddFlights extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy1= new AMSProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlights() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		
		
		try{
			
			proxy1.setEndpoint("http://localhost:8080/amsServer/services/AMS");
			
			String fno = request.getParameter("flightnumber");
			String fname = request.getParameter("flightname");
			String src = request.getParameter("source");
			String dest = request.getParameter("destination");
			String cr = request.getParameter("crewdetails");
			int seats = Integer.parseInt(request.getParameter("noofseats"));
			String dur=request.getParameter("duration");
			String str = null;
			String result = proxy1.addFlight(fno, fname, src, dest, cr, seats,dur);
			System.out.println("result=  "+result);
			if (result.equals("true"))
			{
				str="Flight Added Sucessfully!";
				System.out.println(str);		
							
				request.setAttribute("message", str);
				RequestDispatcher dis= request.getRequestDispatcher("addFlight.jsp");
				dis.forward(request, response);
			}
			else
			{
				System.out.println("------------------result-------"+result);
				request.setAttribute("message", str);
				RequestDispatcher dis= request.getRequestDispatcher("addFlight.jsp");
				dis.forward(request, response);
			}
			
			
		}catch (Exception e){
			e.printStackTrace();
		}
		
	}
	
	
	}


