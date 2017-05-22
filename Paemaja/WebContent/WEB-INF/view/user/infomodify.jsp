<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	#menu-head{font-size:25px; text-align:center; color:black; margin-bottom:10px;}
	.menuT{color:red;display:block;padding:5px 5px;} .menuT:hover{background:#f7f7ff;color:black;} .menuT:focus{background:blue;}
	#ㅎㅎ{margin-top:7px;border:1px solid black;} 
	.infomodify-head{margin-top:100px; list-style: none;} .infomodify-body{float: right; margin: 0px 20px; margin-top:35px;}
	#foot{height:250px;}
	#passcheck{width:80%; height:30px; margin:0 auto; border:1px solid; border-radius:3px; } .modifybtn{display:inline-block;}
</style>
<script>
	$(function(){
		$(".modifybtn").click(function(){
			$.ajax({
				url:"passcheck.do",
				async : false,
				data:{"pass" : $("#passcheck").val(), "pwd":$("#pwd").val()},
				success:function(data){
					if(){
						alert("야호");
					}
				}
			})
		})
	})
</script>
<input type="hidden" id="pwd" value="${login.pwd}">
<div class="container first">
	<div class="row">
	 	<div class="col-md-3 menu-bar">
	 		<div id="menu-head">마이페이지<br></div>
	 		<p id="ㅎㅎ"></p> 
 			<div id="menu-content">
			 	<a class="menuT" href="infomodify.do" id="A">회원정보 수정</a>
			 	<a class="menuT" href="blacklist.do" id="B">블랙 리스트</a>
			 	<a class="menuT" href="writinglist.do" id="C">내가 쓴 글</a>
 			</div>
	 	</div>
	 <div class="col-md-9">
	 	<ul class="infomodify-head">
	 		<h4>비밀번호</h4>
	 		<input type="password" id="passcheck">
	 		<li class="infomodify-body"><button class="btn modifybtn">확인</button></li>
	 	</ul>
	 </div>
	</div>
</div>
<div class="second">
	이름<br>
	<input type="text"><br>
	닉네임<br>
	<input type="text"><br>
	관심분야<br>
	<input type="text"><br>
	비밀번호<br>
	<input type="password"><br>
	<button class="btn">확인</button>
</div>
<div id="foot"></div>