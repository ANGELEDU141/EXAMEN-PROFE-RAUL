<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Cliente</title>

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

p {
    margin: 10px 0;
    font-size: 16px;
    color: #555;
}

a {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: #007BFF;
    color: white;
    font-weight: bold;
    text-decoration: none;
    transition: background-color 0.3s;
}



</style>
</head>
<body>

<div style="text-align: center;">
    <h3>Detalle cliente</h3>

    <p>Cliente ID: ${customer.customerId}</p>
    <p>Nombre: ${customer.firstName}</p>
    <p>Apellido: ${customer.lastName}</p>
    <p>Compañía: ${customer.company}</p>
    <p>Dirección: ${customer.address}</p>
    <p>Ciudad: ${customer.city}</p>
    <p>Estado: ${customer.state}</p>
    <p>País: ${customer.country}</p>
    <p>Teléfono: ${customer.phone}</p>
    <p>Email: ${customer.email}</p>
    <p>Fecha de Contratación: ${customer.hireDate}</p>

    <a href="/senati/customer/listar">Volver</a>
</div>

</body>
</html>
