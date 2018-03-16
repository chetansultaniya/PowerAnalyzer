package utils;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnection {

	public static Connection getDbConnection()
	{
		String dburl="jdbc:mysql://localhost:3306/poweranalyzer";
		String  uname="root";
		String  upass="7869";
	        try
	        {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection myConnection=DriverManager.getConnection(dburl,uname,upass);
	             return myConnection;
	        }
	        catch(Exception ex)
	        {
	            System.err.println(ex);
	        }
	       return null; 
	}
}
