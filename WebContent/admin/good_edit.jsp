<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>edit commodity</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">
	<%@include file="header.jsp"%>

	<br><br>
	<form class="form-horizontal" action="goodUpdate" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${good.id}"/>
		<input type="hidden" name="cover" value="${good.cover}"/>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">name</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="name" value="${good.name}" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">price</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="price" value="${good.price}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">introduction</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="intro" value="${good.intro}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">stock</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="stock" value="${good.stock}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">cover photo</label> 
			<div class="col-sm-6"><img src="../${good.cover}" width="100" height="100"/>
				<input type="file" name="cover"  id="input_file">recommended size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">picture of details1</label> 
			<div class="col-sm-6"><img src="../${good.image1}" width="100" height="100"/>
				<input type="file" name="image1"  id="input_file">recommended size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">picture of details2</label> 
			<div class="col-sm-6"><img src="../${good.image2}" width="100" height="100"/>
				<input type="file" name="image2"  id="input_file">recommended size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">category</label>
			<div class="col-sm-6">
				<select class="form-control" id="select_topic" name="typeId">
					<c:forEach var="type" items="${typeList}">
						<c:if test="${type.id==good.type.id}"><option selected="selected" value="${type.id}">${type.name}</option></c:if>
						<c:if test="${type.id!=good.type.id}"><option value="${type.id}">${type.name}</option></c:if>
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