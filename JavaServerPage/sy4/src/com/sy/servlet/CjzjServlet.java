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
@WebServlet("/CjzjServlet")
public class CjzjServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		try {
			
		String id =  request.getParameter("id");
		String name =  request.getParameter("name");
		String classid =  request.getParameter("classid");
		String Chinese =  request.getParameter("Chinese");
		String Math =  request.getParameter("Math");
		String English =  request.getParameter("English");
		String Sum = ""+(Double.parseDouble(Chinese)+ Double.parseDouble(Math)+ Double.parseDouble(English));
		String sql = "insert into score";
		sql=sql+" values('"+id+"','"+name+"','"+classid+"','"+Chinese+"','"+Math+"'";
		sql=sql+","+English+","+Sum+")";
		DbBean myDbBean = new DbBean();
		myDbBean.getConnection();
	    int n = myDbBean.executeNoQuery(sql);
	    if (n>0){
	    	response.sendRedirect("score.jsp");
	    }
	    else {
	       	out.print("学生记录增加失败！");
	    } 
	    myDbBean.close();
		} 
		catch (Exception e) {
			out.print(e.toString());			
		}
	}
}
