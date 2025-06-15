<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books Store Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            text-align: center;
            background-color: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        table {
            margin: 0 auto;
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        input[type="text"] {
            width: 95%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            padding: 10px 30px;
            border: none;
            border-radius: 5px;
            background-color: #007BFF;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            margin: 0 10px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Books Management</h1>
        <div>
            <a href="${pageContext.request.contextPath}/new">Add New Book</a>
            <a href="${pageContext.request.contextPath}/list">List All Books</a>
        <a href="${pageContext.request.contextPath}/Creditos.jsp">Creditos</a>
        
        </div>
        <br/>

        <c:if test="${book != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
            <form action="insert" method="post">
        </c:if>

        <table>
            <caption>
                <h2>
                    <c:if test="${book != null}">
                        Edit Book
                    </c:if>
                    <c:if test="${book == null}">
                        Add New Book
                    </c:if>
                </h2>
            </caption>

            <c:if test="${book != null}">
                <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
            </c:if>           
            <tr>
                <th>Title: </th>
                <td>
                    <input type="text" name="title" 
                           value="<c:out value='${book.title}' />" />
                </td>
            </tr>
            <tr>
                <th>Author: </th>
                <td>
                    <input type="text" name="author" 
                           value="<c:out value='${book.author}' />" />
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                    <input type="text" name="price" 
                           value="<c:out value='${book.price}' />" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>
