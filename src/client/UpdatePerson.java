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

import beans.Person;
import services.AMSProxy;

/**
 * Servlet implementation class UpdatePerson
 */
@WebServlet("/UpdatePerson")
public class UpdatePerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePerson() {
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
		PrintWriter out=response.getWriter();
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		HttpSession session = request.getSession();
		Person per= new Person();
		per=(Person)session.getAttribute("user");
		String email=per.getEmailid();
		System.out.println("Session email="+ email);
		//Person per= (Person)session.getAttribute("per1");

		//response.setContentType("text/html");
		try
		{
			//String emailid=request.getParameter("emailid");
			
			String address=request.getParameter("address");
			String city=request.getParameter("city");
			String state=request.getParameter("state");
			String zipcode=request.getParameter("zipcode");
			
			
			String update_per=proxy.updatePinfo(email, address, city, state, zipcode);		
			if(update_per.substring(0,4).equalsIgnoreCase("true"))
			{
				request.setAttribute("message", "Profile Successfully Uploaded!" );   
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward( request, response); 

			}
			
			else
			{
				request.setAttribute("message", "Error Occurred. Try Again" );   
				RequestDispatcher dispatcher = request.getRequestDispatcher("personprofile.jsp");
				dispatcher.forward( request, response); 

			}
		
		}
		
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
			
	}
	}


