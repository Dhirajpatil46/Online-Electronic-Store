<%@ page import="pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        background: linear-gradient(to right, #ff6a00, #ee0979);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        background-color: white;
        padding: 40px;
        margin: 100px auto;
        width: 500px;
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
        <%
            AdminBean abean = (AdminBean)session.getAttribute("ab");
            if (abean != null) {
                out.println("<h1> Welcome Mr. " + abean.getaFname() + "</h1>");
            } else {
                out.println("<h1>Welcome Admin</h1>");
            }
        %>
        <h2><a href="AddProduct.html">Add Product</a></h2>
        <h2><a href="V44">View Products</a></h2>
        <h2><a href="Logout">Logout</a></h2>
    </div>
</body>
</html>