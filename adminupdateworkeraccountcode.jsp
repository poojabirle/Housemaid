<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
String wId=request.getParameter("id1");
String wName=request.getParameter("name");
String wType=request.getParameter("type");
String wTime=request.getParameter("time");
String wExp=request.getParameter("experience");
String wSalary=request.getParameter("salary");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        PreparedStatement st=con.prepareStatement("update workerinsert set Name=?, Type_of_Worker=?, Available_Time=?, Experience=?, salary=? where ID=?");
        st.setString(1,wName);
        st.setString(2,wType);
        st.setString(3,wTime);
        st.setString(4,wExp);
        st.setString(5,wSalary);
        st.setString(6,wId);
        st.executeUpdate();
        con.close();
        response.sendRedirect("adminupdateworkeraccount.jsp");
%>