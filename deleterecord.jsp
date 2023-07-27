<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String id=request.getParameter("item");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st=con.prepareStatement("delete from workerinsert where ID=?");
    st.setString(1,id);
    st.executeUpdate();
    response.sendRedirect("view.jsp");
    %>
