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
import ocbcd.helloworld.UserDTO;

/**
 * Servlet implementation class UpdateUserEJBServlet
 */
public class UpdateUserEJBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Log logger = LogFactory.getLog(HelloWorldEJBServlet.class);
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			int age = Integer.parseInt(request.getParameter("age"));
			String name = request.getParameter("name");
			String surname = request.getParameter("surname");
			
			InitialContext initialContext = new InitialContext();
			HelloWorldEJBRemote remote =  (HelloWorldEJBRemote) initialContext.lookup("HelloWorldEJB");
			
			if(remote.updateUser(new UserDTO(username, password, age, name, surname))){
				
				request.setAttribute("updateUser", "The update was successful.");
			};
			
		
			
			request.getRequestDispatcher("/updateUser.jsp").include(request, response);
		}catch(Exception e){
			logger.error("Unexpected failure", e);
			e.printStackTrace();//Not good practice Must use a proper logger
			request.setAttribute("error", e.getMessage());
		}
	}

}
