<%@ page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee Data</title>
<style>
    body {
        background: linear-gradient(to right, #ffecd2, #fcb69f);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        background-color: white;
        padding: 40px;
        margin: 120px auto;
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
        <h1>
            <%
                AdminBean ab = (AdminBean)session.getAttribute("ab");
                String msg = (String)request.getAttribute("msg");
                if (ab != null && msg != null) {
                    out.println("Mr. " + ab.getaFname() + " " + msg + "!!<br>");
                } else {
                    out.println("Welcome!<br>");
                }
            %>
        </h1>
        <a href="AddProduct.html">Add Product Details</a><br>
        <a href="V44">View Product Details</a>
    </div>
</body>
</html>
