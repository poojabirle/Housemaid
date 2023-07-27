<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body{
            background-color: #eee;
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
        .container{
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }
        .division{
            display: flex;
            flex-direction: column;
            text-align: center;
            border:2px solid black;
            background-color: white;
            border-radius: 30px;
            margin-top: 50px;
             box-shadow: 10px 10px 5px black;
        }
        .img_div{
            display: block;
            margin-left: 0px;
            padding-left: 0px;
            text-align: left;
            left: 300px;
        }
        .login_form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding-left: 20px;
            padding: 10px;
            width: 450px;
            height: 560px;
            margin-left: 390px;
            margin-top: -490px;
        }
        .Login{
            text-align: center;
        }
        .Password{
            text-align: center;
        }
        .logintext{
            width: 250px;
            height: 20px;
        }
        .button1,.button2{
            margin: 25px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HouseMaid</title>
    </head>
    <body>
        <%-- <table width='100%' class='tabletheme'>
            <tr>
                <td><img src="images/fotor_2023-3-19_15_51_38.png" class="logo" width="80px" alt=""/></td>
                <td class="tdtheme">Home</td>
                <td class="tdtheme">About</td>
                <td class="tdtheme"><a href="contact.jsp">Contact</a></td>
                <td class="tdtheme">Services</td>
                <td class="tdtheme">Feedback</td>
                <td class="tdtheme"><a href="login.jsp">Login</a></td>
                <!--<td class="tdtheme"><a href="usercomplain.jsp">Complain</a></td>-->
            </tr>
        </table> --%>
        <br>
        <div class="container">
            <div class="division">
            <div class="img_div">
                <img src="images/adminimg1-removebg.png" width="450px" heigth="100%" alt="">
            </div>
            <div class="login_form">
                <form action='responsiblepersoncode.jsp'>
                    <div class="logindiv">
                        <img src="images/fotor_2023-3-19_15_51_38.png" width="185px" height="150px" alt="alt"/>
                        <h4 class="headinglogin">We are The HouseMaid Team</h4>
                    </div>
                    <p>Please login to your account</p><br>
                    <p class="Login">
                        <input type="text" class="logintext" name="name" placeholder="Enter Valid ID" id="">
                    </p>
                    <p class="Password">
                        <input type="password" class="logintext" name="password" placeholder="Enter Password"id="">
                    </p>
                    <br>
                    <select name="post">
                        <option>post</option>
                        <option>admin</option>
                        <option>operator</option>
                    </select>
                    <br>
                    <input type='submit'  value='submit'  class='btntheme'  name="btn1" style="padding-left: 2.5rem; padding-right: 2.5rem; background-color: #3b71ca; display: flex; justify-content: center; align-items: center; margin: 20px; width:185px; height: 35px">
                </form>
            </div>
            </div>
        </div>
    </body>
</html>
