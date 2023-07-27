<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER COMPLAIN</title>
    </head>
    <body>
        <%@page import="java.sql.Connection" %>
        <%@page import="java.sql.PreparedStatement" %>
        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.ResultSet" %>
        <%@page import="java.util.ArrayList" %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                PreparedStatement st=con.prepareStatement("select * from workercomplaininsert");
                ResultSet rs=st.executeQuery();
                ArrayList list1=new ArrayList();
                ArrayList list2=new ArrayList();
                ArrayList list3=new ArrayList();
                while(rs.next()){
                list1.add(rs.getString(1));
                list2.add(rs.getString(2));
                list3.add(rs.getString(3));
            }
            %>
            <br>
            <div style="width: 100%; height: 600px; background-image: url(images/featuresimg.jpg); background-repeat: no-repeat; background-size: 100%;">
                <div style="margin-left: 50px; width: 90%; height: 600px; background-color: rgba(200,200,200,0.2); border-radius:30px; border:solid; border-color: blue">
                    <br>
                    <table width="100%">
                        <tr bgcolor="lightblue" align="center">
                            <td>USER ID</td>
                            <td>USER NAME </td>
                            <td>COMPLAIN</td>
                        </tr>
                        <%
                            for (int i = 0; i < list1.size(); i++) {
                        %>
                        <tr align="center"> 
                            <td><%=list1.get(i)%></td>
                            <td><%=list2.get(i)%> </td>
                            <td><%=list3.get(i)%></td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </div>
            
                </div>
    </body>
</html>
