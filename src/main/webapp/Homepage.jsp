<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VehicleShowroom</title>
 <style>
    *{
       margin: 0;
       padding: 0;
       box-sizing: border-box;v

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
        margin-left: 920px;
        margin-top: 5px;
        height: 40px;
        width: 100px;
        color: red;
        border-radius: 10px;
       }

       .button2{
        margin-left: 10px;
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
       <form action="signup" method="Post">
            <button class="button2" name="">Signup</button>
        </form>
       </div>
    </nav>
</header>


<h1>Welcome To Vehicle Showroom</h1>
 
</body>
</html>