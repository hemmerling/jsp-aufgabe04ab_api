<%-- 
    Document   : request_parts
    Created on : 28.07.2017, 12:51:25
    Author     : rhemmerling
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Parts</title>
    </head>
    <body>
          <jsp:include page = "header.jsp"/>
        <h1>Request Parts</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Parts Name</th>
                <th>Parts Contents</th>
            </tr>
            <% Collection<Part> coll2 = new LinkedList<Part>();
               try {
                    coll2 = request.getParts();
               } catch ( IllegalStateException e ) {
                    out.println("<I>java.lang.IllegalStateException: Unable to process parts as no multi-part configuration has been provided</I>");
               };
                for (Part name:coll2) {
            %>
            <tr>
                <td>
                    <%= name%>
                </td>
                <td>
                    <%= request.getPart(name.getName())%>
                </td>
            </tr>
            <% }%>
        </table>

        <h1>Request Parts Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Parts Name</th>
            </tr>
            <% Collection<Part> coll1 = new LinkedList<Part>();
               try {
                    coll1 = request.getParts();
               } catch ( IllegalStateException e ) {
                    out.println("<I>java.lang.IllegalStateException: Unable to process parts as no multi-part configuration has been provided</I>");
               };
                for (Part name:coll1) {
            %>
            <tr>
                <td>
                    <%=name %>
                </td>
            </tr>
            <% }%>
        </table>      
   </body>
</html>
