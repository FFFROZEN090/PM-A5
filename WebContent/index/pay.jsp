<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>支付</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
</head>
<body>

	<jsp:include page="header.jsp"/>
	<div class="cart-items">
		<div class="container">
			<h2>Confirm information</h2>
			<form class="form-horizontal" action="pay" method="post" id="payform">
				<input type="hidden" name="id" value="${order.id}">
				<input type="hidden" name="paytype" id="paytype">
				<div class="row">
					<label class="control-label col-md-1">receiver</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="name" value="${user.name}" style="height:auto;padding:10px;" placeholder="Enter receiver name here" required="required" id="fname"><br>
					</div>
				</div>
				<div class="row">
					<label class="control-label col-md-1">telephone</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="phone" value="${user.phone}" style="height:auto;padding:10px;" placeholder="Enter receiver contact number here" required="required" id="fphone"><br>
					</div>
				</div>
				<div class="row">
					<label class="control-label col-md-1">address</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="address" value="${user.address}" style="height:auto;padding:10px;" placeholder="Enter receiver address here" required="required" id="faddress"><br>
					</div>
				</div>
			</form>

			<br><hr><br>

			<h2>Payment </h2>
			<h3>Order number: ${order.id}  total: ${order.total}</h3><br><br>
			<div class="col-sm-6 col-md-4 col-lg-3 ">
				<div class="thumbnail">
					<a href="javascript:dopay(1);">
						<img src="images/wechat.jpg" alt="WechatPay">
					</a>
				</div>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 ">
				<div class="thumbnail">
					<a href="javascript:dopay(2);">
						<img src="images/alipay.jpg" alt="Alipay">
					</a>
				</div>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3 ">
				<div class="thumbnail">
					<a href="javascript:dopay(3);">
						<img src="images/offline.jpg" alt="Cash">
					</a>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

<script type="text/javascript">
	function dopay(paytype){
		// 信息校验
		var name = $("#fname").val();
		if(name==null || name==""){
			layer.msg("Please enter validate receiver!");
			return;
		}
		var phone = $("#fphone").val();
		if(phone==null || phone=="" || !/^[0-9]*$/.test(phone)){
			layer.msg("Please enter validate telephone number!");
			return;
		}
		var address = $("#faddress").val();
		if(address==null || address==""){
			layer.msg("Please enter validate address!");
			return;
		}

		$("#paytype").val(paytype);
		$("#payform").submit();
	}
</script>

</body>
</html>
