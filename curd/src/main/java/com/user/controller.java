package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;


@WebServlet("/controller")
public class controller extends HttpServlet {
	
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		userDAO userDao=new userDAO();
		String action=request.getParameter("action");
		
		HttpSession session =request.getSession();

		    
		if(action.equals("register")) {
			String uname=request.getParameter("username");
			String password=request.getParameter("password");
			String gender=request.getParameter("gender");
			String phoneno=request.getParameter("phoneno");
			String email=request.getParameter("email");
			
			int i;
			try {
				i = userDao.register(uname, password, gender, phoneno, email);
				if(i>0) {
					response.sendRedirect("login.jsp");
				}
				else {
					response.sendRedirect("error.jsp");
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			

		}
		
		
		
		if(action.equals("login")) {
			String uname=request.getParameter("username");
			String password=request.getParameter("password");
			
			try {
				
				if(userDao.login(uname, password)) {
					session.setAttribute("username", uname);
					response.sendRedirect("home.jsp");
				}
				else {
					response.sendRedirect("login.jsp");
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		
			
			

		}
		if(action.equals("updatepassword")) {
			String uname=request.getParameter("username");
			String newpassword=request.getParameter("newpassword");

			int i;
			try {
				i = userDao.update(uname,newpassword);
				if(i>0) {
					response.sendRedirect("error.jsp");
				}
				else {
					response.sendRedirect("login.jsp");
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			

		}
		if(action.equals("delete")) {
			String uname=(String)session.getAttribute("username");
			int i;
			try {
				i = userDao.delete(uname);
				if(i>0) {
					response.sendRedirect("register.jsp");
				}
				else {
					response.sendRedirect("error.jsp");
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		if(action.equals("update")) {
			String olduname=(String)session.getAttribute("username");
			String uname=request.getParameter("username");
			String password=request.getParameter("password");
			String gender=request.getParameter("gender");
			String phoneno=request.getParameter("phoneno");
			String email=request.getParameter("email");
			
			int i;
			try {
				i = userDao.update(uname,password, gender, phoneno, email,olduname);
				
				if(i>0) {

					response.sendRedirect("login.jsp");
				}
				else {
					response.sendRedirect("refresh.jsp");
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}


			
		}


		
	}


