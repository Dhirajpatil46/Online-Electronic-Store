<%@page import="pack1.ProductBean"%>
<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
<style>
    body {
        background: linear-gradient(to right, #ff7e5f, #feb47b);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        background-color: white;
        padding: 40px;
        margin: 80px auto;
        width: 500px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.25);
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 30px;
    }
    label {
        font-weight: bold;
        display: block;
        margin: 10px 0 5px;
    }
    input[type="text"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        border: none;
        color: white;
        font-size: 18px;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>
            <%
                // Retrieve CustomerBean from the session
                CustomerBean cbean = (CustomerBean) session.getAttribute("cb1");
                if (cbean != null) {
                    out.println("Hello " + cbean.getFNAME() + ", These are your Product Details available to Buy!<br><br>");
                } else {
                    out.println("Session expired. Please login again.<br><br>");
                }
                
                // Retrieve ProductBean from the request attribute
                ProductBean pbean = (ProductBean) request.getAttribute("pbean");
                if (pbean != null) {
                    out.println("Product Code: " + pbean.getPCode() + "<br>");
                    out.println("Product Name: " + pbean.getPName() + "<br>");
                    out.println("Product Company: " + pbean.getPCompany() + "<br>");
                    out.println("Product Price: " + pbean.getPPrice() + "<br>");
                    out.println("Product Quantity: " + pbean.getPQty() + "<br><br>");
                } else {
                    out.println("Product details not available.<br><br>");
                }
            %>
        </h2>
        <form action="buying" method="post">
            <label for="pCode">Product Code</label>
            <input type="text" id="pCode" name="pCode" value="<%=pbean.getPCode() %>" readonly>

            <label for="pName">Product Name</label>
            <input type="text" id="pName" name="pName" value="<%=pbean.getPName() %>" readonly>

            <label for="pCom">Product Company</label>
            <input type="text" id="pCom" name="pCom" value="<%=pbean.getPCompany() %>" readonly>

            <label for="pPrice">Product Price</label>
            <input type="text" id="pPrice" name="pPrice" value="<%=pbean.getPPrice() %>" readonly>

            <label for="pQty">Product Quantity</label>
            <input type="text" id="pQty" name="pQty" value="<%=pbean.getPQty() %>" readonly>

            <label for="rQty">Required Quantity</label>
            <input type="text" id="rQty" name="rQty" required>

            <input type="hidden" name="pCode" value="<%=pbean.getPCode()%>">
            <input type="submit" value="Buy">
        </form>
    </div>
</body>
</html>
