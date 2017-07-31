<%-- 
    Document   : content_filterregistrations
    Created on : 31.07.2017, 09:46:03
    Author     : rhemmerling
--%>

<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Context FilterRegistrations</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Context FilterRegistrations</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>FilterRegistration Name</th>
                <th>FilterRegistration Value</th>
            </tr>
            <% Map<String, FilterRegistration> map;
                map = (Map<String, FilterRegistration>) application.getFilterRegistrations();
                for (Map.Entry m : map.entrySet()) {
            %>
            <tr>
                <td>
                    <%= m.getKey()%>
                </td>
                <td>
                    <%=  ((FilterRegistration) m.getValue()).getClassName() %>
                </td>
            </tr>
            <% }%>
        </table>
    </body>
</html>
