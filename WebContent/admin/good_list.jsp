<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>product list</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp" %>
	
	<div class="text-right"><a class="btn btn-warning" href="goodAdd">add product</a></div>
	
	<br>
		
	<ul role="tablist" class="nav nav-tabs">
        <li <c:if test='${status==0}'>class="active"</c:if> role="presentation"><a href="goodList">all product</a></li>
        <li <c:if test='${status==1}'>class="active"</c:if> role="presentation"><a href="goodList?status=1">banner recommendation</a></li>
        <li <c:if test='${status==2}'>class="active"</c:if> role="presentation"><a href="goodList?status=2">hot selling recommendation</a></li>
        <li <c:if test='${status==3}'>class="active"</c:if> role="presentation"><a href="goodList?status=3">new style recommendation</a></li>
    </ul>
    
    <c:if test="${status == 1}"><br><p>By default, only the first [1] records will be displayed on the first page</p></c:if>
    <c:if test="${status == 2}"><br><p>By default, only the first [6] records will be displayed on the first page</p></c:if>
    <c:if test="${status == 3}"><br><p>By default, only the first [8] records will be displayed on the first page</p></c:if>
	
	<br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">picture</th>
		<th width="10%">name</th>
		<th width="20%">introduction</th>
		<th width="10%">price</th>
		<th width="10%">category</th>
		<th width="25%">operation</th>
	</tr>
	
	<c:forEach var="good" items="${goodList}">
         <tr>
         	<td><p>${good.id}</p></td>
         	<td><p><a href="../index/detail?goodid=${good.id}" target="_blank"><img src="../${good.cover}" width="100px" height="100px"></a></p></td>
         	<td><p><a href="../index/detail?goodid=${good.id}" target="_blank">${good.name}</a></p></td>
         	<td><p>${good.intro}</p></td>
         	<td><p>${good.price}</p></td>
         	<td><p>${good.type.name}</p></td>
			<td>
				<p>
				<c:if test="${good.topScroll}"><a class="btn btn-info topDelete" href="javascript:;" type="1" goodid="${good.id}" text="add banner">remove banner</a></c:if>
				<c:if test="${!good.topScroll}"><a class="btn btn-primary topSave" href="javascript:;" type="1" goodid="${good.id}" text="remove banner">add banner</a></c:if>
				<c:if test="${good.topLarge}"><a class="btn btn-info topDelete" href="javascript:;" type="2" goodid="${good.id}" text="add hot sale">remove hot sale</a></c:if>
				<c:if test="${!good.topLarge}"><a class="btn btn-primary topSave" href="javascript:;" type="2" goodid="${good.id}" text="remove hot sale">add hot sale</a></c:if>
				<c:if test="${good.topSmall}"><a class="btn btn-info topDelete" href="javascript:;" type="3" goodid="${good.id}" text="add new products">remove new products</a></c:if>
				<c:if test="${!good.topSmall}"><a class="btn btn-primary topSave" href="javascript:;" type="3" goodid="${good.id}" text="remove new products">add new products</a></c:if>
				</p>
				<a class="btn btn-success" href="goodEdit?id=${good.id}">modify</a>
				<a class="btn btn-danger" href="goodDelete?id=${good.id}">delete</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

<br>${pageTool}<br>
</div>


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$(document).on("click", ".topSave", function(){
		var type = $(this).attr("type");
		var goodid = $(this).attr("goodid");
		var text = $(this).attr("text");
		var old = $(this).text();
		var obj = this;
		$.post("topSave.action", {"goodId": goodid, "type": type}, function(data){
			if(data=="ok"){
				$(obj).text(text).attr("class", "btn btn-info topDelete").attr("text", old);
			}else{
				alert("Operation failed!");
			}
		}, "text");
	});
	$(document).on("click", ".topDelete", function(){
		var type = $(this).attr("type");
		var goodid = $(this).attr("goodid");
		var text = $(this).attr("text");
		var old = $(this).text();
		var obj = this;
		$.post("topDelete.action", {"goodId": goodid, "type": type}, function(data){
			if(data=="ok"){
				$(obj).text(text).attr("class", "btn btn-primary topSave").attr("text", old);
			}else{
				alert("Operation failed!");
			}
		}, "text");
	});
});
</script>
</body>
</html>