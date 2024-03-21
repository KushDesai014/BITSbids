package SERVLET;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.userDAOImp;
import DB.DBConnect;
import ENTITY.User;
@WebServlet("/register")
public class RegisterSer extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try
{
String email=req.getParameter("email");
String uname=req.getParameter("uname");
String pass=req.getParameter("pass");
User u= new User();
u.setEmail(email);
u.setUsername(uname);
u.setPassword(pass);
u.setUsertype("user");
HttpSession session=req.getSession(); 
userDAOImp ob= new userDAOImp(DBConnect.getConn());
boolean x=ob.userRegister(u);
if(x)
{
	session.setAttribute("success","User Inserted");
	session.setAttribute("uname", u.getUsername());
	resp.sendRedirect("seller_add.jsp");
}
else {
	session.setAttribute("success","Invalid username or password");
	resp.sendRedirect("register.jsp");
		
}
}
catch(Exception e) {
	System.out.print(e);
}
	
}

}
