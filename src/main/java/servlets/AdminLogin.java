package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.SQLException;
import com.ConnectDatabase.JdbcConnectUtil;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		try {
			JdbcConnectUtil dao= new JdbcConnectUtil();
			if(dao.checkAdmin(email,password)) {
				response.sendRedirect("AdminHome.jsp");
				} 
			else {
					HttpSession session=request.getSession();
					session.setAttribute("message","Invalid Details");
					response.sendRedirect("AdminPage.jsp");
					}
		} catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			}
	  }
}