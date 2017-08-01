<%-- 
    Document   : context_attributes
    Created on : 26.07.2017, 12:48:48
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("MY_PAGECONTEXT_ATTRIBUTE1A", "MyPageContextAttribute1A"); //1 %>
<% pageContext.setAttribute("MY_PAGECONTEXT_ATTRIBUTE1B", "MyPageContextAttribute1B", PageContext.PAGE_SCOPE); //1 %>

<% request.setAttribute("MY_REQUEST_ATTRIBUTE2B", "MyRequestAttribute2A"); // 2 %>
<% pageContext.setAttribute("MY_REQUEST_ATTRIBUTE2B", "MyRequestAttribute2B", PageContext.REQUEST_SCOPE); //2 %>

<% session.setAttribute("MY_SESSION_ATTRIBUTE3A", "MySessionAttribute3A"); %>
<% pageContext.setAttribute("MY_SESSION_ATTRIBUTE3B", "MySessionAttribute3B", PageContext.SESSION_SCOPE); //3 %>

<% application.setAttribute("MY_APPLICATION_ATTRIBUTE4A", "ApplicationAttribute4A"); %>
<% pageContext.setAttribute("MY_APPLICATION_ATTRIBUTE4B", "MyApplicationAttribute4A", PageContext.APPLICATION_SCOPE); //4 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PageContext Attributes</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>PageContext Attributes</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Attribute Name</th>
                <th>Scope</th>
                <th>Attribute Contents</th>
            </tr>
            <% //ServletContext context2 = request.getServletContext();           
               Enumeration enum2;
               enum2 = pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE);
               // java.lang.IllegalArgumentException: Invalid scope
               while (enum2.hasMoreElements()) {
                    String name = enum2.nextElement().toString();
            %>
            <tr>
                <td>
                    <%= name %>
                </td>
                <td>
                    <%= pageContext.getAttributesScope(name) %>
                </td>
                <td>
                    <%= pageContext.getAttribute(name, PageContext.APPLICATION_SCOPE) %>
                </td>
            </tr>
            <% }%>
         </table>
 
        <h1>PageContext Attribute Names</h1>
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
