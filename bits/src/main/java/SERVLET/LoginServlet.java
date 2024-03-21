package SERVLET;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.userDAOImp;
import DB.DBConnect;
import ENTITY.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session=req.getSession();
			String uname=req.getParameter("uname");
			String pass=req.getParameter("pass");
			User u= new User();
		
			userDAOImp ob= new userDAOImp(DBConnect.getConn());
			u=ob.userLogin(uname, pass);
			if(u!=null)
			{
				session.setAttribute("uname", u.getUsername());
				resp.sendRedirect("mainpage.jsp");
			}
			else
			{
				session.setAttribute("uname", "invalid User");
				resp.sendRedirect("index.jsp");
			}
			
		}
		catch(Exception ex)
		{
			
		}
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}
}
