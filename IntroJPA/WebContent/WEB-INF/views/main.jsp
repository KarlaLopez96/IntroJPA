<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringJPA</title>
</head>
<body>
	<h3>Búsqueda de estudiante</h3>
	<form:form action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute= "student">
	
		<label>Ingrese Id del estudiante</label>
		<form:input type="number" name="cStudent" path="cStudent" required="No puede quear vacio" 
		pattern="[0-9]{1}" title="Solo puedes ingresar números y de 1 digito"/>
		<form:errors path="cStudent" cssStyle="color:#E81505;"></form:errors><br><br>	
		<input type="submit" value="Buscar Estudiante">
	</form:form>
</body>
</html>