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
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-navbar">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

		</div>
		<div class="navbar-collapse collapse" id="bs-navbar">
			<ul class="nav navbar-nav">
				<li><a title="메인" href="main.do"><i class="fa fa-home"></i>메인</a>
				</li>

				<c:if test="${ !empty login && login.auth eq 3 }">
					<li><a title="관리메뉴" href="/setting.do">관리자 메뉴</a></li>
				</c:if>

			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${ !empty login  && login.name ne ''}">
					<li><a class="" data-toggle="modal" data-target="#infomodal"
						title="내정보" href="#"><i class="fa fa-info-circle"></i>${login.name}</a>
					</li>
				</c:if>
				<c:if test="${ !empty login  && login.id ne ''}">
					<li><a href="/logout.do" title="로그아웃">로그아웃</a></li>

				</c:if>

				<c:if test="${empty login}">
					<li><a title="회원가입" href="regi.do">회원가입</a></li>
					<li><a href="#" data-toggle="modal" title="로그인"
						data-target="#shLogin" class="icon06">로그인 </a></li>
				</c:if>

			</ul>
		</div>
	</div>
</nav>

