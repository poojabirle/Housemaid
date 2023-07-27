<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String id=request.getParameter("id");
    String pass=request.getParameter("password");
    String name=request.getParameter("username");
    String cont=request.getParameter("contact");
    String dob=request.getParameter("DOB");
    String gend=request.getParameter("gender");
    String mail=request.getParameter("email");
    String add=request.getParameter("address");
    String city=request.getParameter("City");
   // String pin=request.getParameter("pincode");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st=con.prepareStatement("insert into useraccountinsert values(?,?,?,?,?,?,?,?,?)");
    st.setString(1,id);
    st.setString(2,pass);
    st.setString(3,name);
    st.setString(4,cont);
    st.setString(5,dob);
    st.setString(6,gend);
    st.setString(7,mail);
    st.setString(8,add);
    st.setString(9,city);
    //st.setString(10,pin);
    st.executeUpdate();
    response.sendRedirect("home.jsp");
    con.close();
%>


