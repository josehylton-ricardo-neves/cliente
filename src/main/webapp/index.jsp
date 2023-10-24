<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/index.css">
<meta charset="UTF-8">
<title>Inicio</title>
</head>
<body>

	<div class="index-container">
 		<div>
			<h3>QUAL AÇÃO DESEJA REALIZAR</h3>
		</div>
		
		<div class="button-container">
			<button type="button" class="styled-button" onclick="window.location.href='/cliente/cadastrar-cliente.jsp'">Cadastrar Cliente</button>
		</div>
            
		<div class="button-container"> 
			<button type="button" class="styled-button" onclick="window.location.href='/cliente/listar-clientes.jsp'">Listar Clientes</button>
		</div>  
    </div>

</body>
</html>