<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged Out</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #ff8c00, #ff6a00);
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
    .message {
        background-color: rgba(0, 0, 0, 0.7);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        margin-top: 20px;
    }
    .login-btn {
        display: inline-block;
        margin-top: 30px;
        font-size: 18px;
        padding: 12px 25px;
        color: #ffffff;
        background-color: #4CAF50;
        border-radius: 5px;
        text-decoration: none;
    }
    .login-btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>
            <%
                session.invalidate();
                out.println("Logged Out Successfully!<br><br>");
            %>
            <div class="message">
                <a href="index.html" class="login-btn">Go to Login Page</a>
            </div>
        </h2>
    </div>

</body>
</html>
