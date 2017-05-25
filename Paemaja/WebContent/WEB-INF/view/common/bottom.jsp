<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<input id="showMsgBt" data-toggle="modal" 
	data-target="#alertModal" type="button" hidden='hidden'>

<div id="alertModal" class="modal fade" tabindex="-1" role="dialog"
	aria-hidden="true">

	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header line_none">
				<button class="modalclose close" data-dismiss="modal"
					aria-hidden="true">
					<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
				</button>
			</div>
			<div class="modal-body">
				<p class="text-center" id="myMsg"></p>

			</div>
		</div>
	</div>
</div>
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
							<input type="radio" name="options">Sign in
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
						<button class="center-block btn_style find" type="button"
							id="login_btnLogin" title="로그인">로그인</button>


						<div id='loginErrmsg' class="subtitle_Type_mb50"></div>
					</form>
				</div>
				<div class=" modal-footer">
					<h5 class="subtitle_Type_mb_10">
						SNS 계정으로 회원가입 & 로그인<br> <br>
					</h5>
					<a id="kakao-login-btn"></a><br>
					<h5 class="subtitle_Type_mb_10">
						아이디/비밀번호를 잊으셨나요?<br> <br>
					</h5>
					<div class="center-block">
						<a href="idfind.do" class="center-block btn_style find">아이디 찾기
							/ 비밀번호찾기</a>
					</div>

				</div>
			</div>
			<div class='regiScreen' hidden='hidden'>
				<div class="modal-body">
					<form id="regiform">
						<input type="search" id="regi_userid" data-msg="ID"
							class="form-control" placeholder="ID" name="id"
							onkeyup="check(this)">
						<div id="checkResult"></div>
						<br> <input type="password" id="regi_pwd" data-msg="패스워드"
							title="패스워드" class="form-control" placeholder="PASSWORD"
							name="pwd" size="12"><br> <input type="search"
							id="regi_nick" data-msg="닉네임" title="닉네임" class="form-control"
							placeholder="nickName" name="nickName" onkeyup="checknick(this)">
						<div id='nickcheckResult'></div>
						<br>


						<div id='regiErrmsg' class="subtitle_Type_mb50"></div>
					</form>
				</div>
				<div class="modal-footer">
					<h5 class="subtitle_Type_mb_10">
						이용 약관<br> <br>
					</h5>
					<textarea class='form-control' rows='3'>이러쿵 저러쿵
						</textarea>
					<div class="btn_group_center">
						<button id='_regibtn' disabled="disabled" class="btn_style find">동의
							및 가입</button>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<div style="height:45%">

</div>
<script>

