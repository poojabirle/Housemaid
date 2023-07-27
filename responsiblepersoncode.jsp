<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%
    String userid = request.getParameter("name");
    String pass = request.getParameter("password");
    String post = request.getParameter("post");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        if (post.equalsIgnoreCase("admin")) {
        PreparedStatement st = con.prepareStatement("select * from admindetails where ID=? and Password=?");
        st.setString(1, userid);
        st.setString(2, pass);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            response.sendRedirect("adminpage.jsp");
        } else {
            out.println("invalid id/password");
        }
        }
        if (post.equalsIgnoreCase("operator")) {
        PreparedStatement st = con.prepareStatement("select * from operatordetails where ID=? and Password=?");
        st.setString(1, userid);
        st.setString(2, pass);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            response.sendRedirect("operatorpage.jsp");
        } 
        else {
            out.println("invalid id/password");
        }
    }
%>