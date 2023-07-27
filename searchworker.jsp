<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .imageadmin{
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
        .tabletheme ul {
            display: none;
            position: absolute;
            list-style: none;
            margin: 0;
            padding: 0;
            width: 300px;
            left: 0;
        }
        .tabletheme td:hover ul { display: block; }
        .tabletheme td{
            position: relative;
        }
        .adminheading{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin: 20px;
            padding: 20px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>Admin Page</title>
    </head>
    <body>
        <table width='100%' class='tabletheme'>

            <tr>
                <td class="tdtheme">Update Task
                    <ul>
                        <li><a href="adminupdateoperatoraccount.jsp" class="updateoption1">Update Operator Account</a></li>
                        <li><a href="adminupdateworkeraccount.jsp" class="updateoption1">Update Worker Account</a></li>
                    </ul>
                </td>
                <td class="tdtheme">
                    View Task
                    <ul>
                        <li><a href="viewhiering.jsp" class="viewoption1">VIEW HIRING</a></li>
                        <li><a href="viewworkercomplain.jsp" class="viewoption1">VIEW WORKER COMPLAIN</a></li>
                        <li><a href="viewusercomplain.jsp" class="viewoption1">VIEW USER COMPLAIN</a></li>
                    </ul>
                </td>
                <td class="tdtheme"><a href="adminpass.jsp">Password Setting</a></td>
            </tr>  
        </table>
       <div
        <div class="imageadmin"> 
            <div class="adminheading">
            <h1>ADMIN PAGE</h1>
            <br>
            <img src="images/adminpage.jpg" width="600px" height="500px" alt=""/>
        </div>
          </div> 
    </body>
</html>
