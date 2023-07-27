<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .box{
            background-image: url(images/adminimg.jpg);
            margin-top: 10px;
            padding: 1px;
            width: 100%;
            height: 600px;
            background-repeat: no-repeat;
        }
        bgimage{
            background-image: url("images/featuresimg.jpg");
        }
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
        .password_setting{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 450px;
            height: 500px;
            border: 2px solid #000;
            border-radius: 30px;
            margin-right: 0px;
            margin-left: 500px;
            margin-top: 80px;
            box-shadow: #000 5px;
            background-color: black;
            
        }
        .text_field, .button{
            width: 250px;
            padding: 10px;
            margin: 10px;
            color: #000;
            border: 1px solid #000;
            border-radius: 20px;
            font-size: 18px;
            font-family: sans-serif;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>

            <tr>
                <td class="tdtheme"><a href="update.jsp">Update Task</a></td>
                <td class="tdtheme"><a href="view.jsp">View Task</a></td>
                <td class="tdtheme"><a href="search.jsp">Search Worker</a></td>
                 </tr>
        </table>
        <div class="box">
        <div class="password_setting">
                <form action='operatorpasscode.jsp'>

                    <h2 style="color: white">Login </h2>
                    <input type="text" class="text_field" placeholder="Enter Your ID" name="id"><br>
                    <input type="password" class="text_field" placeholder="Enter Your Old Password" name="oldpwd"><br>
                    <input type="password" class="text_field" placeholder="Enter Your New Password" name="newpwd"><br>
                    <input type="password" class="text_field" placeholder="Confirm Password" name="cnewpwd"><br>
                    <tr align='center'>
                        <td colspan='2'>
                            <input type='submit'  value='submit'  class='btntheme'  name="btn1">
                        </td>
                    </tr>
                </form>
            </div>
        </div>
    </body>
</html>