<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
String workerid=request.getParameter("id");
String oldPassword=request.getParameter("oldpwd");
String newPassword=request.getParameter("newpwd");
String cNewPassword=request.getParameter("cnewpwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("select * from workerinsert where ID=? and Password=?");
st.setString(1,workerid);
st.setString(2,oldPassword);
ResultSet rs=st.executeQuery();
if(rs.next()){
    if(newPassword.equals(cNewPassword)){
    PreparedStatement st1=con.prepareStatement("update workerinsert set Password=? where ID=?");
    st1.setString(1,newPassword);
    st1.setString(2,workerid);
    st1.executeUpdate();
    response.sendRedirect("workerpage.jsp");
    }
    else{
    out.println("new password and confirm password doesn't match");
    }
    }
    else{
    out.println("invalid id/password");
    }
%>

