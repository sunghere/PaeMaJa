<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:if test="${ empty login }">

	<div class="modal fade" id="shLogin" style="display: none;"
		aria-hidden="true">
		<div id="login_bg"
			style="background-color: rgba(252,252, 252, 0.5); position: fixed; top: 0; left: 0; width: 100%; height: 100%;"></div>
		<div class="modal-dialog login_popup" id="login_popup">
			<div class="modal-content login_popup_content">
				<div class="modal-header line_none">
					<button type="button" class="close" id="login_close"
						data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<h2 class="title_Type">패맞아 로그인</h2>
					<h3 class="subtitle_Type_mb50">
						Welcome ^ ^ // login plz<i class=""></i>
					</h3>
				</div>
				<div class="modal-body">
					<form id="loginform">
						<input type="text" id="login_userid" data-msg="ID"
							class="form-control" placeholder="ID" name="id"
							size="15"> <br> <input type="password"
							id="login_pwd" data-msg="패스워드" title="패스워드" class="form-control"
							placeholder="PASSWORD" name="pwd" size="15"><br>
						<button class="btn btn-primary btn-default" type="button"
							id="login_btnLogin" title="로그인">로그인</button>
						<button class="btn btn-primary btn-default" type="button"
							id="login_btnRegi" title="회원가입">회원가입</button>

					</form>
				</div>
				<div class="modal-footer">
					<h5 class="subtitle_Type_mb_10">
						아이디/비밀번호를 잊으셨나요?<br> <br>
					</h5>
					<div class="btn_group_center">
						<a href="idfind.do" class="btn_style find">아이디 찾기 / 비밀번호찾기</a>
					</div>

				</div>
			</div>
		</div>
	</div>

</c:if>

<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle_cal.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle_swipe.js"></script>
<script src="<%=request.getContextPath()%>/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
