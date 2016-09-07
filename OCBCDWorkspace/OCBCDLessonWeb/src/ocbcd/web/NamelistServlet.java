package ocbcd.web;

import java.io.IOException;
import java.util.List;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import ocbcd.helloworld.HelloWorldEJBRemote;

/**
 * Servlet implementation class NamelistServlet
 */
public class NamelistServlet extends HttpServlet {
	private static final Log logger = LogFactory.getLog(NamelistServlet.class);

	private static final long serialVersionUID = 1L;
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			
			
			InitialContext initialContext = new InitialContext();
			HelloWorldEJBRemote remote =  (HelloWorldEJBRemote) initialContext.lookup("HelloWorldEJB");
			
			
			List<String> nameList = remote.getNames();
			
			request.setAttribute("names1", nameList);
			
			request.getRequestDispatcher("/userlist.jsp").include(request, response);
		}catch(Exception e){
			logger.error("Unexpected failure", e);
			e.printStackTrace();//Not good practice Must use a proper logger
			request.setAttribute("error", e.getMessage());
		}
	}
	

}
