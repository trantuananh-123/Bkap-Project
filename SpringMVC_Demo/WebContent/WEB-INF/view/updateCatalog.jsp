<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<f:form action="update.htm" method="post" modelAttribute="catUpdate">
		<table>
			<tr>
				<td>Catalog Id</td>
				<td><f:input path="catalogId" readonly="true"/></td>
			</tr>
			<tr>
				<td>Catalog Name</td>
				<td><f:input path="catalogName" /></td>
			</tr>
			<tr>
				<td>Priority</td>
				<td><f:input path="priority" /></td>
			</tr>
			<tr>
				<td>Descriptions</td>
				<td><f:input path="descriptions" /></td>
			</tr>
			<tr>
				<td>Status</td>
				<td><f:input path="status" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Update"></td>
			</tr>
		</table>
	</f:form>
</body>
</html>