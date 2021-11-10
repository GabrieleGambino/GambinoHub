package hubvaccinale.filter.session;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hubvaccinale.model.BookingBean;

/**
 * Servlet Filter implementation class Session
 */

@WebFilter(filterName="LoggedInFilter", urlPatterns={"*.jsp"})
public class LoggedInFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoggedInFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		Object logged = session.getAttribute("logged");

		if(req.getRequestURI().matches(".*(css|jpg|png|gif|js)")){
		    chain.doFilter(request, response);
		    return;
		}
		
		if(logged != null) {
			if((boolean)logged == true) {
				System.out.println("LOGGATO ");
				if(req.getRequestURI().equals(req.getContextPath()+"/HubVaccinale/userlogin.jsp")) {
					BookingBean booking = (BookingBean) session.getAttribute("bookingBean");
					if(booking != null) {
						System.out.println("CLIENTE");
						res.sendRedirect(req.getContextPath()+"/showbooking");
					}		
				}
				else if(req.getRequestURI().equals(req.getContextPath()+"/HubVaccinale/privatelogin.jsp")) {
					Object email = session.getAttribute("email");
					Object type = session.getAttribute("type");
					if(email != null) {
						if((int) type == 0) {
							System.out.println("MEDICO");
							res.sendRedirect(req.getContextPath()+"/doctorsearch");
						}
						else if((int)type == 1) {
							System.out.println("FUNZIONARIO");
							res.sendRedirect(req.getContextPath()+"/officersearch");
						}
					}
				}
				else
					chain.doFilter(req, response);
			}
			else
				chain.doFilter(req, response);
		}
		else
			chain.doFilter(req, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}