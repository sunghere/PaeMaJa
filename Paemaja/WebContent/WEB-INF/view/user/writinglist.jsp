<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	#menu-head{font-size:25px; text-align:center; color:black; margin-bottom:10px;}
	.menuT{color:black;display:block;padding:5px 5px; background:#fcfcff;} .menuT:hover{background:white;color:black;text-decoration:none;}
	#ㅎㅎ{margin-top:7px;border:1px solid black;}
	table, td,  th{/* border:1px solid; */background-color:white;}
	th{border-top:1px solid;}
	table {width:100%;color:black; padding:8px; vertical-align:top;}
	.btn1 {background-color:white;border:none;width:100%;color: black;}
	a {color : black;}
	td{max-width:100%; padding-top:9px; vertical-align:top; border-bottom:1px solid #d6d4d4;}  tr:hover { background: #FCF; }
	th {text-align:center; background:#f4f4ff; border-top:1px solid #d6d4d4; padding:8px; vertical-align:top;}
	.userdel{text-align:center;} 	#foot{height:250px;} 
	
	
	
	
</style>
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
	<div class="col-md-9 mainContent">
	<h3>내가 쓴 글</h3><br><br>
	<table>
	<tr><th width="15%">상호명</th><th width="75%">내용</th><th width="10%">평점</th></tr>
		<c:forEach items="${mycomment}" var="list" varStatus="vs">
			<tr><td>${list.name}</td><td>${list.content}</td><td>${list.score}</td></tr>
		</c:forEach>
	</table>
	</div>
	</div>
</div>
<div id="foot"></div>