<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #00c6ff, #0072ff);
        color: white;
        margin: 0;
        padding: 0;
    }
    .container {
        text-align: center;
        padding: 60px 20px;
    }
    h2 {
        font-size: 28px;
        color: white;
        margin-bottom: 20px;
    }
    .message {
        background-color: rgba(0, 0, 0, 0.7);
        padding: 20px;
        border-radius: 8px;
        margin-top: 20px;
    }
    .link-btn {
        display: inline-block;
        margin-top: 30px;
        font-size: 18px;
        padding: 12px 25px;
        color: white;
        background-color: #4CAF50;
        border-radius: 5px;
        text-decoration: none;
    }
    .link-btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>
            <%
                CustomerBean abean = (CustomerBean)session.getAttribute("cb1");
                String msg = (String)request.getAttribute("msg");
                String msg1 = (String)request.getAttribute("msg1");
                out.println("Hello " + abean.getFNAME() + "<br><br>");
                out.println(msg1 + "<br><br>");
                out.println(msg + "<br><br>");
            %>
        </h2>
        <div class="message">
            <a href="Vi5" class="link-btn">View Product</a><br><br>
            <a href="Logout" class="link-btn">Logout</a>
        </div>
    </div>

</body>
</html>
