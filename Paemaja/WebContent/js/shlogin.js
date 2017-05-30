
(function ($) {

    $(function () {
        $("#login_btnLogin").click(function () {
            if ($("#login_userid").val() == "") {
                alert($("#login_userid").attr("data-msg") + " 입력해 주십시요.");
                $("#login_userid").focus();
            } else if ($("#login_pwd").val() == "") {
                alert($("#login_pwd").attr("data-msg") + " 입력해 주십시요.");
                $("#login_pwd").focus();
            } else {
                //$("#_frmForm").attr("target","ifrmSpace").submit();
//                $("#loginform").attr({"target": "_self", "action": "loginAf.do", "method": "post"}).submit();
                $.ajax({
                    type: "POST",
                    url: "loginAf.do",
                    data: {"id": $("input[id='login_userid']").val(), "pwd": $("input[id='login_pwd']").val()},
                    success: function (msg) {


                        if (msg.message == "SUCS") {
                            $(".loginexit").click();
                            location.href = "this.do";
                        } else {
                            $('#loginErrmsg').html("<div class='help-tip'><p>아이디 혹은 비밀번호를<br>확인해주세요.</p></div>").css({
                                "color": "red"
                            });
                        }
                    },

                    error: function (a, b, c) {
                        $('#loginErrmsg').html("<i class='icon ion-ios-close'></i>로그인 인증 실패").css({
                            "color": "red"
                        });

                    }
                })
            }
        });

        $("#login_pwd").keypress(function (event) {
            if (event.which == '13') {
                event.preventDefault();
                $("#login_btnLogin").click();
            }
        });

    });
    $("#login_btnRegi").click(function () {
        location.href = 'regi.do';
    });
    $("#login_userid").keypress(function (event) {
        if (event.which == '13') {
            event.preventDefault();
            $("#login_pwd").focus();
        }
    });
    //id저장
    var user_id = $.cookie("user_id");
    //alert(user_id);
    if (user_id != null) {
        $("#login_userid").val(user_id);
        $("#login_chk_save_id").prop("checked", true);
    }
    $(".selectBt").click(function() {
		var bt = this;
		var selstr = $(this).attr("title");

		if (selstr == "loginGO") {

			$("#_islogin").attr("value", 1);
			$(".loginScreen").show();
			$(".regiScreen").hide();
			$('#regi_userid').val(""),
			$('#regi_pwd').val(""),
			$('#regi_nick').val("")
			$('.title_Type').html("유저 로그인");
			checkID = false;
			checkNick = false;
			checkRegi();
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
    
    Kakao.init('9722eb00c23ea017214101975e874dcf');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function (authObj) {
            // 로그인 성공시, API를 호출합니다.
            Kakao.API.request({
                url: '/v1/user/me',
                success: function (res) {


                    if (res.kaccount_email_verified == "false") {
                        showMsg("이메일 인증이 안된 계정입니다.")
                        Kakao.Auth.logout();
                        return;
                    }
                    kakaoIdCheck(res.kaccount_email);
                    if (idcheck == false) {

                        kakaoLogin(res);
                    } else {
                        showMsg("계정이 없습니다.<br> <small>지금 새로 만들기 <a class='btn cursive' id='kakaoRegiBt' href='#'>Go<i class='fa fa-user-plus' aria-hidden='true'></i></a></small>", res)
                    }

                },
                fail: function (error) {
                    // alert(JSON.stringify(error));
                }
            });
        },
        fail: function (err) {
            // alert(JSON.stringify(err));
        }
    });
    $('#myMsg').on("click", '#kakaoRegiBt', function () {
        $('.modalclose').click();
        Kakao.Auth.login({
            success: function (authObj) {
                // 로그인 성공시, API를 호출합니다.
                Kakao.API.request({
                    url: '/v1/user/me',
                    success: function (res) {


                        if (res.kaccount_email_verified == "false") {
                            showMsg("이메일 인증이 안된 계정입니다.")
                            Kakao.Auth.logout();
                            return;
                        }
                        kakaoIdCheck(res.kaccount_email);

                        if (idcheck == false) {

                            showMsg("이미 계정이 있습니다.<br> <small>로그인해주세요.</small>");
                        } else {
                            kakaoRegi(res);
                        }

                    },
                    fail: function (error) {
                        // alert(JSON.stringify(error));
                    }
                });
            },
            fail: function (err) {
                // alert(JSON.stringify(err));
            }
        });
    });
    function kakaoIdCheck(kakaoid) {
        $.ajax({
            type: "POST",
            url: "idcheck.do",
            data: {"id": kakaoid},
            async: false,
            success: function (msg) {


                if (msg.message == "FAIL") {

                    idcheck = true;
                } else {
                    idcheck = false;
                }
            },
            error: function (a, b, c) {

                showMsg("통신 Error")
                idcheck = false;
            }


        })
    }

    function kakaoLogin(data) {
        $.ajax({
            type: "POST",
            url: "loginAf.do",
            data: {"id": data.kaccount_email, "pwd": data.id},
            success: function (msg) {
                if (msg.message == "SUCS") {
                    $(".loginexit").click();
                    location.href = "this.do";
                } else {
                    $('#loginErrmsg').html("<i class='icon ion-ios-close'></i>아이디 혹은 비밀번호를 확인해 주세요").css({
                        "color": "red"
                    });
                }
            },
            error: function (a, b, c) {


            }


        })
    }

    function kakaoRegi(data) {
        $.ajax({
            type: "POST",
            url: "kakaoRegi.do",
            data: {
                "id": data.kaccount_email,
                "pwd": data.id,
                "email": data.kaccount_email,
                "nickname": data.properties.nickname,
                "favorite" : ""
            },
            success: function (msg) {
                if (msg.message == "SUCS") {
                    showMsg("회원가입에 성공하였습니다. 로그인해주세요");

                } else {
                    showMsg("회원가입에 실패하였습니다.");
                    Kakao.Auth.logout();

                }
            },
            error: function (a, b, c) {

                showMsg("통신 Error <br> 관리자에게 문의해주세요")
                Kakao.Auth.logout();

            }


        })
    }
  
    showMsg= function(str) {
        $('#myMsg').html(str);

        $('#showMsgBt').click();
    }
    
	   
})(jQuery);