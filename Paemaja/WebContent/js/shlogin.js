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


                        if (msg.message == "SUCC") {
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

})(jQuery);