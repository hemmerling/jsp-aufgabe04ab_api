<%--
    Document   : request_methods
    Created on : 26.07.2017, 12:32:08
    Author     : rhemmerling
--%>

<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="java.util.Locale"%>
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
            <li>request.getAuthType(): <%= request.getAuthType()%></li>
            <li>request.getCharacterEncoding(): <%= request.getCharacterEncoding()%></li>
            <li>request.getContentLength(): <%= request.getContentLength()%></li>
            <li>request.getContextPath(): <%= request.getContextPath()%></li>
            <li>request.getLocalAddr(): <%= request.getLocalAddr()%></li>
            <li>request.getLocalName(): <%= request.getLocalName()%></li>
            <li>request.getMethod(): <%= request.getMethod()%></li>
            <li>request.getPathInfo(): <%= request.getPathInfo()%></li>
            <li>request.getPathTranslated(): <%= request.getPathTranslated()%></li>
            <li>request.getProtocol(): <%= request.getProtocol()%></li>
            <li>request.getQueryString(): <%= request.getQueryString()%></li>
            <li>request.getRemoteAddr(): <%= request.getRemoteAddr()%></li>
            <li>request.getRemoteHost(): <%= request.getRemoteHost()%></li>
            <li>request.getRemoteUser(): <%= request.getRemoteUser()%></li>
            <li>request.getRequestURI(): <%= request.getRequestURI()%></li>
            <li>request.getRequestedSessionId(): <%= request.getRequestedSessionId()%></li>
            <li>request.getScheme(): <%= request.getScheme()%></li>
            <li>request.getServerName(): <%= request.getServerName()%></li>
            <li>request.getServletPath(): <%= request.getServletPath()%></li>
            <li>request.toString(): <%= request.toString()%></li>
            <li>request.authenticate(response): <%= request.authenticate(response)%></li>
            <li>request.getAsyncContext(): <%= request.getAsyncContext()%></li>
            <li>request.getClass(): <%= request.getClass()%></li>
            <li>request.getContentLength(): <%= request.getContentLength()%></li>
            <li>request.getContentLengthLong(): <%= request.getContentLengthLong()%></li>
            <li>request.getCookies(): <%
                Cookie[] cookies = request.getCookies();
                for (Cookie cookie : cookies) {
                    out.print(cookie.getName() + " ");
                }
                %></li>
            <li>request.getHeader("Date"): <%= request.getHeader("Date")%></li>
            <li>request.getDateHeader: <%= request.getDateHeader("Date")%></li>
            <!-- name - a String specifying the name of the header -->
            <li>request.getDispatcherType(): <%= request.getDispatcherType()%></li>
            <li>request.getInputStream(): <%
                ServletInputStream servletInputStream = request.getInputStream();
                out.println(servletInputStream.getClass().getName());
                %></li>
            <li>request.getIntHeader("Date"): <%= request.getIntHeader("Test")%></li>
            <! name - a String specifying the name of the header.
            Returns the value of the specified request header as an int.
            If the request does not have a header of the specified name,
            this method returns -1. If the header cannot be converted to an integer,
            this method throws a NumberFormatException.
            -->
            <li>request.getLocalPort(): <%= request.getLocalPort()%></li>
            <li>request.getLocale(): <%= request.getLocale()%></li>
            <li><s></s>request.getReader():</s> =&gt; "java.lang.IllegalStateException: getInputStream() has already been called for this request"</li>
            <li>request.getRemotePort(): <%= request.getRemotePort()%></li>
            <li>request.getRequestDispatcher("index.jsp"):
                <%  RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                    out.println(requestDispatcher.getClass().getName());
                %></li>
            <li>request.getRequestURL(): <%= request.getRequestURL()%></li>
            <li>request.getServerPort(): <%= request.getServerPort()%></li>
            <li>request.getServletContext():
                <%  ServletContext servletContext = request.getServletContext();
                    out.println(requestDispatcher.getClass().getName());
                %></li>
            <li>request.getSession():
                <%  HttpSession httpSession1 = request.getSession();
                    out.println(httpSession1.getClass().getName());
                %></li>
            <li>request.getSession():
                <%  HttpSession httpSession2 = request.getSession(true);
                    out.println(httpSession2.getClass().getName());
                %></li>
            <li>request.getUserPrincipal(): <%= request.getUserPrincipal()%></li>
            <li>request.hashCode(): <%= request.hashCode()%></li>
            <li>request.isAsyncStarted(): <%= request.isAsyncStarted()%></li>
            <li>request.isAsyncSupported(): <%= request.isAsyncSupported()%></li>
            <li>request.isRequestedSessionIdFromCookie(): <%= request.isRequestedSessionIdFromCookie()%></li>
            <li>request.isRequestedSessionIdFromURL(): <%= request.isRequestedSessionIdFromURL()%></li>
            <li>request.isRequestedSessionIdValid(): <%= request.isRequestedSessionIdValid()%></li>
            <li>request.isSecure(): <%= request.isSecure()%></li>
            <li>request.request.isUserInRole("Test"): <%= request.isUserInRole("Test")%></li>
            <li>request.request.login("username", "password"):
                <% try {
                        request.login("username", "password");
                    } catch (Exception e) {
                        out.println("<I>request.login('username', 'password') failed</I>");
                    }%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.logout(): <% request.logout(); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.notify():
                <% try {
                        request.notify();
                    } catch (Exception e) {
                        out.println("<I>request.notify() failed</I>");
                    } %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.notifyAll():
                <% try {
                        request.notifyAll();
                    } catch (Exception e) {
                        out.println("<I>request.notify() failed</I>");
                    }%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.getAttribute("MYATTRIBUTE"):<%= request.getAttribute("MYATTRIBUTE")%></li>
            <li>request.removeAttribute("MYATTRIBUTE"): <% request.removeAttribute("MYATTRIBUTE");%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.getAttribute("MYATTRIBUTE"):<%= request.getAttribute("MYATTRIBUTE")%></li>
            <li>request.setCharacterEncoding("UTF-8"):<% request.setCharacterEncoding("UTF-8"); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.setCharacterEncoding("UTF-7"):
                <% try {
                        request.setCharacterEncoding("UTF-7");
                    } catch (UnsupportedEncodingException e) {
                        out.println("<I>java.io.UnsupportedEncodingException: The character encoding [utf-7] is not supported</I>");
                    } %></li>
            <li>request.startAsync():
                <% if (true) {
                        try {
                            request.startAsync();
                        } catch (IllegalStateException e) {
                            out.println("<I>java.lang.IllegalStateException: A filter or servlet of the current chain does not support asynchronous operations</I>");
                        }
                    } %></li>
            <li>request.startAsync(servletRequest, servletResponse): We don't call the request here in this JSP demo</li>
            <li>request.upgrade(handlerClass): We don't call the request here in this JSP demo</li>
            <li>request.wait(): 
                <% if (false) {
                        try {
                            request.wait();
                        } catch (InterruptedException e) {
                            out.println("<I>InterruptedException</I>");
                        }
                    } %> - We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.wait(1):
                <% if (false) {
                        try {
                            request.wait(1);
                        } catch (InterruptedException e) {
                            out.println("<I>InterruptedException</I>");
                        }
                    } %> - We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>request.wait(1, 1):
                <% if (false) {
                        try {
                            request.wait(1, 1);
                        } catch (InterruptedException e) {
                            out.println("<I>InterruptedException</I>");
                        }
                    }%> - We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
        </ul>
    </body>
</html>
