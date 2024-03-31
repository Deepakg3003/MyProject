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
        display: flex;
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

       

      h1{
        color: red;
        font-size: 70px;
        margin-top: -150px;
        
      }
      
    .form1{height:530px;
    		width:450px;
    		font-size:20px;
           margin-left:50px;
           padding:50px;
            background-color: orange;
           
        }
      
      #s1{background-color: green;
      color: white;
      height:35px;
      width: 80px;
      align-items: center;
      align-content: center;
      }
      
       .txt{
     height: 40px;
     width:200px;
     }  
      
      .t3{
      margin-left: 40px;
      }
      
      .t5{
      margin-left: 6px
      }
      
      .t6{
          margin-left: 11px;
      }
      
      #b1{
      padding-left: 120px;}
      
      #sign{padding-left: 130px;
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
             <button class="button1" name="">Login</button>
        </form>
       
       </div>
    </nav>
</header>
<section>
<form action="signupsuccess.jsp" class="form1" method="Post">
				<div id="sign"><h2>Signup</h2></div><br>
        <div> <label for="fn">First Name:</label> 
        		<input class="txt t1" type="text" name="fname" id="fn" required placeholder="Enter your first name"> </div> <br>
        		
        <div> <label for="ln">Last Name:</label> 
        	<input class="txt t2" type="text" name="lname" id="ln" required placeholder="Enter your last name"> </div> <br>
       
        <div> <label for="em">Email:</label> 
        	<input class="txt t3" type="email" name="email" id="em" required placeholder="Enter your email"> </div> <br>
        	
        <div> <label for="pn">Mobile No:</label> 
        <input class="txt t4" type="text" name="mobile" id="pn" required placeholder="Enter your mobile no"> </div> <br>
        
       <div> <label for="un">Username:</label> 
        		<input class="txt t5" type="text" name="uname" id="un" required placeholder="Enter your user name"> </div> <br>
        		
        <div> <label for="ln">Password:</label> 
        	<input class="txt t6" type="text" name="pass" id="ln" required placeholder="Enter your password"> </div> <br>
        	
         <div id="b1"> <input id="s1" type="submit" value="submit"> </div> 
    </form>
    </section>
</body>
</html>