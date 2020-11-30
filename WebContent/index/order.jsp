<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>my order</title>
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
	
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
		
		<c:if test="${msg!=null}"><div class="alert alert-success">${msg}</div></c:if>
		<c:if test="${orderList!=null}">
			<h2>my order</h2>
			
				<table class="table table-bordered table-hover">

				<tr>
					<th width="10%">ID</th>
					<th width="10%">totalcost</th>
					<th width="20%">commodity details</th>
					<th width="20%">receiving information</th>
					<th width="10%">order status</th>
					<th width="10%">mode of payment</th>
					<th width="10%">order time</th>
					<th width="10%">operation</th>
				</tr>
				<c:forEach var="order" items="${orderList}">
			         <tr>
			         	<td><p>${order.id}</p></td>
			         	<td><p>${order.total}</p></td>
			         	<td>
				         	<c:forEach var ="item" items="${order.itemList}">
					         	<p>${item.good.name}(${item.price}) x ${item.amount}</p>
				         	</c:forEach>
			         	</td>
			         	<td>
			         		<p>${order.name}</p>
			         		<p>${order.phone}</p>
			         		<p>${order.address}</p>
			         	</td>
						<td>
							<p>
								<c:if test="${order.status==1}">unpaid</c:if>
								<c:if test="${order.status==2}"><span style="color:red;">paid</span></c:if>
								<c:if test="${order.status==3}">delivery in progress</c:if>
								<c:if test="${order.status==4}">finished</c:if>
							</p>
						</td>
						<td>
							<p>
								<c:if test="${order.paytype==1}">wechat</c:if>
								<c:if test="${order.paytype==2}">Alipay</c:if>
								<c:if test="${order.paytype==3}">cash on delivery</c:if>
							</p>
						</td>
						<td><p><fmt:formatDate value="${order.systime}" pattern="yyyy-MM-dd HH:mm:ss" /></p></td>
						<td>
							<c:if test="${order.status==1}">
								<a class="btn btn-success" href="topay?orderid=${order.id}">pay</a>
							</c:if>
						</td>
			       	</tr>
				</c:forEach>
			     
			</table>
			
			</c:if>
			<c:if test="${orderList==null}"><div class="alert alert-info">absolutely empty</div></c:if>
			
		</div>
	</div>
	<!--//cart-items-->	
	
	<jsp:include page="footer.jsp"/>

</body>
</html>