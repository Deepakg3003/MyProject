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
      
   
      
      #s1{background-color: green;
      color: white;
      height:35px;
      width: 80px;
      align-items: center;
      align-content: center;
      }
      
      #b1{
      padding-left: 80px;}
      
       
            .box{
                height: 50px;
                width: 300px;
                background-color:white;  
                font-size: 30px;
                margin-left: 50px;
                margin-top: auto;
            }
            
            .box1,.box2,.box3{
                background-color: yellow;
                margin-top: 10px;
                border: 2px solid black;
                padding-left: 55px
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

 <div id="parent">
        <div class="box box1"><a href="./buycar.jsp">To buy cars</a></div>
        <div class="box box2" ><a href="./sellcars.jsp">To sell cars</a></div>
        <div class="box box3"><a href="./upcomingcar.jsp">Upcoming cars</a></div>
    </div>
</body>
</html>