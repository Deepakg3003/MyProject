<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Showroom</title>

<style>
    *{
       margin: 0;
       padding: 0;
       box-sizing: border-box;

    }
     
        body{
      
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: url("image/homeimg.jpg") no-repeat;
        background-size: cover;
        background-position: center;
    }  
       nav{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 50px;
        box-sizing: border-box;
        background-color: lime;
        display: flex;
        border-bottom: 2px solid black;
       }
 
 	.div1{
       border : 2px solid blue;
       background-color: yellow;
       height: 60px;
       width: 700px;
       color: red;
       padding-left: 5px;
       padding-top: 5px;
       font-size: 40px;
       } 
 
        .img{
        height: 30px;
        width: 38px;
        margin-left: 20px;
        margin-top: 10px;
       }

       .title{
        
        margin-top: 15px;
        font-size: 20px;
       }

       .button1{
        margin-left: 930px;
        margin-top: 5px;
        height: 40px;
        width: 100px;
        color: red;
        border-radius: 10px;
       }
	
	.button1{
        margin-left: 930px;
        margin-top: 5px;
        height: 40px;
        width: 100px;
        color: red;
        border-radius: 10px;
       }
          
      h1{
      color:white;
      margin-top: 100px
      }
      
      .c1{
        height: 500px;
        width: 500px;
        background-color: white;
        border: 2px solid black;
        margin-left: 400px;
        margin-top: 70px;
        padding-top: 50px;
        padding-left: 50px;
       }

		.c2{
		 height: 200px;
        width: 500px;
        background-color: white;
        border: 2px solid black;
        margin-left: 400px;
        margin-top: 150px;
        padding-top: 50px;
        padding-left: 50px;
		}
		
       .d1{
        font-size: 30px;
        padding-top: 5px;
       color: blue;
       }
      
       
       .d2{
        color: green;
       }
      
      .d3{
      color: black;
      }
    </style> 
</head>
<body >
  <header>
    <nav class="nav">
        <img  class="img  " src="image/car.png" alt="">
        <div class="title">Vehicle Showroom</div>
      
         <form action="login" method="Post">
             <button class="button1" name="">Login</button>
        </form>
       </div>
    </nav>
</header> 

<%
String firstname =request.getParameter("fname");
String lastname = request.getParameter("lname");
String email = request.getParameter("email");
String mobileno = request.getParameter("mobile");
String username = request.getParameter("uname");
String pass = request.getParameter("pass");




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
	System.out.println("go to handle Exception");
}

String frl = "select * from vehicleshowroom.register Where Rusername=?";

try {
	Class.forName(fqcn);
	System.out.println("step 1 done");
	Connection con1 = DriverManager.getConnection(url);
	System.out.println("step 2 done");
	PreparedStatement pstmt1 = con1.prepareStatement(frl);
	System.out.println("step 3 done");
	pstmt1.setString(1,username);
	
	
	
	ResultSet rs = pstmt1.executeQuery();
	System.out.println("Done.....");
	
	  if(rs.next())
	    {
	    	String fname = rs.getString(1);
	    	String last = rs.getString(2);
	    	String email1 = rs.getString(3);
	    	String mobile = rs.getString(4);
	    	String uname = rs.getString(5);
	    	String password = rs.getString(6);
	    	
	    	out.println("<html>" 
					+ "<body bgcolor = 'Orange'>" +"<div class='c1'><div class='d1 d3'>Customer Details: </div><br>  <div class='d1'>First Name: "+fname+ "</div>"
					+"<div class='d1'>Last Name: "+last + "</div><div class='d1'>Email: "+ email1
					+ "</div><div class='d1'>Mobile No:"+  mobile + "<div class='d1'>Username: "+uname + " </div>"
					+ "<div class='d1'>password: "+password +"</div><br><br><div class='d1 d2'>Registered Successfull!!!</div></div>"+"</body></html>");
	    }
	  
	    else{
	    	
	    	out.println("<html><body><div class='div1'>Registered not Successfull!!!</div><br></body></html>" );
	    }
} catch (Exception e) {  
	System.out.println("go to handle Exception");
}
%>

</body>
</html>