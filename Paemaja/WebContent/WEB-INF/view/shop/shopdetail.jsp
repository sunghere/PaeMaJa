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
	width: 100%;
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
</style>

<div class="container">
	<div class="row">
		<div class="col-md-5 writing-info">
			<img
				src="KakaoTalk_20170510_165445431.png<%-- <%=request.getContextPath()%>/images/c1.jpg --%>"
				class="img-rounded" id="detail_img">
			<div class="">
				<div class="writing-info1">${shopdetail.name}</div>
				<div class="writing-info2">${shopdetail.category}</div>
				<div class="writing-info3">${shopdetail.menu}</div>
				<div class="writing-info4">${shopdetail.content}</div>
				<div class="writing-info5">${shopdetail.addr}</div>
				<input type="hidden" id="pseq" name="pseq" value="${shopdetail.seq}">
			</div>
			<div class="buttonHouse">
				<button id="chang" class="btn">별</button>
				<button class="btn">주문하기</button>
			</div>
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
		repReload();

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
														+ '</div> </div> <div class="col-md-3"> <div class="rep-profile"> <p>아이디 :'
														+ value.idseq
														+ '</p> </div>'
												str += '<div class="rep-profileSkull"> <p>해골 :'
														+ value.score
														+ '</p> </div> <div class="rep-profileDate"> <p>날짜 :'
														+ value.wdate
														+ '</p> </div> </div> </div> </div>'
											})
							$(".sidereply").html(str)
						}
					})
		}

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

		$("#OK").click(
				function() {
					var repContent = CKEDITOR.instances.ckedtest.getData();
					var skullScore = imgAlt;
					$("#score").attr("value", skullScore)
					$("#content").attr("value", repContent)
					console.log($("#score").attr("value") + "   ,   "
							+ $("#content").attr("value"))
					$("#OK").attr("type", "submit")
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