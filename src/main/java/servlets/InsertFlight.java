package servlets;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ConnectDatabase.JdbcConnectUtil;

@WebServlet("/InsertFlight")
public class InsertFlight extends HttpServlet {
	private static final long serialVersionUID= 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departure=request.getParameter("departure");
		String time=request.getParameter("time");
		String price=request.getParameter("price");
		
		HashMap<String,String>flight=new HashMap<>();
		flight.put("name",name);
		flight.put("flight_from",from);
		flight.put("flight_to",to);
		flight.put("date",departure);
		flight.put("time_of_flight",time);
		flight.put("ticket_price",price);
		try {
			JdbcConnectUtil dao = new JdbcConnectUtil();
			HttpSession session=request.getSession();
			if(dao.insertFlight(flight)) {
				session.setAttribute("message", "Flight added successfully");
				}
			else {		
			session.setAttribute("message","Invalid Details");
			} 
	   }catch (ClassNotFoundException | SQLException e) {
			System.out.print("error");
			e.printStackTrace();
			}
		    response.sendRedirect("AdminHome.jsp");
		}
}
