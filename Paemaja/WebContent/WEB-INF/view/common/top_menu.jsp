<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="UTF-8" />
<style>

 .search-box{position:relative;
   border:1px solid #e2e2e2;border-radius:5px;padding:5px 10px;
   margin:0 auto;
} 
.search-box .search {
	border: 1px solid #e2e2e2;
	border-radius: 5px;
	height: 43px;
	width: 100%;
	padding: 0 10px;
}

.search-box .custom-tag {
	padding: 5px 32px 5px 8px;
	border-radius: 33px;
	background: #f85272;
	font-size: 12px;
	border: 1px solid #f2395d;
	position: relative;
	cursor: pointer;
}

.search-box .btn-search {
	position: absolute;
	right: 20px;
	top: 15px;
	cursor: pointer;
	opacity: 0.5
}

.spi-search {
	width: 23px;
	height: 23px;
	background-position: -0px -133px;
}

.spi {
	display: inline-block;
	text-indent: 100%;
	white-space: nowrap;
	background-image: url("http://www.notefolio.net/sprites/ebc4aa8095.png");
}
</style>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/yscss.css" />



<div class="text-center container">
	<div class='row'>
		<div class="col-sm-1 col-xs-1 col-lg-3 col-md-3"></div>
		<div class="search-box col-xs-10 col-sm-10 col-lg-6 col-md-6">
			<div class=".bootstrap-tagsinput">
				<input class="search" type="search" name="q" id="q"
					placeholder="검색어를 입력해주세요" value="">
				<div class="btn-search" id="btnSearch">
					<i class="spi spi-search"></i>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row" id="mainCard">
	<div class="idx_top" id="area">
		<div id="idx_top_title1" class="content_tab ">
			<ul class="category_area cycle-slideshow" data-cycle-slides="> li"
				data-cycle-timeout="0" data-cycle-prev=".category_prev"
				data-cycle-next=".category_next" data-cycle-fx="carousel"
				data-cycle-carousel-visible="9" data-cycle-carousel-fluid=false
				data-allow-wrap=true style="max-width: 76%;">
				<li class="area_0"><a
					href="main.do">
						<span>전체</span>\
				</a></li>
				<li class="area_1"><a
					href="searchregion.do?search=서울">
						<span>서울</span>
				</a></li>
				<li class="area_2"><a
					href="searchregion.do?search=경기">
						<span>경기</span>
				</a></li>
				<li class="area_3"><a
					href="searchregion.do?search=인천">
						<span>인천</span>
				</a></li>
				<li class="area_4"><a
					href="searchregion.do?search=경상">
						<span>경상</span>
				</a></li>
				<li class="area_5"><a
					href="searchregion.do?search=전라">
						<span>전라</span>
				</a></li>
				<li class="area_6"><a
					href="searchregion.do?search=충청">
						<span>충청</span>
				</a></li>
				<li class="area_7"><a
					href="searchregion.do?search=강원">
						<span>강원</span>
				</a></li>
				<li class="area_8"><a
					href="searchregion.do?search=제주">
						<span>제주</span>
				</a></li>
			</ul>
			<button class="category_button category_prev">
				<img src="http://img.zazz.kr/images/arrow-prev.png" />
			</button>
			<button class="category_button category_next">
				<img src="http://img.zazz.kr/images/arrow-next.png" />
			</button>
		</div>
	</div>

</div>