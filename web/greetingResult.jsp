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
        <style>
            .center{
                text-align: center;
                background-color: black;
            }
            h1{
                color: chartreuse;
            }
            p{
                color:chartreuse;
                font-family: fantasy;
            }
        </style>
    </head>
    <body class="center">
        <h1>Our Robot has done some computing and has the following result</h1>
        <p>
            <%
                String greetingMessage = (String)request.getAttribute("Greeting");
                out.print(greetingMessage);
            %>
        </p>
    </body>
</html>
