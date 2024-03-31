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
        height: 400px;
        width: 500px;
        background-color: white;
        border: 2px solid black;
        margin-left: 400px;
        margin-top: 150px;
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
      
    </style> 

</head>
<body>

 <header>
    <nav class="nav">
        <img  class="img  " src="image/car.png" alt="">
        <div class="title">Vehicle Showroom</div>
      
         <form action="login" method="Post">
             <button class="button1" name="">Logout</button>
        </form>
       </div>
    </nav>
</header> 

<%
String sid = request.getParameter("id");
System.out.println(sid);
int id = Integer.parseInt(sid);

System.out.println(id);

String fqcn = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306?user=root&password=root";
String Dql = "select * from vehicleshowroom.car Where Cid=?";


Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Class.forName(fqcn);
	System.out.println("step 1 :Driver class loaded and registered");

	con = DriverManager.getConnection(url);
	System.out.println("step 2 :Connection established");
	
	pstmt = con.prepareStatement(Dql);
	pstmt.setInt(1, id);
	System.out.println("step 3 :Platform created");
	
	
    rs = pstmt.executeQuery();
    System.out.println("step4");
    System.out.println("Resultset is success");
    if(rs.next())
    {
    	int id1 = rs.getInt(1);
    	String name = rs.getString(2);
    	String model = rs.getString(3);
    	String price = rs.getString(4);
    	
    	
    	out.println("<html>" 
				+ "<body bgcolor = 'Orange'>" +"<div class='c1'><div class='d1'>Car Details: </div><br>  <div class='d1'>Car Id: "+id1+ "</div>"
				+"<div class='d1'>Car Name: "+name + "</div><div class='d1'>Car Model: "+ model
				+ "</div><div class='d1'>Car price:"+ price +" Rs</div><br><br>"
				+ "<div class='d1 d2'>Buyed this car, Successfull!!!</div></div>"+"</body></html>");
    }
  
    else{
    	
    	out.println("<html>" 
				+ "<body bgcolor = 'Orange'>" +"<div class='c2'><div class='d1'>Car Details: </div><br><div class='d1'>Car Id: Id "+id+ " is invalid details</div>"+"<br></body></html>" );
    }
    
}catch(Exception e)
{
	System.out.println("go for developer");
}

String did = request.getParameter("id");
System.out.println(did);
int id2 = Integer.parseInt(did);

String Dquery = "Delete from vehicleshowroom.car Where Cid=?";

try {
	Class.forName(fqcn);
	System.out.println("step 1 :Driver class loaded and registered");

	con = DriverManager.getConnection(url);
	System.out.println("step 2 :Connection established");
	
	pstmt = con.prepareStatement(Dquery);
	pstmt.setInt(1, id2);
	System.out.println("step 3 :Platform created");
	
	
    pstmt.executeUpdate();
   
    System.out.println("Resultset is success");
   
}catch(Exception e)
{
	System.out.println("go for developer");
}

%>

</body>
</html>