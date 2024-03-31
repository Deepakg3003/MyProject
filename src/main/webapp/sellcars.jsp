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
      
   
      
      #s1{background-color: green;
      color: white;
      height:35px;
      width: 80px;
      align-items: center;
      align-content: center;
      }
      
      #b1{
      padding-left: 100px;}
      
        .form1{height:400px;
    		width:400px;
    		font-size:20px;
           margin-left:50px;
           padding:50px;
            background-color: orange;
           
        }
         
               #sign{padding-left: 50px;
      color: green;
      }
             
       .txt{
     height: 40px;
     width:200px;
     } 
     
     .t1{
     margin-left: 32px;
     } 
     
     .t2{
     margin-left: 5px;
     }
     
     
     .t4{
     
         margin-left: 10px;
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

<section>
<form action="selldetail.jsp" class="form1" method="Post">
				<div id="sign"><h2>Enter car detail:</h2></div><br>
        <div> <label for="fn">Car ID:</label> 
        		<input class="txt t1" type="text" name="cid" id="fn" required placeholder="Enter your car id"> </div> <br>
        		
        <div> <label for="ln">Car Name:</label> 
        	<input class="txt t2" type="text" name="cn" id="ln" required placeholder="Enter your car name"> </div> <br>
       
        <div> <label for="em">Car Model:</label> 
        	<input class="txt t3" type="text" name="cm" id="em" required placeholder="Enter your car model"> </div> <br>
        	
        <div> <label for="pn">Car Price:</label> 
        <input class="txt t4" type="text" name="cp" id="pn" required placeholder="Enter your car price"> </div> <br>
        	
         <div id="b1"> <input id="s1" type="submit" value="submit"> </div> 
    </form>
    </section>
</body>
</html>