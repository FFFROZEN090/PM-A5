<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>add product</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">
	<%@include file="header.jsp"%>

	<br><br>
	<form class="form-horizontal" action="goodSave" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">name</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="name"  required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">price</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="price" >
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">introduction</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="intro" >
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">stock</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="stock" >
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">cover photo</label> 
			<div class="col-sm-6">
				<input type="file" name="cover"  id="input_file" required="required">recommended size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">picture of details1</label> 
			<div class="col-sm-6">
				<input type="file" name="image1"  id="input_file" required="required">recommended size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">picture of details2</label> 
			<div class="col-sm-6">
				<input type="file" name="image2"  id="input_file" required="required">recommended size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">category</label>
			<div class="col-sm-6">
				<select class="form-control" id="select_topic" name="typeId">
					<c:forEach var="type" items="${typeList}">
						<option value="${type.id}">${type.name}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">submit for preservation</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>