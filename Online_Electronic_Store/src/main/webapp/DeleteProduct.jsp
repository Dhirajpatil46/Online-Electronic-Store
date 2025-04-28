<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Welcome</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #4facfe, #00f2fe);
        color: white;
        margin: 0;
        padding: 0;
    }
    .container {
        text-align: center;
        padding: 100px 20px;
    }
    h2 {
        font-size: 36px;
        margin-bottom: 20px;
        color: #ffffff;
    }
    .message {
        font-size: 24px;
        background-color: rgba(0, 0, 0, 0.5);
        padding: 20px;
        border-radius: 8px;
        margin-top: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    }
    .logout-btn {
        display: inline-block;
        margin-top: 40px;
        font-size: 18px;
        padding: 10px 20px;
        color: #ffffff;
        background-color: #4CAF50;
        border-radius: 5px;
        text-decoration: none;
    }
    .logout-btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>
            <%
                AdminBean abean = (AdminBean)session.getAttribute("ab");
                String msg1 = (String)request.getAttribute("msg");
                
                out.println("Hello " + abean.getaFname() + "<br><br>");
                out.println("<div class='message'>" + msg1 + "</div>");
            %>
        </h2>

        <a href="Logout" class="logout-btn">Logout</a>
    </div>

</body>
</html>
