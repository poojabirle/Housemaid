<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .logo{
            margin-left: 20px;
        }
        .tdtheme{
            font-size: 22px;
            font-weight: bold;
            font-family: arial;
            height: 100px;
            text-align: center;
            color: white;
            text-transform: uppercase;
            
        }
        .tdtheme:hover{
            background-color: lightgrey;
            color: #1E90FF; 
        }
        .tabletheme{
            box-shadow: 10px 10px 5px gainsboro;
            background-color: #1E90FF;
           
        }
        .container{
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }
        .button1,.button2{
            margin: 25px;
        }
        .heading{
            font-weight: 900;
            font-size: 50px;
        }
        .div1{
            width: 100%;
            text-align: center;
            justify-content: center;
        }
        .div2{
            margin-top: 50px;
            margin-left: 100px;
        }
        .background_image{
            background-image: url(images/featuresimg.jpg);
            width: 100%;
            height: 600px;
            margin-top: -5px;
        }
        .div3{
            margin-top: -350px;
            margin-left: 40px;
            color: white;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>
            
                <tr>
                    <td><img src="images/fotor_2023-3-19_15_51_38.png" class="logo" width="80px" alt=""/></td>
                    <td class="tdtheme"><a href="home.jsp">Home</a></td>
                <td class="tdtheme">About</td>
                <td class="tdtheme"><a href="contact.jsp">Contact</a></td>
                <td class="tdtheme">Services</td>
                <!--<td class="tdtheme">Feedback</td>-->
                <td class="tdtheme"><a href="login.jsp">Login</a></td>
                <!--<td class="tdtheme"><a href="usercomplain.jsp">Complain</a></td>-->
            </tr>
        </table>
        
        <div class="background_image">
        <div class="div1">
            <h1 class="heading">FeedBack</h1>
            </div>
        <div class="container">
            
            <div>
            <div class="div2">
                
                <form action="feedbackcode.jsp">
            <p>
                <br><br>
                <input type="text" style="width:300px; height:30px" placeholder="User Id" name="id" id="">
            </p>
            <p>
                <br><br>
                <input type="text" style="width:300px; height:30px" placeholder="User Name" name="name" id="">
            </p>
            <br>
            <p>
                <textarea style="width:300px;height:100px" placeholder="Enter Message" name="feedback"></textarea>
            </p>
            
              <tr align='center'>
                        <td colspan='2'>
              <input type='submit'  value='submit'  class='btntheme'  name="btn1">
              </tr>
                </form>
            </div>
                <div class="div3">
                    <!--<h2>Phone: 9752554068 <h2></p>   
                    <p><h2>Phone: 9874329976</h2></p>
                    <p><h2>Email: housemaid@gmail.com</h2></p> -->
                </div>
            </div>
            
        </div>
        </div>
    </body>
</html>
