package DAO;

import java.io.File;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import ENTITY.Product;


public class productDAOImp implements productDAO {
	private Connection con;
	
	@Override
	public boolean createProduct(Product p, Part part, Part part1, String uname) {
		boolean f=false;
		String im1=p.getPr_img1(),im2=p.getPr_img2();
		
	int n=0;
		try {
			 PreparedStatement stmt=con.prepareStatement("select count(*) from product");
			 
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
			int a=im1.lastIndexOf('.');
			int b=im2.lastIndexOf('.');
			im1="product"+n+"a"+im1.substring(a);
			im2="product"+n+"b"+im2.substring(b);
			PreparedStatement stmt=con.prepareStatement("insert into product(pd_id,pr_name,pr_price,pr_availability,pr_img1,pr_img2,pr_desc,category,duration,base_price) values(?,?,?,?,?,?,?,?,?,?)");
			stmt.setInt(1, n);
			stmt.setString(2,p.getPr_name());
			stmt.setDouble(3,p.getPr_price());
			stmt.setInt(4,p.getPr_availability());
			stmt.setString(5,im1);
			stmt.setString(6,im2);
			stmt.setString(7,p.getPr_desc());
			stmt.setString(8,p.getCategory());
			stmt.setString(9,p.getDuration());
			stmt.setString(10,p.getBase_price());
			int x=stmt.executeUpdate();  
			PreparedStatement st1=con.prepareStatement("insert into auction (pd_id,sell_id,auc_amt) values(?,?,?)");
			st1.setInt(1,n);
			st1.setString(2,uname);
			st1.setDouble(3,p.getPr_price());
			if (x==1) { f=true;
			String path="C:\\Users\\KD\\OneDrive\\Desktop\\bits\\bits\\src\\main\\webapp\\img";
			
			part.write(path+File.separator+im1);
			part1.write(path+File.separator+im2);
			
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
	public productDAOImp(Connection con) {
		super();
		this.con=con;
	}
	@Override
	public List<Product> getProduct() {
		List<Product>pp=new ArrayList<Product>();
		try {
			
			Statement stmt=con.createStatement();
			Product p=null;
			boolean f=false;
			ResultSet rs=stmt.executeQuery("select * from product");  
			while(rs.next()){  
				p=new Product();
				p.setPr_id(rs.getInt(1));
				p.setPr_name(rs.getString(2));
				p.setPr_price(rs.getDouble(3));
				p.setPr_availability(rs.getInt(4));
				p.setPr_img1(rs.getString(5));
				p.setPr_img2(rs.getString(6));
				p.setPr_desc(rs.getString(7));
				p.setCategory(rs.getString(8));
				p.setDuration(rs.getString(9));
				p.setBase_price(rs.getString(10));
				pp.add(p);
			}  
		
			}
			catch(Exception ex){
				System.out.print(ex);			}

		return pp;
	}
}
