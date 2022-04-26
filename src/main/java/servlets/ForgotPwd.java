package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ConnectDatabase.JdbcConnectUtil;

@WebServlet("/ForgotPwd")
public class ForgotPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		try {
			JdbcConnectUtil dao= new JdbcConnectUtil();
			HttpSession session=request.getSession();
			if (dao.changeAdminPassword(email,password)) {
				session.setAttribute("message","Password Changed Successfully");
		        }
		       else{
				session.setAttribute("message","Invalid Details");
				}
		    } catch (ClassNotFoundException | SQLException e) {
		    	e.printStackTrace();
		    }
		response.sendRedirect("AdminPage.jsp");
	}
}
