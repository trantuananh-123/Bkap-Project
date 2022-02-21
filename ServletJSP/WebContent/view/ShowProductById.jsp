<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		</thead>
		<tbody>
			<tr>
				<td>${proId.productId }</td>
				<td>${proId.productName }</td>
				<td>${proId.price }</td>
				<td>${proId.descriptions }</td>
				<td>${proId.title }</td>
				<td>${proId.status }</td>
				<td>${proId.catalogId }</td>
				<td>${proId.catalogName }</td>
			</tr>
		</tbody>
	</table>

</body>
</html>