<%-- 
    Document   : request_headers
    Created on : 26.07.2017, 11:42:10
    Author     : rhemmerling
--%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Headers</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Request Headers</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Header Name</th>
                <th>Header Contents</th>
            </tr>
            <% Enumeration enum2;
                enum2 = request.getHeaderNames();
                while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name%>
                </td>
                <td>
                    <%= request.getHeader(name)%>
                </td>
            </tr>
            <% }%>
        </table>

        <h1>Request Header Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Header Name</th>
            </tr>
            <% Enumeration enum1;
                enum1 = request.getHeaderNames();
                while (enum1.hasMoreElements()) {
            %>
            <tr>
                <td>
                    <%= enum1.nextElement().toString()%>
                </td>
            </tr>
            <% }%>
        </table>
    </body>
</html>
