<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<style>
.dropbtn {
    background-color: #4CAF50;
    border: 3px solid #000000;
    padding: 5px;
    color: #ffffff;
    font-size: 24px;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 5px 12px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
/* Set a style for all buttons */
button {
   border: 3px solid #000000;
   background: #28c7b2;
   background: -webkit-gradient(linear, left top, left bottom, from(#b3cbdb), to(#28c7b2));
   background: -webkit-linear-gradient(top, #b3cbdb, #28c7b2);
   background: -moz-linear-gradient(top, #b3cbdb, #28c7b2);
   background: -ms-linear-gradient(top, #b3cbdb, #28c7b2);
   background: -o-linear-gradient(top, #b3cbdb, #28c7b2);
   background-image: -ms-linear-gradient(top, #b3cbdb 0%, #28c7b2 100%);
   padding: 5px 12px;
   -webkit-border-radius: 16px;
   -moz-border-radius: 16px;
   border-radius: 16px;
   -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #009dff 0 1px 0;
   color: #ffffff;
   font-size: 24px;
   font-family: helvetica, serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border: 3px solid #5fa1c7;
   text-shadow: #99b5c7 0 1px 0;
   background: #3e779d;
   background: -webkit-gradient(linear, left top, left bottom, from(#080b0d), to(#3e779d));
   background: -webkit-linear-gradient(top, #080b0d, #3e779d);
   background: -moz-linear-gradient(top, #080b0d, #3e779d);
   background: -ms-linear-gradient(top, #080b0d, #3e779d);
   background: -o-linear-gradient(top, #080b0d, #3e779d);
   background-image: -ms-linear-gradient(top, #080b0d 0%, #3e779d 100%);
   color: #ff14ff;
   }
.button:active {
   text-shadow: #ff00ff 0 1px 0;
   border: 3px solid #000000;
   background: #fafafa;
   background: -webkit-gradient(linear, left top, left bottom, from(#ff0000), to(#3e779d));
   background: -webkit-linear-gradient(top, #ff0000, #fafafa);
   background: -moz-linear-gradient(top, #ff0000, #fafafa);
   background: -ms-linear-gradient(top, #ff0000, #fafafa);
   background: -o-linear-gradient(top, #ff0000, #fafafa);
   background-image: -ms-linear-gradient(top, #ff0000 0%, #fafafa 100%);
   color: #fff;
   }
.container {
    padding: 16px;
}

span.psw {
    float: center;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 50%; /* Full width */
    height: 50%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}


</style>
<body>

<div align=center>
<%@ page import="com.Connection" %>
<%@ page import="java.sql.*" %>
<form>
<button type="submit" formaction="AddEmployee.jsp">Add Employee</button>
<div class="dropdown">
  <button class="dropbtn">Fragmentation</button>
  <div class="dropdown-content">
    <a href="http://localhost:8080/DistributedDatabase/Fragmentation1.jsp">Project_Location</a>
    <a href="http://localhost:8080/DistributedDatabase/Fragmentation2.jsp">Department</a>
    <a href="http://localhost:8080/DistributedDatabase/Fragmentation3.jsp">Salary</a>
  </div>
</div>
<button type="submit" formaction="XmlTree.jsp">XMLTree</button>
</form>
<p>
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
con.close();
%>
</tr>
</Table>
</div>
</body>
</html>