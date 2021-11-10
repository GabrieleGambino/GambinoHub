package hubvaccinale.controller.reservedarea;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hubvaccinale.model.Account;

/**
 * Servlet implementation class Login
 */
@WebServlet("/privatelogin" )
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Account account = new Account();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email != null && email != "" && password != null && password != "") {
			account.setEmail(email.trim());
			account.setPassword(password.trim());
			int res = account.login();
			
			if(res == 0 || res == 1) {
				request.getSession().setAttribute("email", account.getEmail());
				request.getSession().setAttribute("type", res);
				request.getSession().setAttribute("logged", true);
				request.getSession().setAttribute("active", "reserved");
				
				if(res == 0)
					response.sendRedirect(request.getContextPath() + "/doctorsearch");
				else
					response.sendRedirect(request.getContextPath() + "/officersearch");
					
			}
			else {
				request.getSession().setAttribute("logged", false);
				response.sendRedirect(request.getContextPath()+"/HubVaccinale/privatelogin.jsp");
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}