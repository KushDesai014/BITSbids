package SERVLET;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.productDAOImp;
import DB.DBConnect;
import ENTITY.Product;
@WebServlet("/product_add")
@MultipartConfig
public class CreateProduct extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		String prname=req.getParameter("pname");
		double pprice=Double.parseDouble(req.getParameter("price"));  
		String avail=req.getParameter("ava"); 
		Part part=req.getPart("img1");
		String img1= part.getSubmittedFileName();
		Part part1=req.getPart("img2");
		String img2= part1.getSubmittedFileName();
		String desc=req.getParameter("desc");
		String cate = req.getParameter("cat");
		String dura=req.getParameter("duration");
		String bp=req.getParameter("price");
		Product p= new Product();
		p.setPr_id(0);
		p.setPr_name(prname);
		p.setPr_price(pprice);
		if(avail.equals("YES"))
			p.setPr_availability(1);
		else
			p.setPr_availability(0);
		p.setPr_img1(img1);
		p.setPr_img2(img2);
		p.setPr_desc(desc);
		p.setCategory(cate);
		p.setDuration(dura);
		p.setBase_price(bp);
		HttpSession session=req.getSession(); 
		String n=(String)session.getAttribute("uname");
		productDAOImp ob= new productDAOImp(DBConnect.getConn());
		boolean x=ob.createProduct(p,part,part1,n);
		if(x)
		{
			session.setAttribute("product","Product Inserted");
			resp.sendRedirect("product_add.jsp");
			//System.out.print("inserted");
		}
		else {
			session.setAttribute("product","Not Inserted");
			resp.sendRedirect("product_add.jsp");
			}
			
		
		}
		catch(Exception ex) {
			System.out.print(ex);
		}

	}

}
