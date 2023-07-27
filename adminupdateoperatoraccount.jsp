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
            background-image: url('images/adminpage.jpg');
            background-repeat: no-repeat;
            width: 1500px;
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
        .tabletheme td:hover ul {
            display: block;
        }
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
        .center{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 700px;
            height: 400px;
            background-color: transparent;
            opacity: 6;
            border: 1px solid black;
            padding: 20px;
        }
        .formcode{
            padding: 20px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>Admin Page</title>
    </head>
    <body>
        <table width='100%' class='tabletheme' >

            <tr>
                <td class="tdtheme">Update Task
                    <ul>
                        <li><a href="adminupdateworkeraccount.jsp" class="updateoption1">Update Worker Account</a></li>
                    </ul>
                </td>
                <td class="tdtheme">View Task
                    <ul>
                        <li><a href="viewhiering.jsp" class="viewoption1">VIEW HIRING</a></li>
                        <li><a href="viewworkercomplain.jsp" class="viewoption1">VIEW WORKER COMPLAIN</a></li>
                        <li><a href="viewusercomplain.jsp" class="viewoption1">VIEW USER COMPLAIN</a></li>
                    </ul>
                </td>
                <td class="tdtheme"><a href="search.jsp">Search Worker</a></td>
                <td class="tdtheme"><a href="adminpass.jsp">Password Setting</a></td>
            </tr>  
        </table>
        <div class="container" style="width:1500px;height:630px;background-image:url('images/adminpage.jpg');
             background-repeat:no-repeat;background-size:100% ">
            <div class="row">
                <div class="center"> 
                    <form class="formcode" action="adminupdateoperatoraccountcode.jsp">
                        <table style="width:100%;height: 100%" cellspacing='30' cellpadding='10'>
                            <tr align="center"  style=color:black;font-size:20px;font-family:arial">
                                <td colspan="4">UPDATE OPERATOR</td>
                            </tr>
                            <tr align='center'>
                                <td>ID</td>
                                <td><input type='text'  name="id1" placeholder="enter id "  class='texttheme'></td>
                                <td>Name</td>
                                <td><input type='text'  name="name" placeholder="enter Name "  class='texttheme'></td>
                            </tr> 
                            <tr align='center'>
                                <td>Gender</td>
                                <td><input type='text' name="gender" placeholder="enter Gender" class='texttheme'></td>
                                <td>Contact</td>
                                <td><input type='telephone' name="contact" placeholder="enter  Contact" class='texttheme'></td>
                            </tr>
                            <tr align='center'>
                                <td>Email</td>
                                <td><input type='email' name="email" placeholder="enter Email" class='texttheme'></td>
                            </tr>
                            <tr align="center">
                                <td colspan="6"><input type="submit" class="button"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>