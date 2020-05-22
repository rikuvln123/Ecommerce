package com.rk.create;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/gourl")
public class CreateServlet extends HttpServlet {
	private static final String Details_cost="INSERT INTO SIGNUP_USER VALUES(?,?,?)";
       
 
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
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
			    	 pw.print("<h1><a href='signup.html'>Home</a></h1>");
			  }
		   }catch (SQLException e) {
				e.printStackTrace();
			}catch (Exception e) {
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
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=null;
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "rk", "sharma");
		return con;
	}

}
