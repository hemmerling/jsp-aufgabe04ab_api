<%-- 
    Document   : response_headers
    Created on : 26.07.2017, 12:32:22
    Author     : rhemmerling
--%>

<%@page import="java.util.Collection"%>
<% response.setHeader("Content-Language","en"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response Headers</title>
    </head>
    <body>
          <jsp:include page = "header.jsp"/>
        <h1>Response Headers</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Header Name</th>
                <th>Header Contents</th>
            </tr>
            <% Collection<String> coll2;
                coll2 = response.getHeaderNames();
                for (String item:coll2) {
            %>
            <tr>
                <td>
                    <%= item%>
                </td>
                <td>
                    <%= response.getHeader(item)%>
                </td>
            </tr>
            <% }%>
        </table>

        <h1>Response Header Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Header Name</th>
            </tr>
            <% Collection<String> coll1;
                coll1 = response.getHeaderNames();
                for (String item:coll1) {
            %>
            <tr>
                <td>
                    <%=item %>
                </td>
            </tr>
            <% }%>
        </table>      
   </body>
</html>

