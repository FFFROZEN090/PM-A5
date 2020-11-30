<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>user list</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>
	
	<div class="text-right"><a class="btn btn-warning" href="userAdd">add user</a></div>
		
	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">username</th>
		<th width="10%">telephone</th>
		<th width="10%">address</th>
		<th width="10%">operate</th>
	</tr>
	
	<c:forEach var="user" items="${userList}">
         <tr>
         	<td><p>${user.id}</p></td>
         	<td><p>${user.username}</p></td>
         	<td><p>${user.phone}</p></td>
         	<td><p>${user.address}</p></td>
			<td>
				<a class="btn btn-info" href="userRe?id=${user.id}">reset password</a>
				<a class="btn btn-primary" href="userEdit?id=${user.id}">modify</a>
				<a class="btn btn-danger" href="userDelete?id=${user.id}">delete</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

<br>${pageTool}<br>
</div>
</body>
</html>