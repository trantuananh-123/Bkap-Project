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
	<i:forEach items="${listPro }" var="p">
		<p>${p.productId } - ${p.productName } - ${p.price } - ${p.description } - ${p.title } - ${p.status } 
			- <a href="ProductController?action=getProductById&&productId =${p.productId } ">Update</a></p>
	</i:forEach>
	
	<a href="view/addProduct.jsp">Add new product</a>
</body>
</html>