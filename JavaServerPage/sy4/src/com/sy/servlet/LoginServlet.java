package com.sy.servlet;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import com.sy.bean.DbBean;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		try {
			String username = null ;
			String password = null ;
			HttpSession session = null ;
			session = request.getSession(true);
			username = request.getParameter("username");			
			password = request.getParameter("password");
			String sql="select * from users where userName='"+username+"' and password='"+password+ "'";  
			DbBean myDbBean=new DbBean();
			myDbBean.getConnection();
			ResultSet rs= myDbBean.executeQuery(sql);
			if(rs.next()){
				session.setAttribute("username", username);        	   
				response.sendRedirect("welcome.jsp");
			}else{
				response.sendRedirect("error.jsp");
			} 
			rs.close();
			myDbBean.close();          
		}
		catch(SQLException e)
		{
			out.println(e.getMessage());
		}
	}
}
