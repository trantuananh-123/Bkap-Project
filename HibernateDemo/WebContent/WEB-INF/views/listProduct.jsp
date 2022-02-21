<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<table class="table table-striped">
		<thead class="thead-dark">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Product Name</th>
				<th scope="col">Price</th>
				<th scope="col">Created</th>
				<th scope="col">Catalog Name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listPro }" var="pro">
				<tr>
					<!-- 					<th scope="row">1</th> -->
					<td>${pro.productId }</td>
					<td>${pro.productName }</td>
					<td>${pro.price }</td>
					<td><fmt:formatDate value="${pro.created }" pattern="dd-MM-yyyy" /></td>
					<td>${pro.catalog.catalogName }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>