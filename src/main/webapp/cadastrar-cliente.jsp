<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/cadastrarCliente" var="cadastrarClienteServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Cliente</title>
</head>
<body>
		<h2>Cadastrar novo Cliente</h2>
		<form action="${cadastrarClienteServlet}" method="post">
			Nome: <input type="text" name="nome" />
			<br>
			Email: <input type="text" name="email" />
			<br>
			Telefone: <input type="text" name="telefone" />
			<br>
			<input type="submit" value="cadastrar" />
		</form>

</body>
</html>