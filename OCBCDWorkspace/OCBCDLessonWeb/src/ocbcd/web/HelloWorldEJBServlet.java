package ocbcd.web;

import java.io.IOException;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import ocbcd.helloworld.HelloWorldEJBRemote;

public class HelloWorldEJBServlet extends HttpServlet {	
	//Try to always use a proper logger instead of System.out as it is single threaded
	private static final Log logger = LogFactory.getLog(HelloWorldEJBServlet.class);
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("name");
			
			InitialContext initialContext = new InitialContext();
			HelloWorldEJBRemote remote =  (HelloWorldEJBRemote) initialContext.lookup("HelloWorldEJB");
			
			String greeting = remote.getGreeting(name);
			if(greeting == "no names"){
				request.setAttribute("signin", "try again  , Your   sign in was not successful");	
			}
			else{
			request.setAttribute("greeting", greeting);
			request.setAttribute("signin", "Welcome , You are signed in");
			}
			request.getRequestDispatcher("/signin.jsp").include(request, response);
		}catch(Exception e){
			logger.error("Unexpected failure", e);
			e.printStackTrace();//Not good practice Must use a proper logger
			request.setAttribute("error", e.getMessage());
		}
	}
	
	
}
