<%@page import="oracle.jdbc.proxy.annotation.Post"%>
<%@page import="java.util.Iterator"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Product Management</title>
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
    .product-list {
        background-color: rgba(0, 0, 0, 0.7);
        padding: 30px;
        border-radius: 8px;
        margin-top: 30px;
        color: white;
    }
    .product-item {
        margin-bottom: 15px;
        font-size: 18px;
    }
    .link-btn {
        display: inline-block;
        margin-left: 10px;
        font-size: 16px;
        padding: 8px 15px;
        color: white;
        background-color: #4CAF50;
        border-radius: 5px;
        text-decoration: none;
    }
    .link-btn:hover {
        background-color: #45a049;
    }
    .logout-btn {
        margin-top: 30px;
        font-size: 18px;
        padding: 12px 25px;
        color: white;
        background-color: #f44336;
        border-radius: 5px;
        text-decoration: none;
    }
    .logout-btn:hover {
        background-color: #e53935;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>
            <%
                AdminBean abean = (AdminBean)session.getAttribute("ab");
                ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("ProductList");
                out.println("Hello " + abean.getaFname() + ", These are your Product Details:<br><br>");
            %>
        </h2>

        <div class="product-list">
            <%
                if(al.size() == 0) {
                    out.println("<h3>Products are not available!!!</h3>");
                } else {
                    Iterator<ProductBean> i = al.iterator();
                    while(i.hasNext()) {
                        ProductBean pb = i.next();
                        out.println("<div class='product-item'>");
                        out.println(pb.getPCode() + " " + pb.getPName() + " " + pb.getPCompany() + " " + pb.getPPrice() + " " + pb.getPQty() + 
                                    " <a href='edit4?pcode=" + pb.getPCode() + "' class='link-btn'>Edit</a> " +
                                    " <a href='delete1?pcode=" + pb.getPCode() + "' class='link-btn'>Delete</a><br><br>");
                        out.println("</div>");
                    }
                }
            %>
        </div>

        <a href="Logout" class="logout-btn">Logout</a>
    </div>

</body>
</html>
