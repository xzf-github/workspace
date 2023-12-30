package com.sy.servlet;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import com.sy.bean.DbBean;
public class LoginServletByDB extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		response.setCharacterEncoding("gbk");
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		try {
			String username = null ;
			String password = null ;
			HttpSession session = null ;
			session = request.getSession(true);
			username = request.getParameter("username");			
			password = request.getParameter("password");
			String sql="select * from users where UserName='"+username+"' and password='"+password+ "'";  
			DbBean myDbBean=new DbBean();
			myDbBean.getConnection();
			ResultSet rs= myDbBean.executeQuery(sql);
			if(rs.next()){
				//方法1
				session.setAttribute("username", username);        	   
				response.sendRedirect("welcome.jsp");
				//方法2
				//RequestDispatcher dispatcher=request.getRequestDispatcher("welcome.jsp");   
				//dispatcher.forward(request, response); 
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