<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
        margin-bottom: 30px;
    }
    .message {
        background-color: rgba(0, 0, 0, 0.7);
        padding: 30px;
        border-radius: 8px;
        margin-top: 30px;
    }
    .link-btn {
        display: inline-block;
        margin-top: 20px;
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
                AdminBean abean = (AdminBean)session.getAttribute("ab");
                String msg = (String)request.getAttribute("msg");
                out.println("Hello, " + abean.getaLname() + "<br><br>");
                out.println(msg + "<br><br>");
            %>
        </h2>
        <div class="message">
            <a href="AddProduct.html" class="link-btn">Add Product</a><br><br>
            <a href="V44" class="link-btn">View Product</a><br><br>
            <a href="Logout" class="link-btn">Logout</a>
        </div>
    </div>

</body>
</html>
