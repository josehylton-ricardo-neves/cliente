<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, br.edu.ifpb.cliente.Cliente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar Clientes</title>
<link rel="stylesheet" type="text/css" href="css/listar-clientes.css">
<script src="js/listar-clientes.js"></script>
</head>
<body>
	<div>
		<div>
		<h1>Lista de todos os clientes</h1>
		</div>

		<div>
		 <table>
	        <thead>
	            <tr>
	                <th>Nome</th>
	                <th>Email</th>
	                <th>Telefone</th>
	                <th>Editar</th>
	                <th>Remover</th>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach items="${listaClientes}" var="cliente">
	                <tr>
	                    <td>${cliente.nome}</td>
	                    <td>${cliente.email}</td>
	                    <td>${cliente.telefone}</td>
	                    <td>
	                        <a href="/cliente/ExibirCliente?id=${cliente.id}">editar</a>
						</td>
						<td>
	                        <!-- <a href="/cliente/ExcluirCliente?id=${cliente.id}">remover</a>  -->
	                        <a href="#" onclick="confirmarExclusao(${cliente.id})">remover</a>
	                    </td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	    </div>
	
		<div class="button-container">
		<button type="button" class="styled-button" onclick="window.location.href='/cliente/cadastrar-cliente.jsp'">Ir para a Página de Cadastro</button>
		</div>
	
	</div>
	
</body>
</html>