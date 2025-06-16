<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Creditos</title> //LEANDRO FELIX E KAIK PERSIKE
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
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        .photo {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin: 15px;
            border: 3px solid #007BFF;
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
        <h1>Creditos</h1>
        <div>
          
        </div>
        <p><strong>Developed by:</strong></p>
        <p>Leandro Félix & Kaik Persike</p>

        <p><strong>Curso:</strong> Análise e Desenvolvimento de Sistemas</p>
        <p><strong>Instituto:</strong> Instituto Federal de São Paulo - IFSP Cubatão</p>

        <br/>
        <a href="${pageContext.request.contextPath}/new">Add New Book</a>
        <a href="${pageContext.request.contextPath}/list">List All Books</a>
    </div>
</body>
</html>
