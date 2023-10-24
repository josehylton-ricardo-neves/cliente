<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/cadastrarCliente" var="cadastrarClienteServlet"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/cadastrar-cliente.css">
<meta charset="UTF-8">
<title>Cadastrar Cliente</title>
</head>
<body>

	<div class="form-container">
 		<form action="${cadastrarClienteServlet}" method="post">
 		
			<h3>CADASTRAR CLIENTE</h3>
			
            <div class="input-container">
                <input type="text" placeholder="Nome" name="nome" />
            </div>
            
            <div class="input-container"> 
                <input type="text" placeholder="Email" name="email" />
            </div>
            
            <div class="input-container"> 
                <input type="text" placeholder="Telefone" name="telefone" />
            </div>

            <input type="submit" value="Cadastrar">
        </form>
        
    </div>
		

</body>
</html>