<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Estad�sticas EBTM</title>
</head>
<body>
	<div align="center">
		<h1>USUARIOS REGISTRADOS</h1>
		<table border="1">
			<th>N�</th>
			<th>Correos</th>
			<th>Fecha alta</th>
			<br>
			<c:forEach items="${lista_usuarios}" var="usuario" varStatus="i">
				<tr>
					<td>${i.index+1}</td>
					<td>${usuario.lista_emails}</td>
					<td>${usuario.momento}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<div align="center">
		<h1>DESCARGAS REGISTRADAS</h1>
		<table border="1">
			<th>N�</th>
			<th>Fecha programa</th>
			<th>N� descargas</th>
			<br>
			<c:forEach items="${mapa_descargas}" var="descarga" varStatus="i">
				<tr>
					<td>${i.index+1}</td>
					<td>${descarga.key}</td>
					<td>${descarga.value}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
