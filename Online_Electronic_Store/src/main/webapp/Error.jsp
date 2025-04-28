<%@page import="jakarta.servlet.http.HttpServletResponse"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error - Invalid Request</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #ff7e5f, #feb47b);
        color: white;
        margin: 0;
        padding: 0;
    }
    .container {
        text-align: center;
        padding: 80px 20px;
    }
    h2 {
        font-size: 36px;
        color: #ffffff;
    }
    .error-message {
        background-color: rgba(0, 0, 0, 0.7);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        margin-top: 20px;
    }
    .link-btn {
        display: inline-block;
        margin-top: 20px;
        font-size: 18px;
        padding: 10px 20px;
        color: #ffffff;
        background-color: #4CAF50;
        border-radius: 5px;
        text-decoration: none;
    }
    .link-btn:hover {
        background-color: #45a049;
    }
    .back-btn {
        display: inline-block;
        margin-top: 20px;
        font-size: 18px;
        padding: 10px 20px;
        color: #ffffff;
        background-color: #f44336;
        border-radius: 5px;
        text-decoration: none;
    }
    .back-btn:hover {
        background-color: #e53935;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>
            <% 
                String s = (String)request.getAttribute("msg");
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, s);
            %>
            <div class="error-message">
                <%=s%><br><br>
            </div>
        
            <a href="AddProduct.html" class="link-btn">Add Product</a><br>
            <a href="V44" class="link-btn">View Product</a><br>
            <a href="Logout" class="back-btn">Logout</a>
        </h2>
    </div>

</body>
</html>
