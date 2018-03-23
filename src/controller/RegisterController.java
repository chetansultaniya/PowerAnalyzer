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

import utils.DbConnection;


@WebServlet("/register_user")
public class RegisterController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String baseURL=request.getScheme()+"://"+
					   request.getServerName()+":"+
					   request.getServerPort()+""+
					   request.getContextPath();
		
		String fName=request.getParameter("fName");
		String lName=request.getParameter("lName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//String cPassword=request.getParameter("cPassword");
		ResultSet rs;
		try
		{
			Connection con=DbConnection.getDbConnection();
			Statement st=con.createStatement();
			String q="select * from user where email='"+email+"'";
			rs=st.executeQuery(q);
			if(rs.next())
			{
				RequestDispatcher rd=request.getRequestDispatcher("/views/register_page.jsp");
				request.setAttribute("error_msg", "this email is already registered");
				rd.include(request,response);
			}
			else
			{
				String query="insert into user(first_name,last_name,email,password)"+
						" values('"+fName+"','"+lName+"','"+email+"','"+password+"')";
				
				int x=st.executeUpdate(query);
				if(x!=0)
				{
					RequestDispatcher rd=request.getRequestDispatcher("/views/login_page.jsp");
					request.setAttribute("msg", "Registration successfull please login");
					rd.forward(request,response);
					
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("/views/register_page.jsp");
					request.setAttribute("error_msg", "Registration failed");
					rd.include(request,response);
				}
			}
			
		}
		catch(Exception e) {
			
		}
	}

}
