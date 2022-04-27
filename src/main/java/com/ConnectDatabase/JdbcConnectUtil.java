package com.ConnectDatabase;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.utilString.StringUtil;

public class JdbcConnectUtil {

	public Connection con= null;
	public Statement st= null;
	
	public JdbcConnectUtil() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_db","root","mysql");
	System.out.println("Connected");
	st=con.createStatement();
	
}
	public List<String[]> getAvailableFlights(String f, String t, String d){
		List<String[]> flights=new ArrayList<>();
		String Query="Select * from flyaway_db.flights where flight_from='"+f+"' and flight_to='"+t+"' and date='"+d+"'";	
		try {
			ResultSet rs = st.executeQuery(Query);
			
			if(rs.next()) {
				String[] flight=new String[3];
				flight[0]=rs.getString("name");
				flight[1]=rs.getString("time_of_flight");
				flight[2]=rs.getString("ticket_price");
				flights.add(flight);
				return flights;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flights;
	}
	
	public HashMap<String, String> checkUser(String email, String password){
		HashMap<String,String> user= null;
		String query="select * from user where email='"+email+"' and password='"+password+"'";
		try {
			ResultSet rs=st.executeQuery(query);
		if(rs.next()) {
			user=new HashMap<>();
		user.put("name",rs.getString("name"));
		user.put("email",rs.getString("email"));
		user.put("phno",rs.getString("phno"));
		user.put("adno",rs.getString("adno"));
		}
		return user;
		}catch(SQLException e) {
			e.printStackTrace();
			}
		return user;
	}
	public boolean insertUser(HashMap<String, String> user) 
	{
		String query="INSERT INTO user (email, password, name, phno, adno) values('"+user.get("email")+"','"+user.get("password")+"','"+user.get("name")+"','"+user.get("phno")+"','"+user.get("adno")+"')";
		try {
			st.execute(query);
			return true;
			} catch(SQLException e) {
				e.printStackTrace();
				}
		return false;
		
	}
	public boolean checkAdmin(String email, String password) {
		try{
			ResultSet rs=st.executeQuery("select * from Admin where email='"+email+"' and password='"+password+"'");
			if(rs.next())
				return true;
			}catch(SQLException e) {
				e.printStackTrace();
				}
	return false;
	}
	public boolean changeAdminPassword(String email, String password) {
		try{
			ResultSet rs=st.executeQuery("select * from Admin where email='"+email+"'");
			if(!rs.next()) {
				return false;
				}
			st.execute("update Admin set password='"+password+"' where email='"+email+"'");
	        return true;
	}catch(SQLException e) {
		e.printStackTrace();
		}
	return false;
	}
	
	public boolean insertFlight(HashMap<String, String>flight) throws SQLException {
	
		String query1="INSERT INTO flights (flight_from, flight_to, name, time_of_flight ,ticket_price, date) VALUES"+ " ('"+ 			
		StringUtil.fixSqlFieldValue(flight.get("flight_from")) +"',"+" '"+ 
		StringUtil.fixSqlFieldValue(flight.get("flight_to")) +"',"+" '"+ 
		StringUtil.fixSqlFieldValue(flight.get("name")) +"',"+" '"+ 
		StringUtil.fixSqlFieldValue(flight.get("time_of_flight")) +"',"+" '"+ 
		StringUtil.fixSqlFieldValue(flight.get("ticket_price")) +"',"+" '"+
		StringUtil.fixSqlFieldValue(flight.get("date")) +"')";
		System.out.println(flight.get("date"));
		System.out.println(flight.get("time_of_flight"));
		try {
			st.execute(query1);
			return true;
		} catch (SQLException e) {
			System.out.println("error");
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		JdbcConnectUtil util = new JdbcConnectUtil();
		util.getClass();
		util.checkUser(null, null);
	}
	
}
 