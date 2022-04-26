package servlets;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ConnectDatabase.JdbcConnectUtil;

@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID= 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String phno=request.getParameter("phno");
		String adno=request.getParameter("adno");
		
		HashMap<String,String>user=new HashMap<>();
		user.put("email",email);
		user.put("password",password);
		user.put("name",name);
		user.put("phno",phno);
		user.put("adno",adno);
		try {
			JdbcConnectUtil dao=new JdbcConnectUtil();
			boolean result = dao.insertUser(user);
			HttpSession session=request.getSession();
			
			if(result) {
				session.setAttribute("message","User Added Successfully");
			}else{
				session.setAttribute("message","Invalid Details");
				}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();}response.sendRedirect("UserPage.jsp");
			}
}
