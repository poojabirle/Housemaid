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
        .img_div{
            display: block;
            margin-left: 0px;
            padding-left: 0px;
            text-align: left;
            /*left: 300px;*/
        }
        .login_form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding-left: 20px;
            border:2px solid white;
            border-radius: 50px;
            margin: 15px;
            padding: 10px;
            width: 450px;
            height: 560px;
            background-color: lightgray;
        }
        .Login{
            text-align: center;
        }
        .Password{
            text-align: center;
        }
        .button1,.button2{
            margin: 25px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>HouseMaid</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>

            <tr>
                <td><img src="images/fotor_2023-3-19_15_51_38.png" class="logo" width="80px" alt=""/></td>
                <td class="tdtheme"><a href="home.jsp">Home</a></td>
                <td class="tdtheme">About</td>
                <td class="tdtheme"><a href="contact.jsp">Contact</a></td>
                <td class="tdtheme">Services</td>
                <td class="tdtheme"><a href="feedback.jsp">Feedback</a></td>

                <!--<td class="tdtheme"><a href="usercomplain.jsp">Complain</a></td>-->
            </tr>

        </table>
        <!--<br>-->
        <div  style="width:100%;height:1200px;background-image:url('images/photo.jpg');
              background-repeat:no-repeat;background-size:100% ">    
            <div>

                <form  action='userlogincode.jsp'>

                    <table  style='width:550px;margin-left: 50px;border:inset;
                            border-color:gray ;margin-top:50px ' cellspacing='10' cellpadding='10' border='0'>
                        <tr align="center"  style=color:black;font-size:20px;font-family:arial">
                            <td colspan="4">LOGIN FORM</td>
                        </tr>
                        <tr align='center'>
                            <td>User ID</td>
                            <td><input type='text'  name="id" placeholder="enter id "  class='texttheme'></td>
                            <td>Password</td>
                            <td><input type='password'  name="password" placeholder="enter password "  class='texttheme'></td>
                        </tr> 
                        <tr align='center'>
                            <td>Username</td>
                            <td><input type='text' name="username" placeholder="enter Username" class='texttheme'></td>
                            <td>Contact</td>
                            <td><input type='number' name="contact" placeholder="enter Contact" class='texttheme'></td>
                        </tr>
                        <tr align='center'>
                            <td>DOB</td>
                            <td><input type='date' name="DOB" placeholder="28/11/02" class='texttheme'></td>
                            <td>Gender</td>
                            <td><input type='text' name="gender" placeholder="Male/Female" class='texttheme'></td>
                            <td>Email ID</td>
                            <td><input type="email" name="email" placeholder="abc@gmail.com" class="texttheme"></td>
                        </tr>

                        <tr align='center'>
                            <td>Address</td>
                            <td><textarea  name="address"    style="width:200px;height:200px"></textarea></td>
                            <td>City</td>
                            <td><select   name="City" class='texttheme'>
                                    <option>select city</option>
                                    <option>Indore</option>
                                    <option>bhopal</option>
                                    <option>dewas</option>
                                    <option>Khargone</option>
                                </select></td>

                        </tr>
                        <tr align='center'>
                            <td colspan='4'>
                                <input type='submit'  value='submit'  class='btntheme'  name="btn1">
                                <input type='reset'  value='clear' class='btntheme' name="btn2"></a></td>
                        </tr>
                    </table>
                </form>
            </div>     
        </div>
    </body>
</html>

