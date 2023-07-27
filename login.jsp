<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%  
    int RESULT=0;
    String button1 = request.getParameter("btn1");
    String button2 = request.getParameter("btn2");
    if (button2 != null && button2.equals("signup")) {
        response.sendRedirect("signup.jsp");
    }
    if (button1 != null && button1.equals("signin")) {
        String id = request.getParameter("name");
        String pass = request.getParameter("password");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "root");
        PreparedStatement st = con.prepareStatement(
                "select * from useraccountinsert where UserId=? and Password=?");
        st.setString(1, id);
        st.setString(2, pass);
        
        Cookie ck=new Cookie("HouseMaid",id);
        ck.setMaxAge(1000000);
        response.addCookie(ck);
        
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            session.setAttribute("CALL", id); //name,value
            response.sendRedirect("userpage.jsp");
            //out.println("welcome....");
        }
        else {
             RESULT=1;
            //out.println("invalid id/password");
        }
    }
%>
<html>
    <style>
        .container{
            background-image: url("images/loginbg.jpg");
            width: 100%;
            height: 100%;
        }
        .row{
            display: flex;
            flex-direction: row;
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
            border:2px solid black;
            margin-right: -650px;
            padding: 10px;
            width: 600px;
            height: 500px;
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
        .imagelogin{
            margin-left: -650px;
        }
        .img_side{
            display: flex;
            flex-direction: column;
            margin-right: -1450px;
        }
        form {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        form h2{
            font-family: sans-serif;
            font-size: 30px;
            margin-bottom: 20px;
        }
        .login_form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 350px;
            height: 500px;
            border: 2px solid white;
            border-radius: 30px;
            margin-right: 1160px;
            margin-left: 100px;
            box-shadow: #000 5px;
        }
        .text_field, .button{
            width: 250px;
            padding: 10px;
            margin: 10px;
            color: white;
            border: 1px solid #000;
            border-radius: 20px;
            font-size: 18px;
            font-family: sans-serif;
        }
        .button{
            color: #fff;
            background-color: #3366ff;
            width: 150px;
            border: white;
        }
        .button:hover{
            font-size: 20px;
            font-weight: 500;
            width: 160px;
        }
    </style>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
                <td class="tdtheme"><a href="usercomplain.jsp">Complain</a></td>
                <td class="tdtheme"><a href="destroysession.jsp">Signout</a></td>
                
                </tr>
        </table>
        <br>
        <div class="container">
            <div class="containerimg">
            <!--<div class="img_div">
                <img src="images/backimg.jpg" class="imagelogin" width="800px" heigth="80%" alt="">
            </div>   --> 
            <div class="login_form">
                    <%
                        Cookie ck[] = request.getCookies();
                        String value="";
                        if(ck!=null){
                        for(int i=0;i<ck.length;i++)
                        if(ck[i].getName().equals("HouseMaid"))
                        value=ck[i].getValue();
                        }
                    %>
                    <form action='' method="post" name="frm">
                        <h2 style="color: white">Login </h2>
                         <%
                            if(RESULT==1)
                            {
                            %>
                           <tr align="center"> 
                           <td><font color="red">INVALID ID/PASSWORD</font></td>
                            </tr>
                         <%}%>
                    <input type="text" class="text_field" placeholder="Enter Your ID" name="name" value="<%=value%>"><br>
                    <input type="password" class="text_field" placeholder="Enter Your Password" name="password"><br>
                    <tr align='center'>
                        <td colspan='2'>
                            <input type='submit'  value='signin'  class='btntheme'  name="btn1">
                            <input type='submit'  value='signup'  class='btntheme'  name="btn2">
                        </td>
                    </tr>
                </form>
            </div>
            </div>
        </div>
</body>
</html>