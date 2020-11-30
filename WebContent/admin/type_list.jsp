<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>category list</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>
	
	<br>
	
	<div>
		<form class="form-inline" method="post" action="typeSave">
			<input type="text" class="form-control" id="input_name" name="name" placeholder="enter category name" required="required" style="width: 500px">
			<input type="submit" class="btn btn-warning" value="add category"/>
		</form>
	</div>
	
	<br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">name</th>
		<th width="10%">operate</th>
	</tr>
	
	<c:forEach var="type" items="${typeList}">
         <tr>
         	<td><p>${type.id}</p></td>
         	<td><p>${type.name}</p></td>
			<td>
				<a class="btn btn-primary" href="typeEdit?id=${type.id}">modify</a>
				<a class="btn btn-danger" href="typeDelete?id=${type.id}">delete</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

</div>
</body>
</html>