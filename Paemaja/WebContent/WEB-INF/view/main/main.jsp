<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-21
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
	/* $(function(){
	 $("#qt").on("mouseover",function(){
	 $("#back_img").animate({
	 opacity: '1'
	 });
	 $("#back_text").animate({
	 opacity:'0'
	 });
	 })
	 $("#qt").mouseleave(function(){
	 $("#back_img").animate({
	 opacity: '0.3'
	 });
	 $("#back_text").animate({
	 opacity:'1'
	 });
	 })
	 }) */
</script>
<style>
.back_img{
	position: relative;
}

.txts_divs {
	position: absolute;
	top : 1px;
	z-index:-9999;
}

.detailimg {
	opacity: 0.3;
	max-height:200px;
	min-height:200px;
	max-width:300px;
	width:100%;
}

.detailimg:hover, .detailimg:focus {
	opacity : 1;	
}
</style>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/yscss.css" />
<div class="row">

	<c:if test="${empty shoplist}">
	 등록된 음식점이 없습니다.
	</c:if>
	<c:forEach items="${shoplist}" var="tempShop" varStatus="vs">
		<div class="col-xs-12 col-sm-12  col-md-4 col-xl-3">
			<div class="mbr-plan card text-xs-center back_img" >
			
				<c:if test='${empty tempShop.imgFile or  tempShop.imgFile eq ""}'>
					<a href="shopdetail.do?seq=${tempShop.seq}&userseq=${login.seq}"><img src="images/noimage.jpg" class="detailimg img-responsive"></a>
				</c:if>
			
				<c:if test='${!empty tempShop.imgFile and tempShop.imgFile ne ""}'>
					<a href="shopdetail.do?seq=${tempShop.seq}&userseq=${login.seq}"><img src="${tempShop.imgFile}" class="detailimg img-responsive"></a>
				</c:if>
				<div class="card-block txts_divs">
					<div class="card-title">
						<h3 class="mbr-plan-title">${tempShop.category}</h3>
						<small class="mbr-plan-subtitle">${tempShop.menu}</small>
					</div>
					<div class="card-text">
						<div class="mbr-price">
							<span class="mbr-price-value">★</span> <span
								class="mbr-price-figure">${tempShop.name}</span><br><small
								class="mbr-price-term">　/${tempShop.addr}</small>
						</div>
						<small class="mbr-plan-price-desc">${tempShop.tel}</small>
					</div>
				</div>
				<div class="mbr-plan-body card-block">
					<div class="mbr-plan-list">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">평점 : ${tempShop.scores}</li>
							<li class="list-group-item">투표참여인원수 : ${tempShop.counts}</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<c:if test="${vs.count% 3 eq 0 }">
</div>
<div class="row">
	</c:if>
	</c:forEach>
</div>


