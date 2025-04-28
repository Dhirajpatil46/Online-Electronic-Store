<%@page import="oracle.jdbc.proxy.annotation.Post"%>
<%@page import="java.util.Iterator"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
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
        padding: 80px 20px;
    }
    h1, h2 {
        font-size: 36px;
        margin-bottom: 20px;
    }
    h3 {
        font-size: 24px;
        color: #ff6347;
    }
    .product-list {
        background-color: rgba(0, 0, 0, 0.6);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        display: inline-block;
        width: 100%;
        max-width: 800px;
    }
    .product-item {
        font-size: 18px;
        margin-bottom: 15px;
        padding: 10px;
        background-color: rgba(255, 255, 255, 0.2);
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }
    .product-item:hover {
        background-color: rgba(255, 255, 255, 0.4);
    }
    a {
        color: #4CAF50;
        text-decoration: none;
        padding: 6px 12px;
        border: 2px solid #4CAF50;
        border-radius: 5px;
        font-size: 16px;
        margin-top: 10px;
        display: inline-block;
    }
    a:hover {
        background-color: #4CAF50;
        color: white;
        border: 2px solid #45a049;
    }
    footer {
        position: fixed;
        bottom: 20px;
        width: 100%;
        text-align: center;
        color: white;
        font-size: 16px;
    }
</style>
</head>
<body>

    <div class="container">
        <h1>Welcome to the Product Details Page</h1>

        <h2>
            <%
                CustomerBean cbean = (CustomerBean)session.getAttribute("cb1");
                ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("ProductList");

                out.println("Hello " + cbean.getFNAME() + ", These are your Product Details");
            %>
        </h2>

        <div class="product-list">
            <%
                if (al.size() == 0) {
                    out.println("<h3>No products available at the moment!</h3>");
                } else {
                    Iterator<ProductBean> i = al.iterator();
                    while (i.hasNext()) {
                        ProductBean pb = i.next();
                        out.println("<div class='product-item'>");
                        out.println(pb.getPCode() + " " + pb.getPName() + " " + pb.getPCompany() + " " +
                                    pb.getPPrice() + " " + pb.getPQty() + " ");
                        out.println("<a href='buy?pcode=" + pb.getPCode() + "'>Buy</a>");
                        out.println("</div>");
                    }
                }
            %>
        </div>

        <!-- Logout button above the footer -->
        <a href="Logout">Logout</a>
    </div>

    <footer>
        <p>&copy; 2025 YourCompany. All rights reserved.</p>
    </footer>

</body>
</html>
