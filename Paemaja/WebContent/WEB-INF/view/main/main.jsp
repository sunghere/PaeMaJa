<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-21
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.pae.maja.pmashop.model.PMAShopDTO"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/yscss.css" />
<div class="row">
	<c:if test="${empty shoplist}">
	없어
	</c:if>
	<div class="col-md-1 col-lg-1 yeop"></div>

	<c:forEach items="${shoplist}" var="tempShop" varStatus="vs">
		<div class="col-md-3 col-lg-3 col-sm-3 containerys">
			<div>
				<a href="shopdetail.do?seq=${tempShop.seq}"><img class="thumnail" src="<%=request.getContextPath()%>/image/shop/${tempShop.imgFile}" class="content_img" alt="없음" /></a>
				<!-- 이미지 -->
			</div>
			<div>
				<p class="shop_name">${tempShop.name}</p>
				<!-- 상호명 -->
				<p class="shop_comt">${tempShop.category},${tempShop.menu}</p>
				<!-- 요약 -> 카테고리, 메뉴-->
				<hr />
				<br />
				<ul class="mainul">
					<li class="img mainli"><span><img src="images/s2.jpg"
							class="imgul1"></span>3</li>

					<li class="img mainli"><span><img src="images/h1.jpg"
							class="imgul2"></span><label for="">3</label>/10</li>
				</ul>
			</div>
		</div>
		<c:if test="${vs.count% 3 eq 0 }">
			</div>
			<div class="col-md-1 col-lg-1 yeop"></div>
			<div class="row">
		</c:if>
	</c:forEach>
</div>


