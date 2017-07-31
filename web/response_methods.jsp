<%-- 
    Document   : response_methods
    Created on : 26.07.2017, 12:32:35
    Author     : rhemmerling
--%>

<%@page import="javax.servlet.http.HttpServletResponse.*"%>
<%@page import="java.util.Locale"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Some other Response Methods</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Some other Response Methods</h1>
        <ul>
            <li>response.encodeRedirectURL("index.jsp"): <%= response.encodeRedirectURL("index.jsp")%></li>
            <li>response.encodeURL("index.jsp"): <%= response.encodeURL("index.jsp")%></li>
            <li>response.getCharacterEncoding(): <%= response.getCharacterEncoding()%></li>
            <li>response.getContentType(): <%= response.getContentType()%></li>
            <li>response.toString(): <%= response.toString()%></li>
            <li>response.addCookie(new Cookie("MYCOOKIE","MyCookie"): <% response.addCookie(new Cookie("MYCOOKIE", "MyCookie"));%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("DATE"): <%= response.getHeader("DATE")%></li>
            <li>response.addDateHeader("DATE", new Date().getTime()): <% response.addDateHeader("DATE", new Date().getTime() - 365 * 24 * 60 * 60 * 1000L);%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("DATE"): <%= response.getHeader("DATE")%></li>
            <li>response.addDateHeader("DATE", new Date().getTime()): <% response.addDateHeader("DATE", new Date().getTime());%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("DATE"): <%= response.getHeader("DATE")%></li>
            <li>response.getHeader("MYINTHEADER"): <%= response.getHeader("MYINTHEADER")%></li>
            <li>response.containsHeader("MYINTHEADER"): <%= response.containsHeader("MYINTHEADER")%></li>
            <li>response.addIntHeader("MYINTHEADER", 88): <% response.addIntHeader("MYINTHEADER", 88); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.addIntHeader("MYINTHEADER", 77): <% response.addIntHeader("MYINTHEADER", 77);%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("MYINTHEADER"): <%= response.getHeader("MYINTHEADER")%></li>
            <li>response.containsHeader("MYINTHEADER"): <%= response.containsHeader("MYINTHEADER")%></li>
            <li>response.flushBuffer(): <% response.flushBuffer();%>  - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getBufferSize(): <%= response.getBufferSize()%></li>
            <li>response.getClass().getName(): <%= response.getClass().getName()%></li>
            <li>response.getLocale().getCountry(): <%= response.getLocale().getCountry()%></li>
            <li>request.getOutputStream(): <%
                //ServletOutputStream servletOutputStream = response.getOutputStream();
                //out.println(servletOutputStream.getClass().getName());
%> We don't call the request here in this JSP demo</li>
            <li>response.getStatus(): <%= response.getStatus()%></li>
            <li>response.getWriter(:
                <%  PrintWriter printWriter = response.getWriter();
                    out.println(printWriter.getClass().getName());
                %></li>
            <li>response.hashCode(): <%= response.hashCode()%></li>
            <li>response.isCommitted(): <%= response.isCommitted()%></li>
            <li>response..notify(): <% // response.notify(); %>  We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.notifyAll(): <% // response.notifyAll(); %>  We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.reset(): <% // response.reset(); %>  We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.resetBuffer(): <% // response.resetBuffer(); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.sendError(99): <% // response.sendError(99); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.sendError(99, "MyErrorMessage"): <% // response.sendError(99, "MyErrorMessage"); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.sendRedirect("index.jsp"): <% // response.sendRedirect("index.jsp"); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.setBufferSize(8000): <% // response.setBufferSize(8000); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.setCharacterEncoding("UTF-8"): <% response.setCharacterEncoding("UTF-8"); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.setCharacterEncoding("UTF-7"): <% response.setCharacterEncoding("UTF-7"); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("Content-Length"): <%= response.getHeader("Content-Length")%></li>
            <li>response.setContentLength(8192): <% response.setContentLength(8192); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.setContentLengthLong(8192L): <% response.setContentLengthLong(8192L);%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("Content-Length"): <%= response.getHeader("Content-Length")%></li>
            <li>response.getContentType(): <%= response.getContentType()%></li>
            <li>response.setContentType("text/css"): <% response.setContentType("text/css");%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getContentType(): <%= response.getContentType()%></li>
            <li>response.setDateHeader("DATE2", new Date().getTime()): <% response.setDateHeader("DATE2", new Date().getTime());%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getHeader("DATE2"): <%= response.getHeader("DATE2")%></li>
            <li>response.setIntHeader("MYINTHEADER", 66): <% response.setIntHeader("MYINTHEADER", 66);%></li>
            <li>response.getHeader("MYINTHEADER"): <%= response.getHeader("MYINTHEADER")%></li>
            <li>response.setIntHeader("MYINTHEADER2", 88): <% response.setIntHeader("MYINTHEADER2", 88); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.setIntHeader("MYINTHEADER2", 77): <% response.setIntHeader("MYINTHEADER2", 77);%></li>
            <li>response.getHeader("MYINTHEADER2"): <%= response.getHeader("MYINTHEADER2")%></li>
            <li>response.setLocale(Locale.ENGLISH): <% response.setLocale(Locale.ENGLISH);
               out.println(response.getLocale().getLanguage());%></li>
            <li>response.getLocale().getLanguage(): <%= response.getLocale().getLanguage()%></li>
            <li>response.setStatus(500): <% response.setStatus(500);%> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.getStatus(): <%= response.getStatus()%></li>
            <li>response.wait(): We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.wait(1): We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>response.wait(1, 1): We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
        </ul>
    </body>
</html>
