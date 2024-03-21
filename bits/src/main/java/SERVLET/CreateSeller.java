package SERVLET;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.sellerDAOImp;
import DAO.userDAOImp;
import DB.DBConnect;
import ENTITY.Seller;
import ENTITY.User;
@WebServlet("/seller_add")
public class CreateSeller extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			HttpSession session=req.getSession(); 
			String name=(String)session.getAttribute("uname"); 
		String sname=req.getParameter("Studentname");
		String branch=req.getParameter("Branch");
		String batch=req.getParameter("Batch");
		String cnum=req.getParameter("cnum");
		String studid=req.getParameter(name);
		String hos=req.getParameter("hostel");
		Seller s=new Seller();
		s.setSell_id(0);
		s.setSellname(sname);
		s.setSell_branch(branch);
		s.setBatch(batch);
		s.setContactno(cnum);
		s.setStudent_id(studid);
		s.setStname("");
		s.setHostel(hos);
		 
		sellerDAOImp ob= new sellerDAOImp(DBConnect.getConn());
		boolean x =ob.createSeller(s,name);
		if(x)
		{
			session.setAttribute("seller","User Inserted");
			resp.sendRedirect("seller_add.jsp");
			//System.out.print("inserted");
		}
		else {
			session.setAttribute("seller","Not Inserted");
			resp.sendRedirect("seller_add.jsp");
				
		}
		}
		catch(Exception e) {
			System.out.print(e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
