<%-- 
    Document   : context_methods
    Created on : 26.07.2017, 12:49:04
    Author     : rhemmerling
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Some other Context Methods</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Some other Context Methods</h1>
        <ul>
            <li>application.getContextPath(): <%= application.getContextPath() %></li>
            <li>application.getInitParameter("myContentParameter"): <%= application.getInitParameter("myContentParameter") %></li>
            <li>application.getMimeType("dummy.html"): <%= application.getMimeType("dummy.html") %></li>
            <li>application.getMimeType("index.jsp"): <%= application.getMimeType("index.jsp") %> - "jsp" is no standard MIME type :-(</li>
            <li>application.getRealPath("index.jsp"): <%= application.getRealPath("/") %></li>
            <li>application.getServerInfo(): <%= application.getServerInfo() %></li>
            <li>application.getServletContextName(): <%= application.getServletContextName() %></li>
            <li>application.getVirtualServerName(): <%= application.getVirtualServerName() %></li>
            <li>application.toString(): <%= application.toString() %></li>
            <li>application.addFilter(filterName, filterClass): Not yet implemented for this demo</li>
            <li>application.addFilter(filterName, filter): Not yet implemented for this demo</li>
            <li>application.addFilter(filterName, className): Not yet implemented for this demo</li>
            <li>application.addListener(listenerClass): Not yet implemented for this demo</li>
            <li>application.addListener(className): Not yet implemented for this demo</li>
            <li>application.addListener(t): Not yet implemented for this demo</li>
            <li>application.addServlet(servletName = "FrontController", servletClass = "FrontController"):
               <% try {
                        application.addServlet("FrontController", "FrontControllerClass");
                    } catch (IllegalStateException e) {
                        out.println("<I>java.lang.IllegalStateException: Servlets can not be added to context /aufgabe04ab_api as the context has been initialised</I>");
                    } %></li>
            <li>application..addServlet(servletName = "FrontController", servlet = "FrontController"):
               <% try {
                        application.addServlet("FrontController", "FrontController");
                    } catch (IllegalStateException e) {
                        out.println("<I>java.lang.IllegalStateException: Servlets can not be added to context /aufgabe04ab_api as the context has been initialised</I>");
                    } %></li>
            <li>application.addServlet(servletName = "FrontController", className = "com.hemmerling.aufgabe04ab.controller.FrontControllerClass"): 
                <% try {
                        application.addServlet("FrontController", "com.hemmerling.aufgabe04ab.controller.FrontControllerClass");
                    } catch (IllegalStateException e) {
                        out.println("<I>java.lang.IllegalStateException: Servlets can not be added to context /aufgabe04ab_api as the context has been initialised</I>");
                    } %></li>
            <li>application.createFilter(clazz): Not yet implemented for this demo</li>
            <li>application.createListener(clazz):  Not yet implemented for this demo</li>
            <li>application.createServlet(clazz):  Not yet implemented for this demo</li>
            <li>application.declareRoles(roleNames):  Not yet implemented for this demo</li>
            <li>application.getClass(): <%= application.getClass() %></li>
            <li>application.getClassLoader(): <%= application.getClassLoader() %></li>
            <li>application.getContext(application.getContextPath()): <%= application.getContext(application.getContextPath()).getClass().getName() %> - "The getContext method is for getting a reference to the ServletContext for a different web application (and the container is allowed by the spec to return null if the current app does not have permission to access other contexts - this is the default in Tomcat unless you've specified crossContext="true" in the context configuration file)"</li>
            <li>application.getDefaultSessionTrackingModes(): <%= application.getDefaultSessionTrackingModes() %></li>
            <li>application.getFilterRegistration(filterName): Not yet implemented for this demo</li>
            <li>application.getJspConfigDescriptor(): <%= application.getJspConfigDescriptor() %></li>
            <li>application.getMajorVersion(): <%= application.getMajorVersion() %></li>
            <li>application.getMinorVersion(): <%= application.getMinorVersion() %></li>
            <li>application.application.getNamedDispatcher("RequestAttributesA"): <%= application.getNamedDispatcher("RequestAttributesA").getClass().getName() %></li>
            <li>application.getRequestDispatcher("/RequestAttributesA"): <%= application.getRequestDispatcher("/RequestAttributesA").getClass().getName() %> - "<i>java.lang.IllegalArgumentException: Path RequestAttributesA does not start with a "/" character</i>"</li>
            <li>application.getResource("index.jsp"): <%= application.getResource("index.jsp") %></li>
            <li>application.getResourceAsStream("index.jsp"): <%= application.getResourceAsStream("index.jsp").getClass().getName() %></li>
            <li>application.getResourcePaths("/"): <%= application.getResourcePaths("/") %> - "java.lang.IllegalArgumentException: Path index.jsp does not start with a '/' character"</li>
            <li>application.getServletRegistration("FrontController"): <%= application.getServletRegistration("FrontController") %></li>
            <li>application.getServletRegistrations(): <%= application.getServletRegistrations() %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
            <li>application.: <%= application %></li>
         </ul>
    </body>
</html>
