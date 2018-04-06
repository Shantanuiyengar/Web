package com;

import java.sql.DriverManager;


public class Connection {
	public static java.sql.Connection dbConnect() throws Exception {
		String Driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/default";
		String user = "root";
		String password = "@Bcd1234";
		java.sql.Connection con;
		Class.forName(Driver);
		con = (java.sql.Connection)DriverManager.getConnection(url, user, password);
		if (con != null)
			System.out.println("DB CONNECTED");
		return con;
	}
}
