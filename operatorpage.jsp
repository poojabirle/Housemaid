<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .bgimage{
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
        <title>Operator Page</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>

            <tr>
                <td class="tdtheme"><a href="adminupdateworkeraccount.jsp" class="updateoption1">Update Worker Account</a></td>
                <td class="tdtheme">
                    View Task
                    <ul>
                        <li><a href="viewhiering.jsp" class="viewoption1">VIEW HIRING</a></li>
                        <li><a href="viewworkercomplain.jsp" class="viewoption1">VIEW WORKER COMPLAIN</a></li>
                        <li><a href="viewusercomplain.jsp" class="viewoption1">VIEW USER COMPLAIN</a></li>
                        <li><a href="viewuserfeedback.jsp" class="viewoption1">VIEW USER FEEDBACK</a></li>
                    </ul>
                </td>
                <td class="tdtheme"><a href="search1.jsp">Search Worker</a></td>
                <td class="tdtheme"><a href="operatorpass.jsp">Password Setting</a></td>
            </tr>  
        </table>
        <div class="imageadmin"> 
                </div>
    </body>
</html>