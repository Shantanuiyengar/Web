package com.servlet;

import java.beans.Statement;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Connection;

/**
 * Servlet implementation class AddEmp
 */
@WebServlet("/AddEmp")
public class AddEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String dept = request.getParameter("dept");
		String loc = request.getParameter("location");
		String sal = request.getParameter("salary");
		if(dept.equals("Comps"))
			dept="Computer Science";
		else
			dept="Production";
		String SQL = "Insert into employee values('"+name+"','"+loc+"','"+dept+"','"+sal+"')";
		System.out.println(SQL);
		try{
			java.sql.Connection con = Connection.dbConnect();
			java.sql.Statement st = con.createStatement();
			st.execute(SQL);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher r = request.getRequestDispatcher("/index.jsp");
		r.forward(request, response);
	
	
	}

}
