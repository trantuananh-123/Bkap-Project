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
				<td><input type="text" name="productId" value="${updateProId.productId }" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" value="${updateProId.productName }"/></td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td><input type="text" name="price" value="${updateProId.price }"/></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><input type="text" name="descriptions" value="${updateProId.descriptions }"/></td>
			</tr>
			<tr>
				<td>Product Title</td>
				<td><input type="text" name="title" value="${updateProId.title }"/></td>
			</tr>
			<tr>
				<td>Product Status</td>
				<td><input type="text" name="status" value="${updateProId.status }"/></td>
			</tr>
			<tr>
				<td>Catalog Id</td>
				<td><input type="text" name="catalogId" value="${updateProId.catalogId }"/></td>
			</tr>
			<tr>
				<td>Catalog Name</td>
				<td><input type="text" name="catalogName" value="${updateProId.catalogName }"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Update" name="action" /></td>
			</tr>
		</table>
	</form>
</body>
</html>