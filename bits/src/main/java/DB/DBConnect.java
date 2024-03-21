package DB;
import java.sql.*;
import java.io.*;
public class DBConnect {

	private static Connection con;
	public static Connection getConn()
	{
		try {
			 String connectionURL = "jdbc:mysql://localhost:3306/bits_bids"; 
			 Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
			 con = DriverManager.getConnection(connectionURL, "root", "root");
}
			catch(Exception ex){
			
			System.out.println("Unable to connect to database."+ex);
			}
		return con;
	}
}
