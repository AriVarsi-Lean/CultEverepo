package ocbcd.web;

import java.io.IOException;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import ocbcd.helloworld.*;

/**
 * Servlet implementation class CreateUserEJBServlet
 */
public class CreateUserEJBServlet extends HttpServlet {
	private static final Log logger = LogFactory.getLog(HelloWorldEJBServlet.class);
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUserEJBServlet() {
        super();
        // 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//getting the values from set named parameters in the jsp page.
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			int age = Integer.parseInt(request.getParameter("age"));
			String name = request.getParameter("name");
			String surname = request.getParameter("surname");
			
			InitialContext initialContext = new InitialContext();
			HelloWorldEJBRemote remote =  (HelloWorldEJBRemote) initialContext.lookup("HelloWorldEJB");
			///UserDAORemote
			//UserDAORemote remote =  (UserDAORemote) initialContext.lookup("UserDAO");
			if(remote.createUser(new UserDTO(username, password, age, name, surname))){
				
				request.setAttribute("createUser", "The insert was successful.");
			};
			
		
			
			request.getRequestDispatcher("/helloworld/createUser.jsp").include(request, response);
		}catch(Exception e){
			logger.error("Unexpected failure", e);
			e.printStackTrace();//Not good practice Must use a proper logger
			request.setAttribute("error", e.getMessage());
		}
	}

}
