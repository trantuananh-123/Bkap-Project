<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="get">
		<table>
			<tr>
				<td>Product Id</td>
				<td><input type="text" name="productId" value="${proUpdate.productId }"/></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" value="${proUpdate.productName }" /></td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td><input type="text" name="price" value="${proUpdate.price }"/></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><input type="text" name="description" value="${proUpdate.description}"/></td>
			</tr>
			<tr>
				<td>Product Title</td>
				<td><input type="text" name="title" value="${proUpdate.title }"/></td>
			</tr>
			<tr>
				<td>Product Status</td>
				<td><input type="text" name="status" value="${proUpdate.status }"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Create"
					name="action" /></td>
			</tr>
		</table>
	</form>
</body>
</html>