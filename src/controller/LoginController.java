package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.DbConnection;

@WebServlet("/login_user")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String rememberPassword=request.getParameter("rememberPassword");// null on
		
		try
		{
			Connection con=DbConnection.getDbConnection();
			Statement st=con.createStatement();
			
			String query="select * from user where email='"+email+"' and password='"+password+"'";
			
			 ResultSet rs=st.executeQuery(query);
		        if(rs.next())
		        {
		        	HttpSession session=request.getSession();
		        	session.setAttribute("first_name",rs.getString("first_name"));
		        	RequestDispatcher rd=request.getRequestDispatcher("/views/index.jsp");
					rd.forward(request,response);
		        }
		        else
		        {
		        	RequestDispatcher rd=request.getRequestDispatcher("/views/login_page.jsp");
					request.setAttribute("error_msg", "Login failed");
					rd.include(request,response);
		        }
		}
		catch(Exception e) {
			
		}
	}

}
