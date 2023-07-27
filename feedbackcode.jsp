<%@page import="java.sql.Connection"%>
    <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>
  <%@page import="java.sql.ResultSet"%>
  <%@page import="java.util.Date" %>
  <%@page import="java.text.DateFormat" %>
  <%@page import="java.text.SimpleDateFormat" %>
<%
//    Date date= new Date();
    //DateFormat date = new SimpleDateFormat("yyyy-mm-dd");
    //String strdate=date.format(date);
    String userId=request.getParameter("id");
    String userName=request.getParameter("name");
     String messageUser=request.getParameter("feedback");
     //String complain=request.getParameter("compalain");
     //String comDate=request.getParameter("date");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st = con.prepareStatement("insert into userfeedbackinsert values(?,?,?)");
    st.setString(1,userId);
    st.setString(2,userName);
    st.setString(3,messageUser);
    //st.setString(4,strdate);
//    st.setString(5,city);
    st.executeUpdate();
    response.sendRedirect("feedback.jsp");
    con.close();
    
%>