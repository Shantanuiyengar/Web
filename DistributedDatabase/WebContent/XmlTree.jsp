<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>XML TREE</title>
</head>
<body>
<%@ page import="com.Connection" %>
<%@ page import="java.sql.*" %>
<textarea style="border:none;width:100%;" rows="1000000" >
<%
java.sql.Connection con = Connection.dbConnect();
out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
out.println("<?xml-stylesheet type=\"text/css\" href=\"cd_catalog.css\"?>");
out.println("<Employees>");
try 
{
	java.sql.PreparedStatement st = null;
	ResultSet rs = null;
	String sql = "Select * from employee";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	while(rs.next())
	{
		out.println("\t<Employee>");
			out.println("\t\t<Name>"+rs.getString(1)+"</Name>");
			out.println("\t\t<Location>"+rs.getString(2)+"</Location>");
			out.println("\t\t<Department>"+rs.getString(3)+"</Department>");
			out.println("\t\t<Salary>"+rs.getString(4)+"</Salary>");
		out.println("\t</Employee>");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
out.println("</Employees>");
con.close();
%>
</textarea>
</body>
</html>