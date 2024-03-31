package com.VehicleShowroom;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Vsignup")
public class Customerdetails extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstname = req.getParameter("fname");
		String lastname = req.getParameter("lname");
		String email = req.getParameter("email");
		String mobileno = req.getParameter("mobile");
		String username = req.getParameter("uname");
		String pass = req.getParameter("pass");
		
		PrintWriter out = resp.getWriter();
		resp.sendRedirect("signSuccess.jsp");
		
		
		String fqcn = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306?user=root&password=root";
		String qrl = "insert into vehicleshowroom.register values(?,?,?,?,?,?)";
		
		try {
			Class.forName(fqcn);
			System.out.println("step 1 done");
			Connection con = DriverManager.getConnection(url);
			System.out.println("step 2 done");
			PreparedStatement pstmt = con.prepareStatement(qrl);
			System.out.println("step 3 done");
			pstmt.setString(1,firstname);
			pstmt.setString(2,lastname);
			pstmt.setString(3,email);
			pstmt.setString(4,mobileno);
			pstmt.setString(5,username);
			pstmt.setString(6,pass);
			
			
			pstmt.executeUpdate();
			System.out.println("Done.....");
		} catch (Exception e) {  
			e.printStackTrace();
		}
		
	}
}
