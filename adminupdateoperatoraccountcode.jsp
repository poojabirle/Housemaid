<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
String oId=request.getParameter("id1");
String oName=request.getParameter("name");
String oGender=request.getParameter("gender");
String oContact=request.getParameter("contact");
String oEmail=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        PreparedStatement st=con.prepareStatement("update operatordetails set Name=?, Gender=?, Contact=?, Email=? where ID=?");
        st.setString(1,oName);
        st.setString(2,oGender);
        st.setString(3,oContact);
        st.setString(4,oEmail);
        st.setString(5,oId);
        st.executeUpdate();
        con.close();
        response.sendRedirect("adminupdateoperatoraccount.jsp");
%>