package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ConnectDatabase.JdbcConnectUtil;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID= 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

     String email=request.getParameter("email");
     String password=request.getParameter("password");
     try {
    	 JdbcConnectUtil dao=new JdbcConnectUtil();
    	 HashMap<String,String> user=dao.checkUser(email,password);
    	 HttpSession session=request.getSession();
    	 if (user!=null) {
    		 session.setAttribute("user",user);
    		 response.sendRedirect("welcome.jsp");
    		 }
    	 else{
    		 session.setAttribute("message","Invalid Details");
    		 response.sendRedirect("UserPage.jsp");
    		 }
     }catch( ClassNotFoundException | SQLException e) {
    	 //TODOAuto-generated catch block
    	 e.printStackTrace();
    	 }
    	 
	}
}

