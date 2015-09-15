<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%-- Accress bean properties in JSTL --%>
	<jsp:useBean id="test" class="cuka.martin.beans.TestBean" scope="page"></jsp:useBean>
	<c:out value="${test.info}"></c:out>
	<br />

	<%--Getting parameters  to v url za ?... ?name=John--%>
	<c:out value="${param.name}"></c:out>

	<%--JSTL IF --%>
	<br />
	<c:if test='${param.name eq "Bob"}'>
	Hello Bob
	</c:if>
	<c:if test='${param.name ne "Bob"}'>
	Hello There
	</c:if>

	<%--JSTL choose tag (IF ELSE) --%>
	<br />
	<c:choose>
		<c:when test='${param.id eq 1}'>
			ID is equal to <b>1</b>
		</c:when>
		<c:when test='${param.id eq 2}'>
			ID is equal to <b>2</b>
		</c:when>
		<c:otherwise>
			ID <b>UNKNOWN</b>
		</c:otherwise>
	</c:choose>

	<%--JSTL "for" loop --%>
	<br />
	<c:forEach var="i" begin="0" end="10" step="3" varStatus="status">
		Loop counter is: <c:out value="${i}"></c:out>
		</br>
		<c:if test="${status.first}">
			This was the First iteration
		</c:if>
		<c:if test="${status.last}">
			This was the Last iteration
		</c:if>
	</c:forEach>

</body>
</html>