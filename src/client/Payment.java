package client;
import services.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Journey;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AMSProxy proxy= new AMSProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
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
		
		proxy.setEndpoint("http://localhost:8080/amsServer/services/AMS");
		String fn = request.getParameter("fname");
		String ln = request.getParameter("lname");
		String email = request.getParameter("emailid");
		//String flno = request.getParameter("flightno");
		String timestamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
		String tdate = request.getParameter("td");
		String fsrc = request.getParameter("hiddensrc");
		String fdes = request.getParameter("hiddendes");
		String fliname = request.getParameter("hiddenflightname");
		String flidur = request.getParameter("hiddenflightduration");
		String flino = request.getParameter("hiddenflightno");
		//give web service class name
		
		Journey[] detailflight = proxy.payfortickets(fn,ln,email,flidur,fliname,flino,tdate,fsrc,fdes,timestamp);
		if(detailflight.length!=0)
		{
		request.setAttribute("Ticketlist", detailflight);
           RequestDispatcher dispatch = request.getRequestDispatcher("issueticket.jsp?nf="+fn+"&nl="+ln);
            dispatch.forward( request, response);
		//response.sendRedirect("issueticket.jsp?nf="+fn+"&nl="+ln);
		}
		
		
		
	
		
	}

}
