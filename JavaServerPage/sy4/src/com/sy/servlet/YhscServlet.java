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
@WebServlet("/YhscServlet")
public class YhscServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		try {
		String username =  request.getParameter("username");
		String sql = "delete from users where username='"+username+"'";
		DbBean myDbBean = new DbBean();
		myDbBean.getConnection();
	    int n = myDbBean.executeNoQuery(sql);
	    if (n>0){
	    	response.sendRedirect("users.jsp");
	    }
	    else {
	       	out.print("用户信息删除失败！");
	    } 
	    myDbBean.close();
		} 
		catch (Exception e) {
			out.print(e.toString());			
		}
	}
}
