package com.user;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class userDAO {

	Connection conn = null;
	PreparedStatement stmt=null;
	ResultSet rs=null;
	
	public Connection getConnection(){
		
		String url = "jdbc:mysql://localhost:3306/student";
		String user = "root";
		String pass = "i5rtx3050";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 conn = DriverManager.getConnection(url, user, pass);
		} catch (ClassNotFoundException  | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public int register(String uname,String password,String gender,String phoneno,String email) throws SQLException {
		String sql = "INSERT INTO userinfo VALUES (?, ?, ?,?,?)";
		
		Connection conn=getConnection();
	    stmt = conn.prepareStatement(sql);

		stmt.setString(1, uname);
		stmt.setString(2, password);
		stmt.setString(3, email);
		stmt.setString(4, gender);
		stmt.setString(5, phoneno);
		
		// execute SQL statement
		int i= stmt.executeUpdate();
		return i;
	}
	public boolean login(String uname,String password) throws SQLException {
		String sql = "select * from userinfo where username=? and password=?";
		Connection conn=getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, uname);
		stmt.setString(2, password);
		
		
		// execute SQL statement
		rs=stmt.executeQuery();
		if(rs.next()) {
			return true;
		}
		return false;	
	}
	

public int update(String uname,String newpassword) throws SQLException {
	String sql = "UPDATE userinfo SET password = ? WHERE username = ? ; ";
	
	Connection conn=getConnection();
    stmt = conn.prepareStatement(sql);

	stmt.setString(1, uname);
	stmt.setString(2, newpassword);
	
	// execute SQL statement
	int i= stmt.executeUpdate();
	return i;
}



public ResultSet home (String uname) throws SQLException {
	String sql = "SELECT * FROM userinfo WHERE USERNAME = ? ;";

	Connection conn=getConnection();
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, uname);
	rs=stmt.executeQuery();
	return rs;
}
public int delete (String uname)throws SQLException{
	String sql = "DELETE  FROM userinfo WHERE USERNAME = ?";

	Connection conn=getConnection();
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, uname);
	int i= stmt.executeUpdate();
	return i;

}
public int update (String uname,String password,String gender,String phoneno,String email,String olduname)throws SQLException{
	String sql = "UPDATE USERINFO SET USERNAME = ?, password = ?, email = ?, gender = ?,phoneno = ?where username = ?;";

	Connection conn=getConnection();
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, uname);
	stmt.setString(2, password);
	stmt.setString(3, email);
	stmt.setString(4, gender);
	stmt.setString(5, phoneno);
	stmt.setString(6, olduname);
	
	int i= stmt.executeUpdate();
	return i;

}

}
