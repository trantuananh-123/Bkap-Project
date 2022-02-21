<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Price</th>
			<th>Descriptions</th>
			<th>Title</th>
			<th>Status</th>
			<th>CatalogId</th>
			<th>CatalogName</th>
			<th>Delete Product</th>
			<th>View Details</th>
			<th>Update Product</th>
		</thead>
		<tbody>
			<p:forEach items="${listPro }" var="product">
				<tr>
					<td>${product.productId}</td>
					<td>${product.productName }</td>
					<td>${product.price }</td>
					<td>${product.descriptions }</td>
					<td>${product.title }</td>
					<td>${product.status }</td>
					<td>${product.catalogId }</td>
					<td>${product.catalogName }</td>
					<td><a href="ProductController?action=Delete&&productId=${product.productId }">Delete</a></td>
					<td><a href="ProductController?action=getProductById&&productId=${product.productId }">Details</a></td>
					<td><a href="ProductController?action=getProductById&&productId=${product.productId }">Update</a></td>
				</tr>
			</p:forEach>
		</tbody>
	</table>
	
	<a href="view/Add_New_Product.jsp">Create new Product</a>
</body>
</html>