<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Customer Add</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>

	<br><br>
	<form class="form-horizontal" action="userSave" method="post">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Username</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="username" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Code</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="password" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Phone</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="phone" >
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Address</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="address" >
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">Submit To Save</button>
			</div>
		</div>
	</form>
	
	<span style="color:red;">${msg}</span>
</div>
</body>
</html>