<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:choose>
		<c:when test="${empty nomeCliente}">
	        <p>Cliente invalido!</p>
	    </c:when>
	    <c:otherwise>
	        <p>Cliente ${nomeCliente} cadastrado com sucesso!</p>
	    </c:otherwise>
    </c:choose>
    
    <a href="/cliente/ListaCliente">Listar Clientes</a>

</body>
</html>