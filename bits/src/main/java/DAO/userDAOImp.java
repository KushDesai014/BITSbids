package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import ENTITY.User;

public class userDAOImp implements userDAO{
	private Connection con;
	public boolean userRegister(User u)
	{
		boolean f=false;
		
		try {
			PreparedStatement stmt=con.prepareStatement("insert into login values(?,?,?,?)");
			stmt.setString(1,u.getUsername());
			stmt.setString(2,u.getPassword());
			stmt.setString(3,"user");
			stmt.setString(4,u.getEmail());
			int n=stmt.executeUpdate();  
			if (n==1) { f=true;
				System.out.println("Inserted");
			}
			}
			catch(Exception ex){
			
			System.out.println("Unable to connect to database."+ex);
			}
		    return f;
	    
	}
 public User userLogin(String uname, String pass)
 {
	 User u = new User();
	 try {
		 PreparedStatement stmt=con.prepareStatement("select * from login where username=? and password=?");
		 stmt.setString(1,uname);
		 stmt.setString(2,pass);
		 ResultSet rs=stmt.executeQuery();  
		 if(rs.next()){  
		 	u.setUsername(uname);
		 	u.setPassword(pass);
		 	u.setUsertype("user");
		 } 
		 else 
			 u=null;
			}
			catch(Exception ex){
			
			System.out.println("Unable to connect to database."+ex);
			}
	 
	 return u;
	 
 }
	public userDAOImp(Connection con) {
		super();
		this.con=con;
	}
}
