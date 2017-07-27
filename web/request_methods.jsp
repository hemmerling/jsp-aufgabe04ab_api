<%-- 
    Document   : request_methods
    Created on : 26.07.2017, 12:32:08
    Author     : rhemmerling
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Methods</title>
    </head>
    <body>
        <jsp:include page = "header.jsp"/>
        <h1>Request Method Names</h1>
        <table style="width:100%" border="1">
            <tr>
                <th>Method Name</th>
            </tr>
            <td>
                <%=request.getMethod() %>
            </td>
        </tr>
    </table>
</body>
</html>
