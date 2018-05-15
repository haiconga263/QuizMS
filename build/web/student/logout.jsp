<%-- 
    Document   : logout.jsp
    Created on : May 11, 2018, 2:51:35 PM
    Author     : hieptd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../login.jsp");
%>