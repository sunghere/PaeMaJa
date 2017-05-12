<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:if test="${ empty login }">

	<div class="modal fade" id="shLogin" style="display: none;"
		aria-hidden="true">
		<div id="login_bg"
			style="background-color: rgba(0, 0, 0, 0.5); position: fixed; top: 0; left: 0; width: 100%; height: 100%;"></div>
		<div class="modal-dialog login_popup" id="login_popup">
			<div class="modal-content login_popup_content">
				<div class="modal-header line_none">
					<button type="button" class="close" id="login_close"
						data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<h2 class="title_Type">유저 로그인</h2>
					<h3 class="subtitle_Type_mb50" id='sub_titlelogin'>
						환영합니다 로그인해주세요<br> <i class=""></i>
					</h3>
					<div class='text-center'>
						<div class="btn-group" data-toggle="buttons">
							<label class="selectBt btn btn-info active" title="loginGO">
								<input type="radio" name="options"> Sign in
							</label> <label class="selectBt btn btn-info" title="regiGO"> <input
								type="radio" name="options" checked>Sign up
							</label>
						</div>
						<input type="hidden" id="_isent" name="isent" value="0">
					</div>
				</div>
				<div class='loginScreen'>
					<div class="modal-body">
						<form id="loginform">
							<input type="text" id="login_userid" data-msg="ID"
								class="form-control" placeholder="ID" name="loginid" size="15">
							<br> <input type="password" id="login_pwd" data-msg="패스워드"
								title="패스워드" class="form-control" placeholder="PASSWORD"
								name="loginpwd" size="15"><br>
							<button class="btn_style find" type="button"
								id="login_btnLogin" title="로그인">로그인</button>


							<div id='loginErrmsg' class="subtitle_Type_mb50"></div>
						</form>
					</div>
					<div class=" modal-footer">
						<h5 class="subtitle_Type_mb_10">
							아이디/비밀번호를 잊으셨나요?<br> <br>
						</h5>
						<div class="btn_group_center">
							<a href="idfind.do" class="btn_style find">아이디 찾기 / 비밀번호찾기</a>
						</div>

					</div>
				</div>
				<div class='regiScreen' hidden='hidden'>
					<div class="modal-body">
						<form id="regiform">
							<input type="text" id="regi_userid" data-msg="ID"
								class="form-control" placeholder="ID" name="id" size="12">
							<br> <input type="password" id="regi_pwd" data-msg="패스워드"
								title="패스워드" class="form-control" placeholder="PASSWORD"
								name="pwd" size="12"><br> <input type="password"
								id="regi_pwd" data-msg="닉네임" title="닉네임" class="form-control"
								placeholder="NIckName" name="nickName" size="12"><br>

							<div id='regiErrmsg' class="subtitle_Type_mb50"></div>
						</form>
					</div>
					<div  class="modal-footer">
						<h5 class="subtitle_Type_mb_10">
							이용 약관<br> <br>
						</h5>
						<textarea class='form-control' rows='3'>
						</textarea>
						<div class="btn_group_center">
							<a href="idfind.do" class="btn_style find">동의 및 가입</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</c:if>
<script>
	$(".selectBt").click(function() {
		var bt = this;
		var selstr = $(this).attr("title");

		if (selstr == "loginGO") {

			$("#_islogin").attr("value", 1);
			$(".loginScreen").show();
			$(".regiScreen").hide();

			$('.title_Type').html("유저 로그인");
			$('#sub_titlelogin').html("환영합니다 로그인해주세요");
		} else if (selstr == "regiGO") {

			$("#entcheckr").html("");
			$(".loginScreen").attr("value", 0);
			$(".loginScreen").hide();
			$(".regiScreen").show();

			$('.title_Type').html("유저 간편 가입");

			$('#sub_titlelogin').html("간단히 정보를 입력해주세요");
		}

	});
</script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle_cal.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle_swipe.js"></script>
<script src="<%=request.getContextPath()%>/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
<script src="<%=request.getContextPath()%>/js/shlogin.js"></script>
