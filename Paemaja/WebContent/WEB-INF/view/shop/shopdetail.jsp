<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/sccss.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>


<style>
#point_average {
	margin-bottom: 10px;
}

.skullbtn {
	display: inline;
	cursor: pointer;
}

.yesmother {
	border-radius: 10%;
}

.repYeopAll {
	border-bottom: 1px solid #e0e0e0;
	padding-bottom: 5px;
	margin-bottom: 10px;
}

.writing-info {
	min-height: 25%
}

.buttonHouse {
	margin: 0 auto;
}

.affix {
	top: 90px;
}

.sidereply {
	margin: 0 auto;
	overflow: scroll;
	height: 70%;
}
.repYeop-pict{
	height:120px;
}

</style>

<div class="container">
	<div class="row">
		<div class="col-md-5 writing-info">
			<img
				src="<%=request.getContextPath()%>/${shopdetail.imgFile}"
				class="img-rounded" id="detail_img">
			<div class="">
				<div class="writing-info1">${shopdetail.name}</div>
				<div class="writing-info2">${shopdetail.category}</div>
				<div class="writing-info3">${shopdetail.menu}</div>
				<div class="writing-info4">${shopdetail.content}</div>
				<div class="writing-info5">${shopdetail.addr}</div>
				<input type="hidden" id="pseq" name="pseq" value="${shopdetail.seq}">
				<!-- 블랙리스트,즐겨찾기부분 -->

					<input type="hidden" id="idseq" name="idseq" value="${login.seq}">
					<input type="hidden" id="auth" name="auth" value="${login.auth}">

			</div>
			<c:if test="${!empty login.id or login.id eq ''}">
			<div class="buttonHouse">
				<button id="chang" class="btn">별</button>
				<button class="btn">주문하기</button>
			</div>
			</c:if>
			<c:if test="${empty login.id and login.id ne ''}">
			<div>
				댓글 작성 및 주문은 로그인 후에 가능합니다.
			</div>
			</c:if>
			
		</div>

		<!--댓글 div-->
		<div class="col-md-7 sidereply">
		
		</div>
	</div>
</div>



































<div id="chang_give" class="changryeol">
	<!-- Modal content -->
	<div class="chang_mom">
		<div id="">
			머뤼 <span class="close">&times;</span>
		</div>
		<div id="point_average">
			<br> 평점 &nbsp;:
			<div class="skullbtn">
				<img src="skull_black.png" class="img" id="img1" alt="1">
			</div>
			<div class="skullbtn">
				<img src="skull_black.png" class="img" id="img2" alt="2">
			</div>
			<div class="skullbtn">
				<img src="skull_black.png" class="img" id="img3" alt="3">
			</div>
			<div class="skullbtn">
				<img src="skull_black.png" class="img" id="img4" alt="4">
			</div>
			<div class="skullbtn">
				<img src="skull_black.png" class="img" id="img5" alt="5">
			</div>
			<span id="skull_score">0 점</span>
		</div>

		<textarea id="ckedtest">
	
	</textarea>
		<form action="comment.do" method="post">
			
			<input type="hidden" id="score" name="score" value=""><br>
			<input type="hidden" id="content" name="content" value="">
			<button type="button" id="OK" class="btn btn-primary">확인</button>
		</form>
	</div>
</div>
<script>
	$(function() {
		
		getForb();
		repReload();
		
		
		/* 즐겨찾기&블랙리스트 목록을 불러옴 */
		function getForb() {
			$.ajax({
				url : "getforb.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val()
				},
				success : function(data) {
					console.log(data.forbs);
				}
			})
		}
		
		function addForb() {
			$.ajax({
				url : "addforb.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val(),
					"idseq" : $('#idseq').val(),
					"forbs" : ""
				},
				success : function() {
					console.log("갓성찬뒤BAR")
				}
			})
		}
		
		function modifyForb() {
			$.ajax({
				url : "modifyforb.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val(),
					"idseq" : $('#idseq').val(),
					"forbs" : ""
				},
				success : function() {
					console.log("갓성찬뒤BAR")
				}
			})
		}
		
		if($("#auth").val()==1)
		{
			$(".rep-id").css("cursor","pointer")
			$(".rep-id").click(function(){
				showMsgs("정지 ㄱㄱ??<br><button class='btn btn-primary' id='black-add'>확인</button>&nbsp;&nbsp;"
				+"<button class='btn btn-primary' id='black-cancel'>취소</button>")
			})
		}
		
		function repReload() {
			var str = "";
			$.ajax({
						url : "detailrepl.do",
						type : "post",
						async : false,
						data : {
							"pseq" : $('#pseq').val()
						},
						success : function(data) {
							$.each(data,function(index, value) {
												str += '<div class="col-md-12 repYeopAll"> <div class="col-md-3"> <div class="repYeop-pict"> <img class="yesmother" src="'+value.img+'">'
												str += '</div> </div> <div class="col-md-6"> <div class="repHead-body">'
														+ value.content
														+ '</div> </div> <div class="col-md-3"> <div class="rep-profile"> <p class="rep-id">아이디 :'
														+ value.id
														+ '</p> </div>'
												str += '<div class="rep-profileSkull"> <p>해골 :'
														+ value.score
														+ '</p> </div> <div class="rep-profileDate"> <p>날짜 :'
														+ value.wdate
														+ '</p> </div> </div> </div> </div>'
											})
							$(".sidereply").html(str)
							$(".yesmother").css("width","115px")
							$(".yesmother").css("height","115px")
						}
					})
		}
		
		/* 
		 <div class="rep-profile"> <p>아이디 :'
				+ value.idseq
				+ '</p> </div>' */

		var imgAlt;
		$("#chang").click(function() {
			$(".changryeol").css("display", "block")
		})

		$(".close").click(function() {
			$(".changryeol").css("display", "none")
			$(".img").css("opacity", "0.1")
			$("#skull_score").html("0점")
		})

		$(".skullbtn").click(function() {
			imgAlt = $(this).children().first().attr("alt")
			$("#skull_score").html(imgAlt + "점")
			$(".img").css("opacity", "0.1")
			for (var i = 1; i <= imgAlt; i++) {
				$("#img" + i).css("opacity", "1")
			}
		})

		$("#OK").click(function() {
					var repContent = CKEDITOR.instances.ckedtest.getData();
					var skullScore = imgAlt;
					$("#score").attr("value", skullScore)
					$("#content").attr("value", repContent)
					$.ajax({
						url : "commentadd.do",
						type : "post",
						async : false,
						data : {"pseq" : $('#pseq').val(),"idseq":$("#idseq").val(),"score":$("#score").attr("value"),"img":"noimage","content":$("#content").attr("value")},
						success : function(data){
							alert(data);
							if(data=="fail"){alert("에러")}
							else if(data=="idfail"){alert("로그인 ㄱㄱ")}
							else if(data=="true"){$(".changryeol").css("display", "none"); repReload();}
						}
				})
		})

		$(".yesmother").css("width", "115px");
		$(".yesmother").css("height", "115px");

		var init = function() {
			CKEDITOR.replace('ckedtest', {
				width : '100%',
				height : '200px',
				filebrowserUploadUrl : 'imageUpload.do',
			});
		}

		init();
	});
</script>