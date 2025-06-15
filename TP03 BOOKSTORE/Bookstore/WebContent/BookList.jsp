<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            text-align: center;
            background-color: white;
            padding: 20px;
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
            border: 1px solid #ccc;
        }
        a {
            margin: 0 10px;
            text-decoration: none;
            color: #007BFF;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Books List</h1>

        <a href="${pageContext.request.contextPath}/new">Add New Book</a>
        <a href="${pageContext.request.contextPath}/list">List All Books</a>
        <a href="${pageContext.request.contextPath}/Creditos.jsp">Creditos</a>
        
        <br/><br/>

        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${listBook}">
                    <tr>
                        <td><c:out value="${book.title}" /></td>
                        <td><c:out value="${book.author}" /></td>
                        <td><c:out value="${book.price}" /></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/edit?id=${book.id}">Edit</a> |
                            <a href="${pageContext.request.contextPath}/delete?id=${book.id}" 
                               onclick="return confirm('Are you sure you want to delete this book?');">
                               Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
