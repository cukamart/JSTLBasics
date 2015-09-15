<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- V servlete PassObjects sa nastavia 3 objekty request scope application tu k nim pristupujem priamo cez EL -->
	<c:out value="${user1.name}"></c:out>
	<br />
	<c:out value="${user2.name}"></c:out>
	<br />
	<c:out value="${user3.name}"></c:out>
	<br />

	<!-- Pristup cez Implicit Objects... -->
	<c:out value="${requestScope.user1.name}" />
	<c:out value="${sessionScope.user2.name}" />
	<c:out value="${applicationScope.user3.name}" />

	<!-- HashMap -->
	<br />
	<c:out value='${map1["vegetable"]}'></c:out>

	<!-- Escaping HTML tags -->
	<br /> ${fn:escapeXml(link)}
	<br />
	<c:out value="${link}"></c:out>

	<!-- FOR-EACH pre ArrayList<User> -->
	<br />
	<table style="border: 1px solid gray;">
		<c:forEach var="animal" items="${list1}">
			<tr>
				<td>${animal.id}</td>
				<td>${animal.name}</td>
			</tr>
			<br />
		</c:forEach>
	</table>
</body>
</html>