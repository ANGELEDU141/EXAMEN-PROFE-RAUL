<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Cliente</title>

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

h3 {
    color: #333;
    margin-bottom: 20px;
}

form {
    display: inline-block;
    text-align: left;
}

form input[type="text"], form input[type="email"], form input[type="date"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
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
		<h3>¡Registrar cliente!</h3>

		<!-- Formulario Spring -->
		<form:form method="post" action="" modelAttribute="customer">
			Nombre: <form:input type="text" path="firstName"/> <br>
			Apellido: <form:input type="text" path="lastName"/> <br>
			Compañía: <form:input type="text" path="company"/> <br>
			Dirección: <form:input type="text" path="address"/> <br>
			Ciudad: <form:input type="text" path="city"/> <br>
			Estado: <form:input type="text" path="state"/> <br>
			País: <form:input type="text" path="country"/> <br>
			Teléfono: <form:input type="text" path="phone"/> <br>
			Email: <form:input type="email" path="email"/> <br>
			Fecha de Contratación: <form:input type="date" path="hireDate"/> <br><br>

			<button type="submit">Guardar</button>
			<button type="button" onclick="location.href='/senati/customer/listar'">Cancelar</button>
		</form:form>
	</div>
</body>
</html>
