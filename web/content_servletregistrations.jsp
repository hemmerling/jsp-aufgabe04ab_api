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
        <title>Context ServletRegistrations</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Context ServletRegistrations</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>ServletRegistration Name</th>
                <th>ServletRegistration Value</th>
            </tr>
            <% Map<String, ? extends ServletRegistration> map;
                map = (Map<String, ? extends ServletRegistration>) application.getServletRegistrations();
                for (Map.Entry m : map.entrySet()) {
            %>
            <tr>
                <td>
                    <%= m.getKey()%>
                </td>
                <td>
                    <%=  ((ServletRegistration) m.getValue()).getClassName() %>
                </td>
            </tr>
            <% }%>
        </table>
    </body>
</html>
