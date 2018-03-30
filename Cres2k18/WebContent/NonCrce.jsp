<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="5" >
<title>Non Crce</title>
</head>
<body>
<%@ page import="com.Connection" %>
<h2>REPORT</h2>
<%@ page import="java.sql.*" %><Table Border=2>
<tr>
<td>USER</td>
<td>NAME</td>
<td>COLLEGE NAME</td>
<td>PHONE</td>
<td>YEAR</td>
<td>BRANCH</td>
</tr>

<%
String uname = (String)request.getSession().getAttribute("uname");
java.sql.Connection con = Connection.dbConnect();
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM NONCRCEDATA;";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while (rs.next()) 
	{%><tr><td><%
	out.println(rs.getString(4));%></td><td>
	<%
	out.println(rs.getString(1));%></td><td>
	<%
	out.println(rs.getString(2));%></td><td>
	<%
	out.println(rs.getString(3));%></td><td>
	<%
	out.println(rs.getString(6));%></td><td>
	<%
	out.println(rs.getString(7));%></td></tr>
	<%
	}
} catch (SQLException e) {
e.printStackTrace();
}
%>
</Table>
</body>
</html>