package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ENTITY.Product;
import ENTITY.Seller;

public class sellerDAOImp implements sellerDAO{
	private Connection con;
public boolean createSeller(Seller s,String uname)
{
	boolean f=false;
	int n=0;
	try {
		 PreparedStatement stmt=con.prepareStatement("select count(*) from seller");
		 
		 ResultSet rs=stmt.executeQuery();  
		 if(rs.next()){  
		 	n=rs.getInt(1)+1;
		 } 
		 else 
			 n=1;
			}
			catch(Exception ex){
			
			System.out.println("Unable to connect to database."+ex);
			}
	try {
		String st="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		
		String nst=""+st.charAt((int)(Math.random()*12))+(n*7)+st.charAt((int)(Math.random()*26))+st.charAt((int)(Math.random()*23));
		PreparedStatement stmt=con.prepareStatement("insert into seller(sell_id,sell_name,sell_branch,batch,contactno,student_id,stname,hostel) values(?,?,?,?,?,?,?,?)");
		stmt.setInt(1, n);
		stmt.setString(2,s.getSellname());
		stmt.setString(3,s.getSell_branch());
		stmt.setString(4,s.getBatch());
		stmt.setString(5,s.getContactno());
		stmt.setString(6,uname);
		stmt.setString(7,nst);
		stmt.setString(8,s.getHostel());
		
		int x=stmt.executeUpdate();  
	
		if (x==1) { f=true;
			System.out.println("Inserted");
		}
		else
			System.out.print("jjj");
		}
		catch(Exception ex){
		
		System.out.println("Unable to connect to database."+ex);
		}
	return f;
}
public sellerDAOImp(Connection con) {
	super();
	this.con=con;
}
public List<Seller> getSeller(String name) {
	List<Seller>pp=new ArrayList<Seller>();
	try {
		
		Statement stmt=con.createStatement();
		Seller s=null;
		boolean f=false;
		ResultSet rs=stmt.executeQuery("select * from seller where student_id = '"+name+"'");  
		while(rs.next()){  
			s=new Seller();
			s.setSell_id(rs.getInt(1));
			s.setSellname(rs.getString(2));
			s.setSell_branch(rs.getString(3));
			s.setBatch(rs.getString(4));
			s.setHostel(rs.getString(8));
			s.setContactno(rs.getString(5));
			pp.add(s);
		}  
	
		}
		catch(Exception ex){
			System.out.print(ex);			}

	return pp;
}
}
