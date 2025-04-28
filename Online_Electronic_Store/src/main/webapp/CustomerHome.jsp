<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #8e2de2, #4a00e0);
        color: white;
        margin: 0;
        padding: 0;
    }
    .container {
        text-align: center;
        padding: 80px 20px;
    }
    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }
    h2 {
        font-size: 24px;
        margin-bottom: 40px;
        font-weight: normal;
    }
    a {
        text-decoration: none;
        font-size: 22px;
        color: #fff;
        background-color: #4CAF50;
        padding: 10px 20px;
        margin: 10px;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #45a049;
    }
    .welcome-message {
        font-size: 28px;
        color: #fff;
        margin-bottom: 40px;
        font-weight: bold;
    }
    footer {
        position: fixed;
        bottom: 20px;
        width: 100%;
        text-align: center;
        color: #fff;
        font-size: 16px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="welcome-message">
            <%
                CustomerBean abean = (CustomerBean)session.getAttribute("cb1");
                if (abean != null) {
                    out.println("Welcome, Mr. " + abean.getFNAME() + "!");
                } else {
                    out.println("Welcome! Please log in.");
                }
            %>
        </div>
        
        <h2>What would you like to do today?</h2>
        
        <h1><a href="Vi5">View Product!</a></h1>
        <h1><a href="Logout">Logout!</a></h1>
    </div>
    
    <footer>
        <p>&copy; 2025 YourCompany. All rights reserved.</p>
    </footer>
</body>
</html>
