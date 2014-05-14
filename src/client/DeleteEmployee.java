package client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.*;
/**
 * Servlet implementation class DeleteEmployee
 */
@WebServlet("/DeleteEmployee")
public class DeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEmployee() {
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
		String email= request.getParameter("email");
		
		String str= proxy.deleteEmployee(email);
		String message="";
		if(str.matches("success"))
		{
			message="Employee Successfully Deleted";
			request.setAttribute("msg", message);
			RequestDispatcher dis= request.getRequestDispatcher("adminhome.jsp");
			dis.forward(request, response);
		}
		else 
		{
			message="Error Occured. Try Again";
			request.setAttribute("msg", message);
			RequestDispatcher dis= request.getRequestDispatcher("searchemployee.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
