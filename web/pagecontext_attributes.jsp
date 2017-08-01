<%-- 
    Document   : context_attributes
    Created on : 26.07.2017, 12:48:48
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("MY_PAGECONTEXT_ATTRIBUTE", "MyPageContextAttribute", PageContext.PAGE_SCOPE); //1 %>

<% request.setAttribute("MY_REQUEST_ATTRIBUTE", "MyRequestAttribute"); // 2 %>
<% pageContext.setAttribute("MY_REQUEST_ATTRIBUTE2", "MyRequestAttribute2", PageContext.REQUEST_SCOPE); //2 %>

<% session.setAttribute("MY_SESSION_ATTRIBUTE", "MySessionAttribute"); %>
<% pageContext.setAttribute("MY_SESSION_ATTRIBUTE2", "MySessionAttribute2", PageContext.SESSION_SCOPE); //3 %>

<% application.setAttribute("MY_REQUESTCONTEXT_ATTRIBUTE", "ApplicationAttribute"); %>
<% pageContext.setAttribute("MY_APPLICATION_ATTRIBUTE2", "MyApplicationAttribute2", PageContext.APPLICATION_SCOPE); //4 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PageContents Attributes</title>
    </head>
    <body>
       <jsp:include page = "header.jsp"/>
       <h1>PageContents Attributes</h1>
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
