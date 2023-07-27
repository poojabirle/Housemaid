<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
String adminid=request.getParameter("id");
String oldPass=request.getParameter("oldpwd");
String newPass=request.getParameter("newpwd");
String cNewPass=request.getParameter("cnewpwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("select * from responsible where ID=? and Password=?");
st.setString(1,adminid);
st.setString(2,oldPass);
ResultSet rs=st.executeQuery();
if(rs.next()){
    if(newPass.equals(cNewPass)){
    PreparedStatement st1=con.prepareStatement("update responsible set Password=? where ID=?");
    st1.setString(1,newPass);
    st1.setString(2,adminid);
    st1.executeUpdate();
    response.sendRedirect("adminpage.jsp");
    }
    else{
    out.println("new password and confirm password doesn't match");
    }
    }
    else{
    out.println("invalid id/password");
    }
%>
