<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
	#menu-head{font-size:25px; text-align:center; color:black; margin-bottom:10px;}
	.menuT{color:black;display:block;padding:5px 5px; background:#fcfcff;} .menuT:hover{background:white;color:black;text-decoration:none;}
	#ㅎㅎ{margin-top:7px;border:1px solid black;}
	table, td,  th{/* border:1px solid; */background-color:white;}
	th{border-top:1px solid;}
	table {width:100%;color:black; padding:8px; vertical-align:top;}
	.btn1 {background-color:white;border:none;width:100%;color: black;}
	a {color : black;} .detaillink:hover{color:gray;text-decoration:none;}
	td{max-width:100%; border-bottom:1px solid #d6d4d4;}  tr:hover { background: #FCF; }
	th {text-align:center; background:#f4f4ff; border-top:1px solid #d6d4d4; padding:8px; vertical-align:top;}
	.userdel{text-align:center;} .likeordislike{text-align:center;} 	#foot{height:250px;} 
	
		.wbtn{
	background-color: white;
    color: black;
    border: none;
    padding: 8px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
}

.wbtn:hover {background-color: #e7e7e7;}
	
	
	
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
	 <h3>나의 맛집</h3><br><br>
	 	<table class="">
	 		<tr><th class="tableth" width="18%">카테고리</th><th class="tableth" width="62%">제목</th><th class="tableth" width="10%">구분</th><th class="tableth" width="10%">ㅇㅇ</th>
	 		</tr>
	 		<c:forEach items="${mylist}" var="list" varStatus="vs">
	 		<tr class="mouseovers">
	 			<td>${list.category}</td><td><a class="detaillink" href="shopdetail.do?seq=${list.seq}">${list.name}</a></td><td class="likeordislike">
	 			<c:choose>
					<c:when test="${list.forbs eq '1'}">
	 					<img src="like2.png" height="20px" width="22px">
	 				</c:when>
	 				<c:when test="${list.forbs eq '2'}">
	 					<img src="dislike.png">
	 				</c:when>
	 				<c:otherwise>
	 					 
	 				</c:otherwise>
	 			</c:choose>
	
	 			</td><td><button class="wbtn">d</button></td>
	 		</tr>
	 		</c:forEach>
	 	</table>
	</div>
	</div>
</div>
<div id="foot"></div>