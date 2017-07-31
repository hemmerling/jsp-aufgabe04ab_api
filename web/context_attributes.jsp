<%-- 
    Document   : context_attributes
    Created on : 26.07.2017, 12:48:48
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% application.setAttribute("MYATTRIBUTE", new Object()); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Context Attributes</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>Context Attributes</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
                <th>Attribute Contents</th>
            </tr>
            <% //ServletContext context2 = request.getServletContext();           
               Enumeration enum2;
               enum2 = application.getAttributeNames();
               while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name %>
                </td>
                <td>
                    <%= application.getAttribute(name) %>
                </td>
            </tr>
            <% }%>
         </table>
 
        <h1>Context Attribute Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
            </tr>
            <% // ServletContext context1 = request.getServletContext();
               Enumeration enum1;
               enum1 = application.getAttributeNames();
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
