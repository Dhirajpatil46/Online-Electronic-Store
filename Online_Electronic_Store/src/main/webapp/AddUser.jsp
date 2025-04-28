<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Actions</title>
<style>
    body {
        background: linear-gradient(to right, #a1c4fd, #c2e9fb);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        background-color: white;
        padding: 40px;
        margin: 100px auto;
        width: 450px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.25);
        text-align: center;
    }
    h1 {
        color: #333;
        margin-bottom: 30px;
    }
    a {
        display: inline-block;
        margin: 15px;
        padding: 12px 20px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        font-size: 18px;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>
            <%
                CustomerBean cb = (CustomerBean)session.getAttribute("cb1");
                String msg = (String)request.getAttribute("msg");
                if (msg != null) {
                    out.println(msg + "<br><br>");
                } else {
                    out.println("Welcome!<br><br>");
                }
            %>
        </h1>
        <a href="Vi4">View Products</a><br>
        <a href="CustomerLogin.html">Customer Login</a>
    </div>
</body>
</html>
