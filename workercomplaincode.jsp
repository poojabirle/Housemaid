<%@page import="java.sql.Connection"%>
    <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.PreparedStatement"%>
  <%@page import="java.sql.ResultSet"%>
  <%@page import="java.util.Date" %>
  <%@page import="java.text.DateFormat" %>
  <%@page import="java.text.SimpleDateFormat" %>
  <%

    String userId=request.getParameter("id");
    String userName=request.getParameter("name");
     String complainUser=request.getParameter("complain");
  
        Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306:/test","root","root");
    PreparedStatement st=con.prepareStatement("insert into OperatorWorkerAccountInsert values(?,?,?)");
    st.setString(1,id);
    st.setString(2,name);
    st.setString(3,complain);
    st.executeUpdate();
%>
