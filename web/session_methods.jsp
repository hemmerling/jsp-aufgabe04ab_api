<%-- 
    Document   : session_methods
    Created on : 26.07.2017, 12:33:39
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Some other Session Methods</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>Some other Session Methods</h1>
            <li>session.getId(): <%= session.getId() %></li>
            <li>session.toString(): <%= session.toString() %></li>
            <li>session.getClass(): <%= session.getClass() %></li>
            <li>session.getCreationTime(): <%= session.getCreationTime() %></li>
            <li>session.getLastAccessedTime(): <%= session.getLastAccessedTime() %></li>
            <li>session.getMaxInactiveInterval(): <%= session.getMaxInactiveInterval() %></li>
            <li>session.getServletContext(): <%= session.getServletContext() %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>
            <li>session.: <%= session %></li>

    </body>
</html>
