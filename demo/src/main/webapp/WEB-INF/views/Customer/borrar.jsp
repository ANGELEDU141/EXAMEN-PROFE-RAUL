<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Borrar Cliente</title>
<style type="text/css">
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f2f5;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

form {
    display: inline-block;
    text-align: left;
}

form input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

form p {
    color: red;
    margin-bottom: 20px;
}

button {
    padding: 10px 20px;
    margin: 0 10px;
    border: none;
    border-radius: 5px;
    background-color: #007BFF;
    color: white;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #0056b3;
}



</style>
</head>
<body>
<div style="text-align: center;">
        <h2>Borrar cliente!</h2>
        <form:form method="post" action="" modelAttribute="customer">
            Cliente ID: <form:input type="text" path="customerId" readonly="true" /><br/>
            Nombre: <form:input type="text" path="firstName" readonly="true" /><br/>
            Apellido: <form:input type="text" path="lastName" readonly="true" /><br/>
            <p style="color: red;">¿Está seguro de borrar?</p>
            <button type="submit">Si, borrar</button>
            <button type="button" onclick="location.href='/senati/customer/listar'">Cancelar</button>
        </form:form>
    </div>
</body>
</html>
