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
        /* .background_image{
            background-image: url(images/featuresimg.jpg);
            width: 100%;
            height: 600px;
            margin-top: -5px;
        }
        */
        .div3{
            margin-top: -350px;
            margin-left: 40px;
            color: black;
        }
        .texttheme{
            border-radius: 10px;
            background-color: #f2f2f2;
        }
        .form{
            justify-content: center;
            text-align: center;
            
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
                    <td class="tdtheme"><a href="about.jsp">About</a></td>
                <td class="tdtheme"><a href="contact.jsp">Contact</a></td>
                <td class="tdtheme">Services</td>
                <td class="tdtheme"><a href="feedback.jsp">Feedback</a></td>
                <td class="tdtheme"><a href="login.jsp">Login</a></td>
                <!--<td class="tdtheme"><a href="usercomplain.jsp">Complain</a></td>-->
            </tr>
        </table>
        
        <div class="background_image">
            <img src="images/contactimg.jpg" width="1500px" height="400px" alt=""/>
        </div>
        <!--<div class="container">
            
            <div>
            <div class="div2">
                
                <form action="contactcode.jsp">
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
                <textarea style="width:300px;height:100px" placeholder="Enter Message" name="message"></textarea>
            </p>
            
              <tr align='center'>
                        <td colspan='2'>
              <input type='submit'  value='submit'  class='btntheme'  name="btn1">
              </tr>
                </form>
            </div>
                <div class="div3">
                    <h2>Phone: 9752554068 <h2></p>   
                    <p><h2>Phone: 9874329976</h2></p>
                    <p><h2>Email: housemaid@gmail.com</h2></p>
                </div>
            </div>
            
        </div>-->
        <table  class="form" style='width:950px;height: 600px;margin-left: 50px;border:inset;
                            border-color:gray ;margin-top:50px;margin-left: 300px;box-shadow: 10px 10px 5px gainsboro;cellspacing='10' cellpadding='10' border='0'>
                        <tr align="center"  style=color:black;font-size:20px;font-family:arial">
                            <td colspan="4">Get in Touch</td>
                        </tr>
                        <tr align='center'>
                           
                            <td><input type='text'  name="id" style="width:258px;height:55px;" placeholder="Name "  class='texttheme'></td>
                            
                            <td><input type="email" name="email" style="width:258px;height:55px;" placeholder="abc@gmail.com" class="texttheme"></td>
                        </tr> 
                        <tr align='center'>
                            
                            <td><input type='telephone' name="contact" style="width:258px;height:55px;" placeholder="Contact" class='texttheme'></td>
                            
                            <td><select   name="Services" class='texttheme' style="width:258px;height:55px;" placeholder="Services">
                                    <option>select Services</option>
                                    <option>Occasional & One Time Cleaning</option>
                                    <option>Recurring & Ongoing Cleaning</option>
                                    <option>Move Out & Move In Cleaning</option>
                                    <option>Professional Apartment Cleaning</option>
                                    <option>Residential Window Cleaning</option>
                                    <option>Professional Carpet Cleaning</option>
                                </select></td>
                        </tr>
                            <tr align='center'>
                                <td colspan='4'><textarea name="additional_info" style="width:731px;height:169px;" class='texttheme'></textarea> </td>
                            </tr>
                            <tr align='center'>
                            <td colspan='4'>
                                <input type='submit'  value='submit'  class='btntheme'  name="btn1">
                                <input type='reset'  value='clear' class='btntheme' name="btn2"><a</td>
                        </tr>
        </table>
        <div class="main-footer" style="margin-top: 20px">
            <img src="images/footer.jpg" width="100%" height="100%" alt="alt"/>
        </div>
    </body>
</html>
