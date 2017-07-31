<%-- 
    Document   : content_filterregistrations
    Created on : 31.07.2017, 09:46:03
    Author     : rhemmerling
--%>

<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Context ResourcePaths for ( "/" )</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Context ResourcePaths for ( "/" )</h1>
        <p>"java.lang.IllegalArgumentException: Path index.jsp does not start with a '/' character"</p>
        <table style="width:100%" border="1">
            <tr>
                <th>ServletRegistration Value</th>
            </tr>
            <% Set<String> set;
               set = (Set<String>) application.getResourcePaths("/");
               for (String s : set) {
            %>
            <tr>
                <td>
                    <%= s%>
                </td>
             </tr>
            <% }%>
        </table>
    </body>
</html>
