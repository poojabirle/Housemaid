<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        
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
        .container{
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>

            <tr>
                <td class="tdtheme"><a href="workerupdate.jsp">Update Personal Detail</a></td>
                <td class="tdtheme"><a href="workercomplain.jsp">Complain</a></td>
                <td class="tdtheme"><a href="workerfeedback.jsp">Feedback</a></td>
                <td class="tdtheme"><a href="workerpass.jsp">Password Setting</a></td>
            </tr>  
        </table>
        <div class="imageadmin"> 
                </div>
    </body>
</html>