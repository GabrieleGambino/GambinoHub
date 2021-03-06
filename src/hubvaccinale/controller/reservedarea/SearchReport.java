package hubvaccinale.controller.reservedarea;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hubvaccinale.model.Vaccines;

/**
 * Servlet implementation class SearchReport
 */
@WebServlet("/searchreport")
public class SearchReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Vaccines vaccines = new Vaccines();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchReport() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//checksessione altrimenti problemi privacy
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		
		String startdate = request.getParameter("startdate");
		String finishdate = request.getParameter("finishdate");
		
		if(startdate != null && startdate != "" && finishdate != null && finishdate != "") {
			out.print(vaccines.searchVaccines(startdate.trim(), finishdate.trim()));
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