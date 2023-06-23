package com.user.servlet;

import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete_old_book")
public class DeleteOldBook extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			int bid=Integer.parseInt(req.getParameter("bid"));
			
			BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
			
			boolean f=dao.oldDeleteBook(email, bid);
			
			HttpSession session=req.getSession();
			if(f) {
//				System.out.println("user register successful");
				session.setAttribute("succMsg", "Book Removed");
				resp.sendRedirect("old_book.jsp");
			}
			else{
//				System.out.println("denied");
				session.setAttribute("failedMsg", "something went wrong on server..");
				resp.sendRedirect("old_book.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
