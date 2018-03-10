package utils;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnection {

	public static Connection getDbConnection()
	{
		String dburl="jdbc:mysql://localhost:1010/poweranalyzer";
		String  uname="root";
		String  upass="root";
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
