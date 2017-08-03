<%-- 
    Document   : session_methods
    Created on : 26.07.2017, 12:33:39
    Author     : rhemmerling
--%>

<%@page import="java.util.Enumeration"%>
<% application.setAttribute("MY_APPLICATION_ATTRIBUTE4A", "MyApplicationAttribute4A"); %>
<% pageContext.setAttribute("MY_APPLICATION_ATTRIBUTE4B", "MyApplicationAttribute4A", PageContext.APPLICATION_SCOPE); //4 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Some other PageContext Methods</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Some other PageContext Methods</h1>
        <ul>
            <li>pageContext.findAttribute("MY_APPLICATION_ATTRIBUTE4A"): <%= pageContext.findAttribute("MY_APPLICATION_ATTRIBUTE4A")%></li>
            <li>pageContext.findAttribute("MY_APPLICATION_ATTRIBUTE4B"): <%= pageContext.findAttribute("MY_APPLICATION_ATTRIBUTE4B")%></li>
            <li>pageContext.forward(index.html): <% // pageContext.forward("pagecontext_methods.jsp"); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.getClass(): <%= pageContext.getClass().getName().toString()%></li>
            <li>pageContext..getELContext(): <%= pageContext.getELContext().getClass().toString()%></li>
            <li>pageContext.getErrorData(): <%= pageContext.getErrorData().getClass().toString()%></li>
            <li>pageContext.getException(): <%= pageContext.getException()%></li>
            <li>pageContext.getOut(): <%= pageContext.getOut().getClass().toString()%></li>
            <li>pageContext.getPage(): <%= pageContext.getPage().getClass().toString()%></li>
            <li>pageContext.getRequest(): <%= pageContext.getRequest().getClass().toString()%></li>
            <li>pageContext.getResponse(): <%= pageContext.getResponse().getClass().toString()%></li>
            <li>pageContext.getServletConfig().getServletName(): <%= pageContext.getServletConfig().getServletName()%></li>
            <li>pageContext.getServletContext().getServerInfo(): <%= pageContext.getServletContext().getServerInfo()%></li>
            <li>pageContext.getSession().getId(): <%= pageContext.getSession().getId()%></li>
            <li>pageContext.handlePageException(e): <% // pageContext.handlePageException(e) %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.handlePageException(t): <% // pageContext.handlePageException(t) %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.hashCode(): <%= pageContext.hashCode()%></li>
            <li>pageContext.include("include.inc"): <% pageContext.include("include.txt"); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.include("include.inc", true): <% pageContext.include("include.txt", true); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.pageContext.initialize(servlet, request, response, errorPageURL, needsSession, bufferSize, autoFlush): We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.notify(): <% // application.notify(); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.notifyAll(): <% // application.notifyAll() %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.popBody(): <% pageContext.popBody(); %> - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.pushBody(): <% // pageContext.pushBody(); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.pushBody(writer): <% // pageContext.pushBody(writer); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.release(): <% // pageContext.release(); %> We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li>
            <li>pageContext.wait(); pageContext.wait(1); pageContext.wait(1,1):
                <% if (false) {
                        try {
                            application.wait();
                            application.wait(1);
                            application.wait(1, 1);
                        } catch (InterruptedException e) {
                            out.println("<I>InterruptedException</I>");
                        }
                    }%> - We don't call the request here in this JSP demo - "The method print(boolean) in the type JspWriter is not applicable for the arguments (void)"</li> 
        </ul>
    </body>
</html>
