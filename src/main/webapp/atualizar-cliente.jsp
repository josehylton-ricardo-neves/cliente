<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/AtualizarCliente" var="atualizarClienteServlet"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/atualizar-cliente.css">
<meta charset="UTF-8">
<title>Atualizar Cliente</title>
</head>
<body>

	<div class="form-container">
 		<form action="${atualizarClienteServlet}" method="post">
 		
			<h3>ATUALIZAR CLIENTE</h3>
			
			<input type="hidden" name="id" value="${cliente.id}"/>
			
            <div class="input-container">
                <input type="text" name="nome" value="${cliente.nome}" />
            </div>
            
            <div class="input-container"> 
                <input type="text" name="email" value="${cliente.email}" />
            </div>
            
            <div class="input-container"> 
                <input type="text" name="telefone" value="${cliente.telefone}" />
            </div>

            <input type="submit" value="Atualizar">
        </form>
        
    </div>

</body>
</html>