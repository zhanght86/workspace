package swu.edu.cn.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import swu.edu.cn.sql.*;

public class Filter extends HttpServlet {



	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Filter() {
		super();
	}


	public void destroy() {
		super.destroy(); 
	
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName=request.getParameter("txtUserName");
		String password=request.getParameter("txtUserPassword");
		String radio=request.getParameter("radio");
		
		String target = null;				//跳转的目标页的地址


		System.out.println(userName);
		System.out.println(password);
		System.out.println(radio);
		
		RequestDispatcher dispatcher=null;
		
	
		UserManagement userManager=new UserManagement();
		userManager.OpenDB();
		
		if(radio.equals("department")){			//部门用户
			System.out.println("这是一个部门用户");
			
			String department=userManager.isDepartmentUserExist(userName,password);
			System.out.println(department);
				
				if(department!=null){		//该部门用户存在
					
					request.setAttribute("userName",userName);
					request.setAttribute("department",department);
					
					target="/department.jsp";
				}else{
					System.out.println("该用户不存在");
					target="/error.jsp";
				}
		
			
		}else{											//领导用户
			System.out.println("这是一个领导用户");
			String officialPosition=userManager.isSeparateLeaderExist(userName,password);
			System.out.println(officialPosition);
			request.setAttribute("officialPosition",officialPosition);
				
			if(officialPosition!=null){
				if(officialPosition.equals("zuzhibu"))				//组织部用户
					target="/organization.jsp";
				
				else if(officialPosition.equals("duchashi"))			//督查室用户
					target="/superintend.jsp";
				
				else if(officialPosition.equals("qufenguan"))				//区分管用户
					target="/leadingManager.jsp";
				
			}else{
				target="/error.jsp";									//错误用户
			}					
			
		}
		
		userManager.CloseDB();
		dispatcher = request.getRequestDispatcher(target);  //跳转到目标页面
		dispatcher.forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName="donghai";
		String password="123456";
		String department="department";
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println(userName);
		out.println(password);
		out.println(department);
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();

		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
