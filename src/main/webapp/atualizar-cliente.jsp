<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/AtualizarCliente" var="atualizarClienteServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Cliente</title>
</head>
<body>
		<h2>Atualizar cliente</h2>
		<form action="${atualizarClienteServlet}" method="post">
		
			<input type="hidden" name="id" value="${cliente.id}"/>
			
			Nome: <input type="text" name="nome" value="${cliente.nome}"/>
			<br>
			Email: <input type="text" name="email" value="${cliente.email}" />
			<br>
			Telefone: <input type="text" name="telefone" value="${cliente.telefone}" />
			<br>
			<input type="submit" value="Atualizar" />
		</form>

</body>
</html>