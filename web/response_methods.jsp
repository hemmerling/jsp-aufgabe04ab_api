<%-- 
    Document   : response_methods
    Created on : 26.07.2017, 12:32:35
    Author     : rhemmerling
--%>

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
          <li>response.getHeader("Date"): <%= response.getHeader("Date") %></li>
       </ul>
     </body>
</html>
