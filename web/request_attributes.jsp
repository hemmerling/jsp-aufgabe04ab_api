<%-- 
    Document   : newjsprequest_attributes
    Created on : 26.07.2017, 11:42:35
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Attributes</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>Request Attributes</h1>
       <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
                <th>Attribute Contents</th>
            </tr>
            <% Enumeration enum2;
                enum2 = request.getAttributeNames();
                while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name %>
                </td>
                <td>
                    <%= request.getAttribute(name) %>
                </td>
            </tr>
            <% }%>
         </table>
 
        <h1>Request Attribute Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
            </tr>
            <% Enumeration enum1;
                enum1 = request.getAttributeNames();
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
