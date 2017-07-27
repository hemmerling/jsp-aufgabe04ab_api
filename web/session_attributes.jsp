<%-- 
    Document   : session_attributes
    Created on : 26.07.2017, 12:33:22
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<% String aRequestParameter = request.getParameter("myAction");
    if(aRequestParameter == null) {
        aRequestParameter = "Request parameter not set";
   }
    session.setAttribute("myAction", aRequestParameter); 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Attributes</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>Session Attributes</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
                <th>Attribute Contents</th>
            </tr>
            <% Enumeration enum2;
                enum2 = session.getAttributeNames();
                while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name %>
                </td>
                <td>
                    <%= session.getAttribute(name) %>
                </td>
            </tr>
            <% }%>
         </table>
 
        <h1>Session Attribute Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
            </tr>
            <% Enumeration enum1;
                enum1 = session.getAttributeNames();
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