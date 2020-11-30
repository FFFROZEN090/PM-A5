<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>

	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a href="index">Drink Shop</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index" <c:if test="${flag==1}">class="active"</c:if>>home page</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle <c:if test="${flag==2}">active</c:if>" data-toggle="dropdown">Commodity Classification<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-2">
								<li>
									<div class="row">
										<div class="col-sm-12">
											<h4>Commodity Classification</h4>
											<ul class="multi-column-dropdown">
												<c:forEach var="type" items="${typeList}">
													<li><a class="list" href="goods?typeid=${type.id}">${type.name}</a></li>
												</c:forEach>
											</ul>
										</div>	
									</div>
								</li>
							</ul>
						</li>
						<li><a href="top?typeid=2" <c:if test="${flag==7}">class="active"</c:if>>hot sale</a></li>
						<li><a href="top?typeid=3" <c:if test="${flag==8}">class="active"</c:if>>new products</a></li>
						<c:if test="${sessionScope.user==null}">
							<li><a href="register?flag=-1" <c:if test="${flag==5}">class="active"</c:if>>register</a></li>
							<li><a href="login?flag=-1" <c:if test="${flag==6}">class="active"</c:if>>login</a></li>
						</c:if>
						<c:if test="${sessionScope.user!=null}">
							<li><a href="order" <c:if test="${flag==3}">class="active"</c:if>>my order</a></li>
							<li><a href="my" <c:if test="${flag==4}">class="active"</c:if>>personal center</a></li>
							<li><a href="logout">logout</a></li>
						</c:if>
						<li><a href="../admin.jsp" target="_blank">back-stage management</a></li>
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="search">
							<input type="text" class="form-control" name="name">
							<button type="submit" class="btn btn-default" aria-label="Left Align">search</button>
						</form>
					</div>	
				</div>
				<div class="header-right cart">
					<a href="cart">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"><span class="card_num">${order.amount==null ? '' :order.amount}</span></span>
					</a>
				</div>
				<div class="header-right login">
					<a href="my"><span class="glyphicon glyphicon-user" aria-hidden="true">${sessionScope.user.username}</span></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->

</body>
</html>