package client;

import beans.Person;

import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import services.AMSProxy;

/**
 * Servlet implementation class SignInController
 */
@WebServlet("/SignInController")
public class SignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
public HttpSession session=null;
public String s;
    /**
     * Default constructor. t
     */
    public SignInController() {
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
		
		Person newLogin= new Person();
		try
		{
			String user_name=request.getParameter("user");
			String password=request.getParameter("pwd");
			System.out.println("user "+user_name);
			System.out.println("pwd  "+password);
			proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
			newLogin=proxy.signIn(user_name,password);
																																					
			request.getSession(false).invalidate();
			session=request.getSession(true);
									
			String msg= newLogin.getMsg();
			System.out.println(msg);
			
			System.out.println("type:"+ newLogin.getType());
			
			if(msg.matches("true:Success"))
			{
				session.setAttribute("user",newLogin );
				System.out.println(newLogin.getFirstname());
				
				String lastAccess=proxy.retrieveDate(user_name);
				Date time= new java.util.Date();
				Format formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				s = formatter.format(time);
				proxy.updateTime(user_name, s);
				System.out.println("in if");
				if(newLogin.getType().matches("admin")&& lastAccess!=null)
				{
					System.out.println("admin true");
						request.setAttribute("lastLoggedIn", lastAccess );   
						RequestDispatcher dispatcher = request.getRequestDispatcher("adminhome.jsp");
						dispatcher.forward( request, response); 
									
				}
				else if(newLogin.getType().matches("emp"))
				{
					request.setAttribute("lastLoggedIn", lastAccess );   
					RequestDispatcher dispatcher = request.getRequestDispatcher("employeeHome.jsp");
					dispatcher.forward( request, response); 
										
				}
				else 
				{
					request.setAttribute("lastLoggedIn", lastAccess );   
					RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
					dispatcher.forward( request, response); 	
				}
			}
			else
			{
				String error="Invalid Credentials, try again";
				request.setAttribute("error", error);
				RequestDispatcher dis=request.getRequestDispatcher("SignIn.jsp");
				dis.forward(request, response);
			}
		}		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	

}
