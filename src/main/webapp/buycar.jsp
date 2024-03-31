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
     
    .b1{
      
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

       

      
      
        .fm{
       margin-left: 450px;
       margin-top: 20px;
       font-size: 25px;
       
       }
     
   .inbut{
   background-color: green;
   margin-left: 100px;
   height: 30px;
   width:80px;
   font-size: 20px;
   color: white;
   }
        
     .txt{
     height: 40px;
     width:200px;
     }     
      
      .div1{
      background-color: cyan;
      height: 150px;
      width: 400px;
      border: 2px solid black;
      padding: 20px;
      }       
      
       .c1{
      border: 2px solid black;
      height: 150px;
      width: 400px;
      background-color: white;
      margin-left: 450px;
      margin-top: 50px;
      padding-left: 70px;
      padding-top: 5px;
      }
      
      .d1{
      font-size: 30px;
      color: blue;
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

//JDBC code after println()

String fqcn ="com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306?user=root&password=root";
String qry = "select * from vehicleshowroom.car";

Class.forName(fqcn);
System.out.println("step 1 done");

Connection con = DriverManager.getConnection(url);
System.out.println("step 2 done");

PreparedStatement pstmt = con.prepareStatement(qry);
System.out.println("step 3 done");

ResultSet  rs = pstmt.executeQuery();



while(rs.next())
{
	int id= rs.getInt(1);
	String name = rs.getString(2);
	String model = rs.getString(3);
	String price = rs.getString(4);
	

	
	out.println("<html>" 
			+ "<body class='b1' bgcolor = 'Orange'>" +"<div class='c1'> <div class='d1'>Car Id: "+id+ "</div>"
			+"<div class='d1'>Car Name: "+name + "</div><div class='d1'>Car Model: "+ model
			+ "</div><div class='d1'>Car price:"+ price +" Rs</div><br><br>"
			+ "</div>"+"</body></html>"); 
}


%>
<form class="fm" action="buydetail.jsp">
<div class="div1 ">
<label>Enter car ID: </label>
<input class="txt" type="text" placeholder="Enter car id" name="id">
<br><br>
<input class="inbut" type="Submit" value="Submit" name="ec">
</div>
</form>
<br>

</body>
</html>