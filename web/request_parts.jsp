<%-- 
    Document   : request_parts
    Created on : 28.07.2017, 12:51:25
    Author     : rhemmerling
--%>

<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Parts</title>
    </head>
    <body>
          <jsp:include page = "header.jsp"/>
        <h1>Request Parts</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Header Name</th>
                <th>Header Contents</th>
            </tr>
            <% Collection<Part> coll2;
                coll2 = request.getParts();
                for (Part name:coll2) {
            %>
            <tr>
                <td>
                    <%= name%>
                </td>
                <td>
                    <%= request.getPart(name.getName())%>
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
