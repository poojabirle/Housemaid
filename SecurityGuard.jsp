<%
    response.addHeader("Pragma", "no-cache");
    response.addHeader("cache-control","no-control");
    String value=(String)session.getAttribute("CALL");
    if(value==null){
    response.sendRedirect("home.jsp");
    }
    if(session==null){
    response.sendRedirect("home.jsp");
    }
%>
