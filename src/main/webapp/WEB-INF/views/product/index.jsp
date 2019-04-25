<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Resultado</title>
</head>
<body>
	<h3>Valores Únicos</h3>
	<table border="1" cellpadding="1" cellspacing="1">
		<tr>
			<td>Age</td>
			<td>${sessionScope.age }</td>
		</tr>
		<tr>
			<td>Username</td>
			<td>${sessionScope.username }</td>
		</tr>
	</table>


	<h3>Informação do Produto</h3>
	<table border="1" cellpadding="1" cellspacing="1">
		<tr>
			<td>id</td>
			<td>${sessionScope.produto.id }</td>
		</tr>
		<tr>
			<td>Nome</td>
			<td>${sessionScope.produto.name }</td>
		</tr>
		<tr>
			<td>Preço</td>
			<td>${sessionScope.produto.price }</td>
		</tr>
	</table>

	<h3>Lista de Produtos</h3>
	<table border="1" cellpadding="1" cellspacing="1">
		<tr>
			<th>id</th>
			<th>Nome</th>
			<th>Preço</th>
		</tr>
		<c:forEach var="product" items="${sessionScope.produtos }">
			<tr>
				<td>${product.id }</td> 
				<td>${product.name }</td>
				<td>${product.price }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>