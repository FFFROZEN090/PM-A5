<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>LogIN</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
</head>

<!-- 设置背景图片 -->
<body style="background-image:url(img/bg.jpg);background-size:100%;">

	<div class="container">

		<c:if test="${msg!=null}"><div class="alert alert-danger text-center">${msg}</div></c:if>

		<form class="form-horizontal" style="margin-top:15%;" action="login">
			<h2 class="text-center">BackStage LogIn</h2>
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">
					<input type="text" class="form-control" style="height:auto;padding:10px;" placeholder="enter username here" name="username" value="1">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">
					<input type="password" class="form-control" style="height:auto;padding:10px;" placeholder="enter password here" name="password" value="1">
				</div>
			</div>
			<div class="col-md-4 col-md-offset-4">			
				<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
			</div>
		</form>

	</div>

</body>
</html>
