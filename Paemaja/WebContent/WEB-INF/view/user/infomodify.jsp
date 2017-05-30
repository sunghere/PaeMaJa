<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
	#menu-head{font-size:25px; text-align:center; color:black; margin-bottom:10px;}
	.menuT{color:black;display:block;padding:5px 5px; background:#fcfcff;} .menuT:hover{background:white;color:black;text-decoration:none;}
	#ㅎㅎ{margin-top:7px;border:1px solid black;} 
	.infomodify-head{margin-top:100px; list-style: none;} .infomodify-body{float: right; margin: 0px 20px; margin-top:35px;}
	#foot{height:250px;} 
	#passcheck{width:80%; height:30px; margin:0 auto; border:1px solid; border-radius:3px; } .modifybtn{display:inline-block;}
	.modifybtn{border:none;}
	.second{display:none; background:#fcfcff; padding-bottom:10px;}  .underline{width:70%; margin-top:50px; margin-bottom:50px;} .modifyinput{padding-left:15px;}
	.w3-input {margin-top:1%;margin-bottom:1%;width:62%;}
	#menu{margin-bottom:3%;} .superkidd{float:right;}
	
	.wbtn{
	background-color: white;
    color: black;
    border: none;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.wbtn:hover {background-color: #e7e7e7;}
	
</style>
<script>
	$(function(){
		var state;
		$(".modifybtn").click(function(){
			$.ajax({
				url:"passcheck.do",
				async : false,
				data:{"pass" : $("#passcheck").val(), "pwd":$("#pwd").val(), "id":$("#id").val()},
				success:function(data){
					if(data=="kakao" || data=="true"){
						alert("일치");$(".first").css("display","none");
						$(".second").css("display","block");
					}
					else if(data=="notInput"){alert("입력x")}
					else if(data=="fail"){alert("불일치")}
					else if(data=="error"){alert("에러")}
					
					if(data=="kakao"){$(".kakaopassword").css("display","none")}
					
					$("#nick").attr("value",$("#nickname").val())
					$("#favo").attr("value",$("#favorite").val())
				}
			})
		})
	})
</script>
<input type="hidden" id="id" value="${login.id}">
<input type="hidden" id="pwd" value="${login.pwd}">
<input type="hidden" id="favorite" value="${login.favorite}">
<input type="hidden" id="nickname" value="${login.nickname}">
<div class="container">
	<div class="row">
	 	<div class="col-md-3 menu-bar">
	 		<div id="menu-head">마이페이지<br></div>
	 		<p id="ㅎㅎ"></p> 
 			<div id="menu-content">
			 	<a class="menuT" href="infomodify.do" id="A">회원정보 수정</a>
			 	<a class="menuT" href="mylist.do" id="B">나의 맛집</a>
			 	<a class="menuT" href="writinglist.do" id="C">내가 쓴 글</a>
 			</div>
	 	</div>
	 <div class="col-md-9 first">
	 <br><br>
	 <div><h3>&nbsp;회원정보 수정</h3></div>
		<c:choose>
			<c:when test="${fn:contains(login.id,'@')}">
				<ul class="infomodify-head">
			 		<h5>카카오 계정을 입력하세요</h5>
			 		<input type="password" id="passcheck">
			 		<li class="infomodify-body"><button class="wbtn modifybtn">확인</button></li>
			 	</ul>	
			</c:when>
			<c:otherwise>
				<ul class="infomodify-head">
			 		<h5>비밀번호를 입력하세요</h5>
			 		<input type="password" id="passcheck">
			 		<li class="infomodify-body"><button class="wbtn modifybtn">확인</button></li>
			 	</ul>	
			</c:otherwise>
		</c:choose>
	 </div><!-- #f9f9f9 -->
<div class="col-md-9 second">
	<div class="underline"><h3>회원정보 수정</h3></div>
	<form action="infochange.do">
	<div class="modifyinput">
	<input class="w3-input" type="text" id="nick" name="nickname" placeholder="닉네임 입력해주세요">
<div class="kakaopassword">
	<input class="w3-input" type="password" id="pass" name="pwd" placeholder="패스워드를 입력해주세요">
</div>
	<input class="w3-input" type="text" id="favo" name="favorite" placeholder="관심분야를 입력해주세요">
	</div>
	<!-- 이름<br>
	<input type="text"><br>
	닉네임<br>
	<input type="text"><br>
	관심분야<br>
	<input type="text"><br>              pwd nick favorite
	비밀번호<br>
	<input type="password"><br><br> -->
	<input type="hidden" name="id" value="${login.id}">
	<input type="hidden" name="seq" value="${login.seq}">
	<input type="hidden" name="auth" value="${login.auth}">
	<button class="wbtn superkidd">확인</button>
	</form>
</div>
</div>
	</div>
<div id="foot"></div>