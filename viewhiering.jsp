<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                PreparedStatement st=con.prepareStatement("select * from workerinsert");
                ResultSet rs=st.executeQuery();
                ArrayList list1=new ArrayList();
                ArrayList list2=new ArrayList();
                ArrayList list3=new ArrayList();
                ArrayList list4=new ArrayList();
                ArrayList list5=new ArrayList();
                ArrayList list6=new ArrayList();
                ArrayList list7=new ArrayList();
                while(rs.next()){
                list1.add(rs.getString(1));
                list2.add(rs.getString(3));
                list3.add(rs.getString(4));
                list4.add(rs.getString(5));
                list5.add(rs.getString(6));
                list6.add(rs.getString(7));
                list7.add(rs.getString(8));
                
            }
            %>
            <br>
            <div style="width: 100%; height: 600px; background-image: url(images/featuresimg.jpg); background-repeat: no-repeat; background-size: 100%;">
                <div style="margin-left: 50px; width: 90%; height: 600px; background-color: rgba(200,200,200,0.2); border-radius:30px; border:solid; border-color: blue">
                    <br>
                    <table width="100%">
                        <tr bgcolor="lightblue" align="center">
                            <td>USER ID</td>
                            <td>WORKER NAME </td>
                            <td>SKILL_DETAIL</td>
                            <td>TYPE_OF_WORKER</td>
                            <td>AVAILABLE_TIME</td>
                            <td>EXPERIENCE</td>
                            <td>SALARY</td>
                        </tr>
                        <%
                            for (int i = 0; i < list1.size(); i++) {
                        %>
                        <tr align="center"> 
                            <td><%=list1.get(i)%></td>
                            <td><%=list2.get(i)%> </td>
                            <td><%=list3.get(i)%></td>
                            <td><%=list4.get(i)%></td>
                            <td><%=list5.get(i)%></td>
                            <td><%=list6.get(i)%></td>
                            <td><%=list7.get(i)%></td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                    <<form action="deleterecord.jsp">
                        <select name="item">
                            <%for (int i = 0; i < list1.size(); i++) {
                            %>
                            <option>
                                <%=list1.get(i)%>
                            </option>
                            <%}%>
                        </select>
                        <input type="submit" value="delete">
                        <input type="submit" value="TAKE PRINT" onclick="window.print()">
                    </form>
                </div>
            
                </div>
    </body>
</html>
