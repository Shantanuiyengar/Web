<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fragement_Location</title>
</head>
<body>
<%@ page import="com.Connection" %>
<%@ page import="java.sql.*" %>
<h2>Employee Table</h2>
<Table Border=3>
<tr>
<td><b>Employee Name</b></td>
<td><b>Project_Location</b></td>
<td><b>Department</b></td>
<td><b>Salary</b></td>
</tr>
<%
java.sql.Connection con = Connection.dbConnect();
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from employee";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td><td>
	<%
	out.println(rs.getString(3));%></td><td>
	<%
	out.println(rs.getString(4));%></td>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
%>
</tr>
</Table>

<h2>Location_Fragment_1 - < 1,00,000</h2>
<Table Border=3>
<tr>
<td><b>Employee Name</b></td>
<td><b>Project_Location</b></td>
<td><b>Department</b></td>
<td><b>Salary</b></td>
</tr>
<%
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from salfrag1";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td><td>
	<%
	out.println(rs.getString(3));%></td><td>
	<%
	out.println(rs.getString(4));%></td>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
%>
</tr>
</Table>

<h2>Location_Fragment_2 - Salary >= 1,00,000</h2>
<Table Border=3>
<tr>
<td><b>Employee Name</b></td>
<td><b>Project_Location</b></td>
<td><b>Department</b></td>
<td><b>Salary</b></td>
</tr>
<%
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from salfrag2";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td><td>
	<%
	out.println(rs.getString(3));%></td><td>
	<%
	out.println(rs.getString(4));%></td>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
con.close();
%>
</tr>
</Table>
</body>
</html>