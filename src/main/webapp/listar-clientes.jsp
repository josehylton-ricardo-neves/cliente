<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, br.edu.ifpb.cliente.Cliente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar Clientes</title>
<meta http-equiv= “refresh” content="5; URL='/cliente/cadastrar-cliente.jsp'"/>
</head>
<body>
	<p>Lista de todos os clientes</p>
	
	<ul>
		<c:forEach items="${listaClientes}" var="cliente">		
			<li>${cliente.nome} - ${cliente.email} - ${cliente.telefone}
				<a href="/cliente/ExibirCliente?id=${cliente.id}">editar</a>
				<a href="/cliente/ExcluirCliente?id=${cliente.id}">remover</a>
			</li>
		</c:forEach>		
	</ul>
	
	<a href="/cliente/cadastrar-cliente.jsp">Cadastrar novo cliente</a>
</body>
</html>