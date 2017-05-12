<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="nows" class="java.util.Date" />
<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" title="메인" href="main.do"><img src="image/logo.png" class="paelogo img-responsive" ></a>
	
			<button class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-navbar">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

		</div>
		<div class="navbar-collapse collapse" id="bs-navbar">
			<ul class="nav navbar-nav">
			<!--<i class="fa fa-home"></i>메인 -->
			

				<c:if test="${ !empty login && login.auth eq 1 }">
					<li><a title="관리메뉴" href="/setting.do">관리자 메뉴</a></li>
					<li><a title="관리메뉴" href="/shopwrite.do">가게 작성</a></li>
				</c:if>

			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${ !empty login  && login.nickname ne ''}">
					<li><a class="" data-toggle="modal" data-target="#infomodal"
						title="내정보" href="#"><i class="fa fa-info-circle"></i>${login.nickname}</a>
					</li>
				</c:if>
				<c:if test="${ !empty login  && login.id ne ''}">
					<li><a href="logout.do" title="로그아웃">로그아웃</a></li>

				</c:if>

				<c:if test="${empty login}">

					<li><a href="#" data-toggle="modal" title="로그인&회원가입"
						data-target="#shLogin" class="icon06">로그인&회원가입</a></li>
				</c:if>

			</ul>
		</div>
	</div>
</nav>

<div class="main-container">
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<a href="#" class="thumbnail"> <img src="image/mainimg01.jpg"
					alt="...">
				</a>
				<div class="carousel-caption-middle">
					<h1>Pae Ma Ja</h1>
					<h2>패 맞 을 맛</h2>
				</div>
			</div>
			<div class="item">
				<a href="#" class="thumbnail"> <img src="image/mainimg02.jpg"
					alt="...">
				</a>
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>

		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>
