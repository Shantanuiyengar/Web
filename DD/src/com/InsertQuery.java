package com;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertQuery
 */
@WebServlet("/InsertQuery")
public class InsertQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQuery() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("Name");
		String loc = request.getParameter("location");
		String Sql = "Insert into user values('"+name+"','"+loc+"')";
		request.getSession().setAttribute("Sql", Sql);
		System.out.println("Insert Query");
		try {
			java.sql.Connection con = Connection.dbConnect();
			Statement st = con.createStatement();
			st.execute(Sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(name+"\t"+loc);
		RequestDispatcher r = request.getRequestDispatcher("/InsertQueryResult.jsp");
		r.forward(request, response);
	
	}

}
