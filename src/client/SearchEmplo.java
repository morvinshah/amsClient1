package client;
import beans.SearchEmployee;
import services.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchEmployee
 */
@WebServlet("/SearchEmplo")
public class SearchEmplo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy1= new AMSProxy(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchEmplo() {
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
		
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String position=request.getParameter("position");
		String hiredate=request.getParameter("hiredate");
			
		System.out.println("in servlet");
		
		proxy1.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		SearchEmployee[] e=proxy1.searchEmployee(firstname, lastname, city, state, position,hiredate);
		System.out.println(e.length);
		
	
		
		if(e[0].getMsg().matches("failed"))
		{
			System.out.println("fail");
			String m="Records not found. Check the values entered.";
			request.setAttribute("msg", m);
			RequestDispatcher dis= request.getRequestDispatcher("searchemployee.jsp");
			dis.forward(request, response);
		}
		else
		{
		System.out.println("success");
		request.setAttribute("employee", e);
		RequestDispatcher dis= request.getRequestDispatcher("showsearchemployee.jsp");
		dis.forward(request, response);
		}
	
	}

}
