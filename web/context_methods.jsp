<%-- 
    Document   : context_methods
    Created on : 26.07.2017, 12:49:04
    Author     : rhemmerling
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Some other Context Methods</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Some other Context Methods</h1>
        <ul>
            <li>application.getContextPath(): <%= application.getContextPath() %></li>
            <li>application.getInitParameter("myContentParameter"): <%= application.getInitParameter("myContentParameter") %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
         </ul>
    </body>
</html>
