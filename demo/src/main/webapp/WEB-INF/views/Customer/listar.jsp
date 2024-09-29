<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- JSTL core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Clientes</title>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f2g5;
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

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
    background-color: #fff;
    border-radius: 10px;
    overflow: hidden;
}

th, td {
    padding: 15px;
    text-align: left;
    border-bottom: 1px solid #e0e0e0;
}

th {
    background-color: #007BFF;
    color: white;
    font-weight: bold;
}

caption {
    font-size: 28px;
    margin-bottom: 20px;
    color: #333;
    text-align: center;
}




</style>
</head>
<body>
    <div style="width: 100vw;">
        <table style="margin: 0px auto;">
            <caption style="font-size: 20px;">�Listado de clientes!</caption>
            <tr>
                <th><b>ID</b></th>
                <th><b>Nombre</b></th>
                <th><b>Apellido</b></th>
                <th><b>Compa��a</b></th>
                <th><b>Direcci�n</b></th>
                <th><b>Ciudad</b></th>
                <th><b>Estado</b></th>
                <th><b>Pa�s</b></th>
                <th><b>Tel�fono</b></th>
                <th><b>Email</b></th>
                <th><b>Fecha de Contrataci�n</b></th>
                <th><b>Acci�n</b></th>
            </tr>

            <c:forEach var="customer" items="${bCustomers}">
                <tr>
                    <td>${customer.customerId}</td>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.company}</td>
                    <td>${customer.address}</td>
                    <td>${customer.city}</td>
                    <td>${customer.state}</td>
                    <td>${customer.country}</td>
                    <td>${customer.phone}</td>
                    <td>${customer.email}</td>
                    <td>${customer.hireDate}</td>
                    <td>
                        <a href="/senati/customer/editar/${customer.customerId}">Editar</a>
                        <a href="/senati/customer/borrar/${customer.customerId}">Borrar</a>
                        <a href="/senati/customer/detalle/${customer.customerId}">Detalles</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <div style="text-align: center;">
            <a href="/senati/index">Index</a> |
            <a href="/senati/customer/registrar">Registrar</a>
        </div>
    </div>
</body>
</html>
