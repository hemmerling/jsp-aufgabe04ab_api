<%-- 
    Document   : context_parameters
    Created on : 26.07.2017, 12:48:32
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Context Parameters</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>Context Parameters</h1>
       <table style="width:100%" border="1">
            <tr>
                <th>Parameter Name</th>
                <th>Parameter Contents</th>
            </tr>
            <% ServletContext context2 = request.getServletContext();
               Enumeration enum2;
               enum2 = context2.getInitParameterNames();
               while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name %>
                </td>
                <td>
                    <%= context2.getInitParameter(name) %>
                </td>
            </tr>
            <% }%>
         </table>
 
        <h1>Context Parameter Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Parameter Name</th>
            </tr>
            <% ServletContext context1 = request.getServletContext();
               Enumeration enum1;
               enum1 = context1.getInitParameterNames();
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
