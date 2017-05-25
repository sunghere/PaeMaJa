<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#menu-head{font-size:25px; text-align:center; color:black; margin-bottom:10px;}
	.menuT{color:red;display:block;padding:5px 5px;} .menuT:hover{background:#f7f7ff;color:black;} .menuT:focus{background:blue;}
	#ㅎㅎ{margin-top:7px;border:1px solid black;}
</style>
<div class="container">
	<div class="row">
	 	<div class="col-md-3 menu-bar">
	 		<div id="menu-head">마이페이지<br></div>
	 		<p id="ㅎㅎ"></p> 
 			<div id="menu-content">
			 	<a class="menuT" href="infomodify.do" id="A">회원정보 수정</a>
			 	<a class="menuT" href="blacklist.do" id="B">블랙 리스트</a>
			 	<a class="menuT" href="writinglist.do" id="C">내가 쓴 글</a>
			 	<a class="menuT" href="userdelete.do" id="D">회원 탈퇴</a>
 			</div>
	 	</div>
	 <div class="col-md-9 mainContent">
	 <div class="col-md-9">
	 	<ul class="infomodify-head">
	 		<h4>비밀번호</h4>
	 		<input type="password" id="passcheck">
	 		<li class="infomodify-body"><button class="btn modifybtn">확인</button></li>
	 	</ul>
	</div>
	</div>
	</div>
</div>