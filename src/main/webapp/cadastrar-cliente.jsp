<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/cadastrarCliente" var="cadastrarClienteServlet"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/cadastrar-cliente.css">
<script src="js/cadastrar-cliente.js"></script>
<meta charset="UTF-8">
<title>Cadastrar Cliente</title>
</head>
<body>

	<div class="form-container">
 		<form action="${cadastrarClienteServlet}" method="post" onsubmit="return validarForm()">
 		
			<h3>CADASTRAR CLIENTE</h3>
			
            <div class="input-container">
                <input type="text" placeholder="Nome" name="nome" id="nome" />
                <span id="nome-error" class="error-message"></span>
            </div>
            
            <div class="input-container"> 
                <input type="text" placeholder="Email" name="email" id="email" />
                <span id="email-error" class="error-message"></span>
            </div>
            
            <div class="input-container"> 
                <input type="text" placeholder="Telefone (xx) xxxx-xxxx" name="telefone" id="telefone" />
                <span id="telefone-error" class="error-message"></span>
            </div>

            <input type="submit" value="Cadastrar">
        </form>
        
    </div>
		

</body>
</html>