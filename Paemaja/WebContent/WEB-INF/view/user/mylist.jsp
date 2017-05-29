<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	#menu-head{font-size:25px; text-align:center; color:black; margin-bottom:10px;}
	.menuT{color:red;display:block;padding:5px 5px;} .menuT:hover{background:#f7f7ff;color:black;}
	#ㅎㅎ{margin-top:7px;border:1px solid black;}
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
	 <div class="col-md-9">
	 	<table>
	 		<tr><td>카테고리</td><td>제목</td><td>구분</td><td>ㅇㅇ</td>
	 		</tr>
	 		<c:forEach items="${mylist}" var="list" varStatus="vs">
	 		<tr>
	 			<td>${list.category}</td><td>${list.name}</td><td>${list.forbs}</td><td><button>d</button></td>
	 		</tr>
	 		</c:forEach>
	 	</table>
	</div>
	</div>
	</div>
</div>