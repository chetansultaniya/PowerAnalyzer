package test;

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

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;

@WebServlet("/sendEmail")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
        String host ="smtp.gmail.com" ;
        String user = "sultanrobo88@gmail.com";
        String pass = "Chetan@88";
        String to = request.getParameter("email");
        String from = "sultanrobo88@gmail.com";
        String subject = "PowerAnalyzer:password reset";
        boolean sessionDebug = false;
        String messageText = "";
        
        try
		{
			Connection con=DbConnection.getDbConnection();
			Statement st=con.createStatement();
			
			String query="select * from user where email='"+to+"'";
			
			ResultSet rs=st.executeQuery(query);
	        if(rs.next())
	        {
	        	messageText="Dear "+rs.getString("first_name")+" "+rs.getString("last_name")+" your password is:"+rs.getString("password");
	        	Properties props = System.getProperties();

	            props.put("mail.smtp.starttls.enable", "true");
	            props.put("mail.smtp.host", host);
	            props.put("mail.smtp.port", "587");
	            props.put("mail.smtp.auth", "true");
	            props.put("mail.smtp.starttls.required", "true");

	            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
	            Session mailSession = Session.getDefaultInstance(props, null);
	            mailSession.setDebug(sessionDebug);
	            Message msg = new MimeMessage(mailSession);
	            msg.setFrom(new InternetAddress(from));
	            InternetAddress[] address = {new InternetAddress(to)};
	            msg.setRecipients(Message.RecipientType.TO, address);
	            msg.setSubject(subject); msg.setSentDate(new Date());
	            msg.setText(messageText);

	           Transport transport=mailSession.getTransport("smtp");
	           transport.connect(host, user, pass);
	           transport.sendMessage(msg, msg.getAllRecipients());
	           transport.close();
	        	RequestDispatcher rd=request.getRequestDispatcher("/views/login_page.jsp");
	        	request.setAttribute("msg", "your password is sent to your email id");
				rd.include(request,response);
	        }
	        else
	        {
	        	RequestDispatcher rd=request.getRequestDispatcher("/views/forgot_password_page.jsp");
				request.setAttribute("error_msg", "email is not registered");
				rd.include(request,response);
	        }
		}
		catch(Exception e) {
			
		}
	}

}
