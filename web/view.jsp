<%--
    Document   : createperson
    Created on : 17.07.2017, 17:33:53
    Author     : Administrator
--%>

<%@page import="java.util.Map"%>
<%@page import="com.hemmerling.aufgabe04ab.controller.Topic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Topic topic = (Topic) session.getAttribute("topic");
    if (topic == null /* || items.isEmpty() */) {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP API</title>
    </head>
    <body>
        <H1>JSP API</H1>
    </body>
</html>
<% } else {%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <%= topic.getTitle()%>            
        </title>
    </title>
</head>
<body>
    <jsp:include page = "header.jsp" />
    <h1>
        <%= topic.getTitle()%>
    </h1>
    <table style="width:100%" border="1">
        <tr>
            <th><%=topic.getLeftHeader()%></th>
            <th><%=topic.getRightHeader()%></th>
        </tr>
        <% Map<String, String[]> map;
            map = topic.getContentMap();
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
                <% } %>
            </td>
        </tr>
        <% } %>
    </table>
</body>
</html>
<% }%>
