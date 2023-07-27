<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
String operatorid=request.getParameter("id");
String oldPass1=request.getParameter("oldpwd");
String newPass1=request.getParameter("newpwd");
String cNewPass1=request.getParameter("cnewpwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("select * from operatordetails1 where Id=? and Password=?");
st.setString(1,operatorid);
st.setString(2,oldPass1);
ResultSet rs=st.executeQuery();
if(rs.next()){
    if(newPass1.equals(cNewPass1)){
    PreparedStatement st1=con.prepareStatement("update operatordetails1 set Password=? where Id=?");
    st1.setString(1,newPass1);
    st1.setString(2,operatorid);
    st1.executeUpdate();
    response.sendRedirect("operatorpage.jsp");
    }
    else{
    out.println("new password and confirm password doesn't match");
    }
    }
    else{
    out.println("invalid id/password");
    }
%>
