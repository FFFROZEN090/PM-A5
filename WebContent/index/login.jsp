<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<jsp:include page="header.jsp"/>

	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${msg!=null}"><div class="alert alert-danger">${msg}</div></c:if>
				<form action="login" method="post">
					<div class="register-top-grid">
						<h3>User LogIn</h3>
						<div class="input">
							<span>Username <label style="color:red;">*</label></span>
							<input type="text" name="username" placeholder="Please input username" required="required">
						</div>
						<div class="input">
							<span>Password <label style="color:red;">*</label></span>
							<input type="text" name="password" placeholder="please input password" required="required">
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="submmit">
					   <div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	<jsp:include page="footer.jsp"/>

</body>
</html>
