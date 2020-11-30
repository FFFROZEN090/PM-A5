<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>userlogin</title>
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
				<form action="register" method="post"> 
					<div class="register-top-grid">
						<h3>userregister</h3>
						<div class="input">
							<span>username <label style="color:red;">*</label></span>
							<input type="text" name="username" placeholder="Please input username" required="required"> 
						</div>
						<div class="input">
							<span>password<label style="color:red;">*</label></span>
							<input type="text" name="password" placeholder="Please input password" required="required"> 
						</div>
						<div class="input">
							<span>consignee<label></label></span>
							<input type="text" name="name" placeholder="Please enter the consignee"> 
						</div>
						<div class="input">
							<span>shipping phone number<label></label></span>
							<input type="text" name="phone" placeholder="Please enter the shipping phone number"> 
						</div>
						<div class="input">
							<span>shipping address<label></label></span>
							<input type="text" name="address" placeholder="Please enter the shipping address"> 
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="Submit">
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