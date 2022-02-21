<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/ProductController"
		method="get">
		<table>
			<tr>
				<td>Product Id</td>
				<td><input type="text" name="productId" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" /></td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><input type="text" name="descriptions" /></td>
			</tr>
			<tr>
				<td>Product Title</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>Product Status</td>
				<td><input type="text" name="status" /></td>
			</tr>
			<tr>
				<td>Catalog Id</td>
				<td><input type="text" name="catalogId" /></td>
			</tr>
			<tr>
				<td>Catalog Name</td>
				<td><input type="text" name="catalogName" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" name="action" /></td>
			</tr>
		</table>
	</form>
</body>
</html>