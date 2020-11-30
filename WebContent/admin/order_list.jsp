<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Order List</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp" %>

	<br>

	<ul role="tablist" class="nav nav-tabs">
        <li <c:if test='${status==0}'>class="active"</c:if> role="presentation"><a href="orderList?status=0">All Orders</a></li>
        <li <c:if test='${status==1}'>class="active"</c:if> role="presentation"><a href="orderList?status=1">Unpaid</a></li>
        <li <c:if test='${status==2}'>class="active"</c:if> role="presentation"><a href="orderList?status=2">Already Paid</a></li>
        <li <c:if test='${status==3}'>class="active"</c:if> role="presentation"><a href="orderList?status=3">In Delivery</a></li>
        <li <c:if test='${status==4}'>class="active"</c:if> role="presentation"><a href="orderList?status=4">Completed</a></li>
    </ul>

    <br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="5%">Total Price</th>
		<th width="15%">Product Details</th>
		<th width="20%">Delivery Information</th>
		<th width="10%">Order Status</th>
		<th width="10%">Payment Method</th>
		<th width="10%">Order User</th>
		<th width="10%">Order Time</th>
		<th width="10%">Operation</th>
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
					<c:if test="${order.status==1}">Unpaid</c:if>
					<c:if test="${order.status==2}"><span style="color:#ff0000;">Paid</span></c:if>
					<c:if test="${order.status==3}">In Delivery</c:if>
					<c:if test="${order.status==4}">Completed</c:if>
				</p>
			</td>
			<td>
				<p>
					<c:if test="${order.paytype==1}">WeChat</c:if>
					<c:if test="${order.paytype==2}">Alipay</c:if>
					<c:if test="${order.paytype==3}">Cash On Delivery</c:if>
				</p>
			</td>
			<td><p>${order.user.username}</p></td>
			<td><p><fmt:formatDate value="${order.systime}" pattern="yyyy-MM-dd HH:mm:ss" /></p></td>
			<td>
				<c:if test="${order.status==2}">
					<a class="btn btn-success" href="orderDispose?id=${order.id}&status=${status}">The Delivery</a>
				</c:if>
				<c:if test="${order.status==3}">
					<a class="btn btn-warning" href="orderFinish?id=${order.id}&status=${status}">Carry Out</a>
				</c:if>
				<a class="btn btn-danger" href="orderDelete?id=${order.id}&status=${status}">Delete</a>
			</td>
       	</tr>
	</c:forEach>

</table>

<br>${pageTool}<br>
</div>
</body>
</html>
