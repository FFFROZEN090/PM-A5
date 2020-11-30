<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>ClientCenter</title>
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
				<form action="my" method="post">
					<input type="hidden" name="id" value="${user.id}">
					<div class="register-top-grid">
						<h3>My Space</h3>

						<h4>Receiver</h4>
						<div class="input">
							<span>Receiver<label></label></span>
							<input type="text" name="name" value="${user.name}" placeholder="Enter receiver name here">
						</div>
						<div class="input">
							<span>telephone</span>
							<input type="text" name="phone" value="${user.phone}" placeholder="Enter receiver contact number here">
						</div>
						<div class="input">
							<span>address</span>
							<input type="text" name="address" value="${user.address}" placeholder="Enter receiver address here">
						</div>
						<div class="register-but text-center">
						   <input type="submit" value="submit">
						</div>
						<hr>
						<h4>Security</h4>
						<div class="input">
							<span>Previous password</span>
							<input type="text" name="password" placeholder="Enter previous password here">
						</div>
						<div class="input">
							<span>New password</span>
							<input type="text" name="passwordNew" placeholder="Enter newpassword here">
						</div>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
						   <input type="submit" value="submit">
						</div>
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
