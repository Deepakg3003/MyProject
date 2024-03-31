package com.VehicleShowroom;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Vlogin")
public class Login extends HttpServlet{
		
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String name = req.getParameter("uname");
			String pass = req.getParameter("pass");
			
			PrintWriter out = resp.getWriter();
			
			String fqcn ="com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306?user=root&password=root";
			String qry = "select * from vehicleshowroom.register where Rusername = ? and Rpassword=?";
			
			try {
				Class.forName(fqcn);
				System.out.println("step 1 done");
				Connection con = DriverManager.getConnection(url);
				System.out.println("step 2 done");
				PreparedStatement pstmt = con.prepareStatement(qry);
				System.out.println("step 3 done");
				pstmt.setString(1,name);
				pstmt.setString(2,pass);
				
				ResultSet  rs = pstmt.executeQuery();
				System.out.println("Done.....");
				
				if(rs.next())
		    	{
		    		
		    		String username = rs.getString("Rusername");
		    		String password = rs.getString("Rpassword");
		    	
		    		
		    		if(password.equals(pass) && username.equals(name))
		    		{ //next page   --->  forward()
		    			
		    			RequestDispatcher rd = req.getRequestDispatcher("HomeVehicle.jsp");
		    			rd.forward(req, resp);
		    			
		    		}else
		    		{ // index.html
		    			
		    			RequestDispatcher rd = req.getRequestDispatcher("Wronglogin.jsp");
		    			rd.include(req, resp);
		    		}
		    	}
		    else
		    {
		    	resp.sendRedirect("Wronglogin.jsp");
		    }
			} catch (Exception e) {  
				e.printStackTrace();
			}
			
			
		}
}
