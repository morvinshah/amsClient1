
package client;
import services.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Addemployee
 */
@WebServlet("/Addemployee")
public class Addemployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addemployee() {
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
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String usn = request.getParameter("uname");
		String ssn = request.getParameter("ssn1");
		ssn=ssn+'-'+request.getParameter("ssn2");
		ssn=ssn+'-'+request.getParameter("ssn3");
		String type="emp";
		String addr = request.getParameter("address");
		String city = request.getParameter("city");
		String state=request.getParameter("state");
		String zip = request.getParameter("zipcode1");
		zip=zip+'-'+request.getParameter("zipcode2");
		String dob = request.getParameter("dateofbirth");
		String workd = request.getParameter("workdescription");
		String pos = request.getParameter("position");
		String hire = request.getParameter("hiredate");
		String password=request.getParameter("pwd2");
					
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		
		System.out.println("In servlet");
			String res=proxy.addemployees(firstname,lastname,usn,ssn,type,addr,city,zip,state,dob,password,workd,pos,hire);
			System.out.println("function executed");
			if(res.matches("true"))
			{
				request.setAttribute("msg", "Employee account Created.");
    			RequestDispatcher dis= request.getRequestDispatcher("adminhome.jsp");
    			dis.forward(request, response);
				
			}
			 
			else
    		{
    			request.setAttribute("msg", "Error Occured. Try Again");
    			RequestDispatcher dis= request.getRequestDispatcher("Addemployee.jsp");
    			dis.forward(request, response);
    		}              
           

    			}

}

