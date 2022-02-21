<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Categories</title>
</head>
<body>
	<table border="1">
		<thead>
			<th>Catalog ID</th>
			<th>Catalog Name</th>
			<th>Priority</th>
			<th>Descriptions</th>
			<th>Status</th>
			<th>Action</th>
		</thead>
		<tbody>
			<c:forEach items="${listCat }" var="catalog">
				<tr>
					<td>${catalog.catalogId }</td>
					<td>${catalog.catalogName }</td>
					<td>${catalog.priority }</td>
					<td>${catalog.descriptions }</td>
					<td>${catalog.status }</td>
					<td><a href="initUpdate.htm?catalogId=${catalog.catalogId }">Update</a>
						<a href="delete.htm?catalogId=${catalog.catalogId }">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="initAdd.htm">Create a new Catalog</a>
</body>
</html>