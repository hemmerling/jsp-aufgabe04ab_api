<%--
    Document   : request_parameters
    Created on : 17.07.2017, 11:56:03
    Author     : Rolf Hemmerling
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Parameters</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Request Parameter</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Parameter Name</th>
                <th>Parameter Value</th>
            </tr>
            <% Map<String, String[]> map;
                map = (Map<String, String[]>) request.getParameterMap();
                for (Map.Entry m : map.entrySet()) {
            %>
            <tr>
                <td>
                    <%= m.getKey()%>
                </td>
                <td>
                    <% String[] valueArray = (String[]) m.getValue();
                        for (String value : valueArray) {%>
                    <%= value%>                        
                    <%}%>
                </td>
            </tr>
            <% }%>
        </table>

        <h1>Request Parameter</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Parameter Name</th>
                <th>Parameter Value</th>
            </tr>
            <% Enumeration enum2;
                enum2 = request.getParameterNames();
                while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name%>
                </td>
                <td>
                    <%= Arrays.toString(request.getParameterValues(name))%>
                </td>
            </tr>
            <% }%>
        </table>
        <h1>Request Parametersnames</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Parameter Name</th>
            </tr>
            <% Enumeration enum1;
                enum1 = request.getParameterNames();
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
