package com.user.servlet;

import java.io.IOException;


import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			UserDAOImpl dao =new UserDAOImpl(DBConnect.getConn());
			HttpSession session = req.getSession();
			
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				session.setAttribute("userObj","us");
				resp.sendRedirect("admin/home.jsp");
			}
			else {
				User us=dao.login(email, password);
				if(us!=null) {
					session.setAttribute("userObj","us");
					resp.sendRedirect("home.jsp");
				}
				else {
					session.setAttribute("failedMsg","Invalid username or password");
					resp.sendRedirect("Login.jsp");
				}
				resp.sendRedirect("home.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
		
}