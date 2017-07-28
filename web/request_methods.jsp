<%-- 
    Document   : request_methods
    Created on : 26.07.2017, 12:32:08
    Author     : rhemmerling
--%>

<%@page import="java.util.Locale"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Some other Request Methods</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Some other Request Method Names</h1>
        <ul>
            <li>request.getAuthType(): <%= request.getAuthType() %></li>
            <li>request.getCharacterEncoding(): <%= request.getCharacterEncoding() %></li>
            <li>request.getContentLength(): <%= request.getContentLength() %></li>
            <li>request.getContextPath(): <%= request.getContextPath() %></li>
            <li>request.getLocalAddr(): <%= request.getLocalAddr() %></li>
            <li>request.getLocalName(): <%= request.getLocalName() %></li>
            <li>request.getMethod(): <%= request.getMethod() %></li>            
            <li>request.getPathInfo(): <%= request.getPathInfo() %></li>
            <li>request.getPathTranslated(): <%= request.getPathTranslated() %></li>
            <li>request.getProtocol(): <%= request.getProtocol() %></li>
            <li>request.getQueryString(): <%= request.getQueryString() %></li>
            <li>request.getRemoteAddr(): <%= request.getRemoteAddr() %></li>
            <li>request.getRemoteHost(): <%= request.getRemoteHost() %></li>
            <li>request.getRemoteUser(): <%= request.getRemoteUser() %></li>
            <li>request.getRequestURI(): <%= request.getRequestURI() %></li>
            <li>request.getRequestedSessionId(): <%= request.getRequestedSessionId() %></li>
            <li>request.getScheme(): <%= request.getScheme() %></li>
            <li>request.getServerName(): <%= request.getServerName() %></li>
            <li>request.getServletPath(): <%= request.getServletPath() %></li>
            <li>request.toString(): <%= request.toString() %></li>
            <li>request.authenticate(response): <%= request.authenticate(response) %></li>
            <li>request.getAsyncContext(): <%= request.getAsyncContext() %></li>
            <li>request.getClass(): <%= request.getClass() %></li>
            <li>request.getContentLength(): <%= request.getContentLength() %></li>
            <li>request.getContentLengthLong(): <%= request.getContentLengthLong() %></li>
            <li>request.getCookies(): <%= request.getCookies() %></li>
            <li>request.getHeader("Date"): <%= request.getHeader("Date") %></li>
            <li>request.getDateHeader: <%= request.getDateHeader("Date") %></li>
            <!-- name - a String specifying the name of the header -->
            <li>request.getDispatcherType(): <%= request.getDispatcherType() %></li>
            <li>request.getInputStream(): <%= request.getInputStream() %></li>
            <li>request.getIntHeader("Date"): <%= request.getIntHeader("Test") %></li>
            <! name - a String specifying the name of the header.
               Returns the value of the specified request header as an int. 
               If the request does not have a header of the specified name, 
               this method returns -1. If the header cannot be converted to an integer, 
               this method throws a NumberFormatException.
            -->
            <li>request.getLocalPort(): <%= request.getLocalPort() %></li>
            <li>request.getLocale(): <%= request.getLocale() %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
            <li>request.: <%= request %></li>
        </ul>
</body>
</html>
