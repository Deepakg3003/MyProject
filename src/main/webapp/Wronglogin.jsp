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

     

       .button2{
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
      
        .form1{height:370px;
    		width:300px;
    		font-size:20px;
          padding:50px;
          margin:100px;
          
            background-color: orange; 
        }
        
        #s1{background-color: green;
      color: white;
      height:35px;
      width: 80px;
      align-items: center;
      align-content: center;
      }
      
       #b1{
      padding-left: 50px;}
      
       .reg{
            color: red;   
          }
          
          .inbox{
      height: 30px;
     width:200px;
      }
    </style>
</head>
<body>
<header>
    <nav class="nav">
        <img  class="img  " src="image/car.png" alt="">
        <div class="title">Vehicle Showroom</div>
       
       <form action="signup" method="Post">
            <button class="button2" name="">Signup</button>
        </form>
       </div>
    </nav>
</header>

<form action="Vlogin" class="form1" method="Post">
<div class="reg">Wrong username and password!!!</div>
				<div id="sign"><h2>Login</h2></div><br>
       
        
       <div> <label for="un">Username:</label> 
        		<input class="inbox" type="text" name="uname" id="un" placeholder="Enter your username"> </div> <br>
        		
        <div> <label for="ln">Password:</label> 
        	<input class="inbox" type="password" name="pass" id="ln" placeholder="Enter your password"> </div> <br>
        	
         <div id="b1"> <input id="s1" type="submit" value="submit"> </div> 
    </form>
</body>
</html>