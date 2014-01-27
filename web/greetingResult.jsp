<%-- 
    Document   : greetingResult
    Created on : Jan 26, 2014, 8:37:18 PM
    Author     : J-Tron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Greeting</title>
    </head>
    <body>
        <h1>Our Robot has done some computing and has the following result</h1>
        <p>
            <%
                String greetingMessage = (String)request.getAttribute("Greeting");
                out.print(greetingMessage);
            %>
        </p>
    </body>
</html>
