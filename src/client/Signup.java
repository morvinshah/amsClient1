package client;
import services.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
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
		
		String fn = request.getParameter("fname");
		String ln = request.getParameter("lname");
		String un = request.getParameter("uname");
		String pwd = request.getParameter("pwd1");
		String addr = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode1");
		zipcode = zipcode+'-'+request.getParameter("zipcode2");
		String dob = request.getParameter("dob");
		String ssn = request.getParameter("memid1");
		ssn=ssn+"-"+request.getParameter("memid2");
		ssn=ssn+"-"+request.getParameter("memid3");
		String pn = request.getParameter("pspno");
		String nation = request.getParameter("nat");
		
		
		AMSProxy proxy = new AMSProxy();
		
		 //give web service path http://localhost:8080/Teamprjt/services/Teamserver
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		
		String res= proxy.signup(fn,ln,un,pwd,addr,city,state,zipcode,dob,ssn,pn,nation);

		if(res.matches("true"))
		{
			request.setAttribute("msg", "Account Created. You may sign in now");
			RequestDispatcher dis= request.getRequestDispatcher("SignIn.jsp");
			dis.forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "Error Occured. Try Again");
			RequestDispatcher dis= request.getRequestDispatcher("signup.jsp");
			dis.forward(request, response);
		}
	}

}
