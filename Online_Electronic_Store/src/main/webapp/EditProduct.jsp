<%@page import="pack1.ProductBean"%>
<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product Details</title>
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
        padding: 50px 20px;
    }
    h2 {
        font-size: 36px;
        margin-bottom: 20px;
        color: #ffffff;
    }
    form {
        background-color: rgba(0, 0, 0, 0.5);
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        display: inline-block;
        text-align: left;
        width: 100%;
        max-width: 400px;
    }
    input[type="text"] {
        padding: 10px;
        margin: 10px 0;
        width: 100%;
        font-size: 16px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        padding: 12px 25px;
        margin-top: 20px;
        font-size: 18px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
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
                AdminBean abean = (AdminBean)session.getAttribute("ab");
                ProductBean pbean = (ProductBean)request.getAttribute("pbean");
                out.println("Hello " + abean.getaFname() + ", These are your Product Details available for edit!");
            %>
        </h2>

        <form action="update" method="post">
            Product Price <input type="text" name="pPrice" value="<%=pbean.getPPrice() %>"><br><br>
            Product Qty <input type="text" name="pQty" value="<%=pbean.getPQty() %>"><br><br>    
            <input type="hidden" name="pCode" value="<%=pbean.getPCode()%>">    
            <input type="submit" value="Update">        
        </form>

        <a href="AdminHome.jsp" class="back-btn">Back to Admin Home</a>
    </div>

</body>
</html>
