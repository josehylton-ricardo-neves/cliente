<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/AtualizarCliente" var="atualizarClienteServlet"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/atualizar-cliente.css">
<script src="js/atualizar-cliente.js"></script>
<meta charset="UTF-8">
<title>Atualizar Cliente</title>
</head>
<body>

	<div class="form-container">
 		<form action="${atualizarClienteServlet}" method="post" onsubmit="return validarForm()">
 		
			<h3>ATUALIZAR CLIENTE</h3>
			
			<input type="hidden" name="id" value="${cliente.id}"/>
			
            <div class="input-container">
                <input type="text" name="nome" value="${cliente.nome}" id="nome"  />
                <span id="nome-error" class="error-message"></span>
            </div>
            
            <div class="input-container"> 
                <input type="text" name="email" value="${cliente.email}" id="email" />
                <span id="email-error" class="error-message"></span>
            </div>
            
            <div class="input-container"> 
                <input type="text" name="telefone" value="${cliente.telefone}" id="telefone" />
                <span id="telefone-error" class="error-message"></span>
            </div>

            <input type="submit" value="Atualizar">
        </form>
        
    </div>

</body>
</html>