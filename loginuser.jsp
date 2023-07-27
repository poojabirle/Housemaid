<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>

<%
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
            out.println("welcome....");
        }
        else {
            out.println("invalid id/password");
        }
    }
%>
