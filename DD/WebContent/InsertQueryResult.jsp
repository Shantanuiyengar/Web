<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
<div align=center>
<h2>
<% out.println("Insert into user values ('"+request.getParameter("Name")+"','"+request.getParameter("location")+"')");
%></h2>
<h2>
Table: user
</h2>
<%@ page import="com.Connection" %>
<%@ page import="java.sql.*" %><Table Border=2>
<tr><td><b>User</b></td><td><b>Location</b></td></tr>

<%
java.sql.Connection con = Connection.dbConnect();
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from user";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td></tr>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
%>
</Table>
<h2>
Table: userfrag1 (Location = Mumbai)
</h2>
<Table Border=2>
<tr><td><b>User</b></td><td><b>Location</b></td></tr>

<%
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from userfrag1";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td></tr>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
%>
</Table>
<h2>
Table: userfrag2 (Location = Delhi)
</h2>
<Table Border=2>
<tr><td><b>User</b></td><td><b>Location</b></td></tr>

<%
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from userfrag2";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td></tr>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
%>
<%con.close(); %>
</Table>
</div>
</body>
</html>