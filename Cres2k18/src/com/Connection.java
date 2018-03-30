package com;

import java.sql.DriverManager;

public class Connection {
	public static java.sql.Connection dbConnect() throws Exception {
		String Driver = "com.mysql.jdbc.Driver";
		String DB_URL = "";
	    String user = "";
	    String pass = "";
		java.sql.Connection con;
		Class.forName(Driver);
		con = (java.sql.Connection)DriverManager.getConnection(DB_URL, user, pass);
		if (con != null)
			System.out.println("DB CONNECTED");
		return con;
	}
}
