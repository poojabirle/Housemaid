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
            margin-left: 500px;
        }
        .background_image{
            background-image: url(images/bgimage.jpg);
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
        <link rel="stylesheet" href="style.css"/>
        <title>Complain Text</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>

            <tr>
                <td class="tdtheme"><a href="workerupdate.jsp">Update Personal Detail</a></td>
                <td class="tdtheme"><a href="workerfeedback.jsp">Feedback</a></td>
                <td class="tdtheme"><a href="workerpass.jsp">Password Setting</a></td>
            </tr>  
        </table>
        <div class="container">
            <div class="left_side_image">
                
            </div>
            <div class="login_form">
                <form action="complain.jsp">
                    <h2 style="color: white">Complain </h2>
                    <input type="text" class="text_field" placeholder="Enter Your ID" name="id"><br>
                    <input type="text" class="text_field" placeholder="Enter Your Name" name="name"><br>
                    <textarea class="text_field" placeholder="Enter Your Complain" name="complain"></textarea><br>
                    <input type="submit" class="button">
                </form>
            </div>
        </div>
    </body>
</html>