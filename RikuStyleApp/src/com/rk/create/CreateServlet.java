package com.rk.create;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class CreateServlet
 */
@WebServlet("/gourl")
public class CreateServlet extends HttpServlet {
	private static final String Details_cost="INSERT INTO CUSTO_DETAIL VALUES(?,?,?)";
       
 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   Connection con=null;
		   PreparedStatement ps=null;
		   PrintWriter pw=null;
		   String pname,pmail,password;
		   int count=0;
		   
		   try {
			  pw=response.getWriter();
			  response.setContentType("text/html");
			  pname=request.getParameter("pname");
			  pmail=request.getParameter("pmail");
			  password=request.getParameter("pass");
			  System.out.println(pname +""+pmail+""+password);
			  con=getPooledconnection();
			  ps=con.prepareStatement(Details_cost);
			  ps.setString(1, pname);
			  ps.setString(2, pmail);
			  ps.setString(3, password);
			  count=ps.executeUpdate();
			  if(count==0) {
			    	pw.print("<h1 style='color:red'>record not inserted </h1>");
			    	 pw.print("<h1><a href='create.html'>Home</a></h1>");
			    }else {
			    	RequestDispatcher rd=request.getRequestDispatcher("create1.html");
			    	rd.forward(request, response);
			    	
			    }
		   }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    finally {
				try {
					if(ps!=null) {
						ps.close();
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}
				
				try {
					if(con!=null) {
						ps.close();
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
	        
		   
			pw.close();
			
			
	}
		   
	

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
	private Connection getPooledconnection() throws Exception {
		InitialContext ic=null;
		DataSource ds=null;
		Connection con=null;
		ic=new InitialContext();
		ds=(DataSource)ic.lookup("java:comp/env/myoracle");
		con=ds.getConnection();
		return con;
		
	}

}
