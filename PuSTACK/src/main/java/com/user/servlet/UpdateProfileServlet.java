package com.user.servlet;

import java.io.IOException;
import java.util.Enumeration;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/profile_update")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			
			User us=new User();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			
			
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
			HttpSession session=req.getSession();
			boolean f=dao.checkPassword(id, password);
			if(f) {
				boolean	f2=dao.updateProfile(us);
				 
				if(f2) {
//					System.out.println("user register successful");
					session.setAttribute("succMsg", "Updated successful");
					resp.sendRedirect("edit_profile.jsp");
				}
				else{
//					System.out.println("denied");
					session.setAttribute("failedMsg", "something went wrong on server..");
					resp.sendRedirect("edit_profile.jsp");
				}
			}
			else {
				session.setAttribute("failedMsg", "please check your password");
				resp.sendRedirect("edit_profile.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
