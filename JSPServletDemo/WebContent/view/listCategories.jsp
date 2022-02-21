<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="i"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>HELLO</h1>
	<table border="1">
		<thead>
			<th>CatalogId</th>
			<th>CatalogName</th>
			<th>Priority</th>
			<th>Description</th>
			<th>Status</th>
		</thead>
		<tbody>
			<i:forEach items="${listCat }" var="c">
				<tr>
					<td>${c.catalogId }</td>
					<td>${c.catalogName }</td>
					<td>${c.priority }</td>
					<td>${c.description }</td>
					<td>${c.status }</td>
				</tr>
			</i:forEach>
		</tbody>
	</table>
</body>
</html>