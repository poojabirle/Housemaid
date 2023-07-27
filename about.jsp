<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .textabout{
            text-align: center;
            justify-content: center;
            margin-right: 20px;
            margin-top: 30px;
        }
        .heading1{
            font-size:40px;
            justify-content: center;
            margin-top: 80px;
        }
        .litext{
            margin-top: 20px;
            margin: 40px;
        }
        .aboutimg{
            margin: 60px;
        }
        .aboutcontent{
            text-align: left;
        }
        .heading1{
            font-size: 48px;
            line-height: 58px;
            font-family: 'Roboto', sans-serif;
            color: #001070;
            margin: 10px;
        }
        .heading12{
            position: relative;
            font-family: 'Barlow', sans-serif;
            color: #444;
            font-weight: 400;
            margin: 20px;
        }
        .litext{
            position: relative;
            display: block;
            font-size: 20px;
            line-height: 30px;
            font-family: 'Yantramanav', sans-serif;
            font-weight: 500;
            padding-left: 38px;
        }
        .container{
            margin-top: 20px;
        }
        .liimg{
            margin-right: 10px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>ABOUT</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>
            <tr>
                <td><img src="images/fotor_2023-3-19_15_51_38.png" class="logo" width="80px" alt=""/></td>
                <td class="tdtheme"><a href="home.jsp">Home</a></td>
                <td class="tdtheme"><a href="contact.jsp">Contact</a></td>
                <td class="tdtheme">Services</td>
                <td class="tdtheme"><a href="feedback.jsp">Feedback</a></td>
                <td class="tdtheme"><a href="login.jsp">Login</a></td>
                <td class="tdtheme"><a href="destroysession.jsp">Signout</a></td>
            </tr>
        </table>
        <div>
            <img src="images/about1.jpg" width="100%" height="100%" alt=""/>
        </div>
        <div class="container">
            <div class="aboutimg">
                <img src="images/backhomeimg.jpg" width="750px" height="100%" alt="alt"/>
            </div>
            <div class="textabout">
                <ul class="aboutcontent"><h2 class="heading1">Why choose our cleaning service for home</h2>
                    <ul><h2 class="heading12">All of our services are provided by registered psychologists, 
                            or by experienced masters and doctoral clinicians under the supervision 
                            of a psychologist.</h2>
                        <li class="litext"><img src="images/aboutli.jpg" width="25px" height="25px" alt="" class="liimg"/>Offer a different kind of services to families and professionals</li>
                        <li class="litext"><img src="images/aboutli.jpg" width="25px" height="25px" alt="" class="liimg"/>Deliver high quality and consistent services</li>
                        <li class="litext"><img src="images/aboutli.jpg" width="25px" height="25px" alt="" class="liimg"/>Use environmental friendly cleaning products</li>
                        <li class="litext"><img src="images/aboutli.jpg" width="25px" height="25px" alt="" class="liimg"/>Provide stable jobs with resonable wages</li>
                        <li class="litext"><img src="images/aboutli.jpg" width="25px" height="25px" alt="" class="liimg"/>Concentrate our resources on maintaining standards</li>
                        <li class="litext"><img src="images/aboutli.jpg" width="25px" height="25px" alt="" class="liimg"/>Make you an extremely satisfied customer</li>
                    </ul>    
                </ul>
            </div>
        </div>
        <div class="main-footer">
            <<img src="images/footer.jpg" width="100%" height="100%" alt="alt"/>
        </div>
    </body>
</html>