var idchecks = true;
	var checkID = false;
	var checkNick = false;

	function showMsgs(str) {
		$('#myMsg').html(str);

		$('#showMsgBt').click();
	}
	function checkRegi() {

		if (checkID == true && checkNick == true) {
			$("#_regibtn").attr("disabled", false);

		} else {
			$("#_regibtn").attr("disabled", "disabled");
		}

	}

	$("#_regibtn").click(function() {
		if ($("#regi_userid").val() == "") {
			alert($("#regi_userid").attr("data-msg") + " 입력해 d주십시요.");
			$("#_userid").focus();
		} else if ($("#regi_nick").val() == "") {
			alert($("#regi_nick").attr("data-msg") + " 입력해 주십시요.");
			$("#regi_nick").focus();
		} else if ($("#regi_pwd").val() == "") {
			alert($("#regi_pwd").attr("data-msg") + " 입력해 주십시요.");
			$("#regi_pwd").focus();
		} else {

			shRegi();
		}

	});
	function check(textid) {

		var text = $(textid).val();

		if (text.length < 5) {
			$("#checkResult").html(
					"<div class='help-tip'><p>아이디는 5자 이상<br>입력해주세요.</p></div>")
					.css({
						"display" : "inline-block",
						"color" : "red"
					});
			return;
		}
		//공백 금지
		//var blank_pattern = /^\s+|\s+$/g;(/\s/g
		var blank_pattern = /[\s]/g;
		if (blank_pattern.test(text) == true) {
			checkID = false;
			checkRegi();
			$("#checkResult").html(
					"<div class='help-tip'><p>공백은<br>사용할수 없습니다.</p></div>")
					.css({
						"display" : "inline-block",
						"color" : "red"
					});
			return;
		}

		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

		if (special_pattern.test(text) == true) {
			$("#checkResult").html(
					"<div class='help-tip'><p>특수문자는<br>사용할수 없습니다.</p></div>")
					.css({});
			checkID = false;
			checkRegi();

			return;
		}

		if (!(text == "") && !(text == null))
			$
					.ajax({
						type : "POST",
						url : "idcheck.do",
						data : {
							"id" : text
						},
						success : function(msg) {

							if (msg.message == "FAIL") {
								checkID = true;
								checkRegi();
								$("#checkResult")
										.html(
												"<i class='icon ion-ios-checkmark-outline'></i>")
										.css({
											"display" : "inline-block",
											"color" : "blue"
										});
							} else {
								$("#checkResult").html(
										"<i class='icon ion-ios-close'></i>")
										.css({
											"display" : "inline-block",
											"color" : "red"
										});
								checkID = false;
								checkRegi();

							}
						},
						error : function(a, b, c) {

							checkID = false;
							checkRegi();
							$("#checkResult").html("ERROR").css({
								"display" : "inline-block",
								"color" : "red"
							});

						}

					})
		else {
			$('input[name=id]').focus();
			$("#checkResult").html("<i class='icon ion-android-create'></i>")
					.css({
						"color" : "red"
					});
			checkID = false;
			checkRegi();

		}
	}
	function checknick(textid) {

		var text = $(textid).val();

		if (text.length < 3) {
			$("#nickcheckResult").html(
					"<div class='help-tip'><p>닉네임은 3자 이상<br>입력해주세요.</p></div>")
					.css({
						"display" : "inline-block",
						"color" : "red"
					});
			return;
		}
		//공백 금지
		//var blank_pattern = /^\s+|\s+$/g;(/\s/g
		var blank_pattern = /[\s]/g;
		if (blank_pattern.test(text) == true) {
			checkNick = false;
			checkRegi();
			$("#nickcheckResult")
					.html(
							"<div class='help-tip'><p>닉네임에 공백은<br>사용할수 없습니다.</p></div>")
					.css({
						"display" : "inline-block",
						"color" : "red"
					});
			return;
		}

		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

		if (special_pattern.test(text) == true) {
			$("#nickcheckResult")
					.html(
							"<div class='help-tip'><p>닉네임은 영문혹은 숫자만<br>사용할수 없습니다.</p></div>")
					.css({});
			checkNick = false;
			checkRegi();

			return;
		}

		if (!(text == "") && !(text == null))
			$
					.ajax({
						type : "POST",
						url : "nickCheck.do",
						data : {
							"nickname" : text
						},
						success : function(msg) {

							if (msg.message == "FAIL") {
								checkNick = true;
								checkRegi();
								$("#nickcheckResult")
										.html(
												"<i class='icon ion-ios-checkmark-outline'></i>")
										.css({
											"display" : "inline-block",
											"color" : "blue"
										});
							} else {
								$("#nickcheckResult").html(
										"<i class='icon ion-ios-close'></i>")
										.css({
											"display" : "inline-block",
											"color" : "red"
										});
								checkNick = false;
								checkRegi();

							}
						},
						error : function(a, b, c) {

							checkNick = false;
							checkRegi();
							$("#nickcheckResult").html("ERROR").css({
								"display" : "inline-block",
								"color" : "red"
							});

						}

					})
		else {
			$('input[name=id]').focus();
			$("#nickcheckResult").html(
					"<i class='icon ion-android-create'></i>").css({
				"color" : "red"
			});
			checkNick = false;
			checkRegi();

		}
	}
	function shRegi() {

		$.ajax({
			type : "POST",
			url : "kakaoRegi.do",
			data : {
				"id" : $('#regi_userid').val(),
				"pwd" : $('#regi_pwd').val(),
				"nickname" : $('#regi_pwd').val(),
				"favorite" : ""
			},
			success : function(msg) {
				if (msg.message == "SUCS") {
					showMsgs("회원가입에 성공하였습니다. 로그인해주세요");
					$("#_islogin").attr("value", 1);
					$(".loginScreen").show();
					$(".regiScreen").hide();
					$('#regi_userid').val(""), $('#regi_pwd').val(""), $(
							'#regi_nick').val("")
					$('.title_Type').html("유저 로그인");
					checkID = false;
					checkNick = false;
					checkRegi();
					$('#sub_titlelogin').html("환영합니다 로그인해주세요");

				} else {
					showMsgs("회원가입에 실패하였습니다.");

				}
			},
			error : function(a, b, c) {

				showMsgs("통신 Error <br> 관리자에게 문의해주세요")

			}

		})
	}
</script>
<script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle_cal.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery_cycle_swipe.js"></script>
<script src="<%=request.getContextPath()%>/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
<script src="<%=request.getContextPath()%>/js/shlogin.js"></script>