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
.wbtn {
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

.wbtn:hover {
	background-color: #e7e7e7;
	border: 1px solid #e6fdff;
}

.dislike {
	cursor: pointer;
	opacity: 0.2;
}

.like {
	cursor: pointer;
	opacity: 0.2;
}

#toast {
	min-width: 250px;
	visibility: hidden;
	margin-left: -125px;
	left: 43%;
	height: 58px;
	bottom: 30px;
	padding: 15px;
	background-color: #333;
	color: #fff;
	top: 555px;
	position: fixed;
	text-align: center;
	border-radius: 2px;
	z-index: 9999;
	font-size: 17px;
}

#toast.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, fadeout 0.5s 1.0s;
	animation: fadein 0.5s, fadeout 0.5s 1.0s;
}

}
@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
/* #point_average {
	margin-bottom: 10px;
} */
.skullbtn {
	display: inline;
	cursor: pointer;
}

.yesmother {
	border-radius: 10%;
}

.repYeopAll {
	border-bottom: 1px solid #e0e0e0;
	padding-top: 2.85%;
}

.writing-info {
	background:#f4f4f4;
	min-height: 25%
}

.buttonHouse {
	margin: 0 auto;
}

.affix {
	top: 90px;
}

.sidereply {
	background: #f4f4f4;
	margin: 0 auto;
	overflow-y: scroll;
	height: 90%;
}

.repYeop-pict {
	height: 120px;
}

.repHead-body {
	max-width: 100%;
}

#ckedtest {
	width: 100%;
}

.modal-dialog {
	background-color: #fff;
}

.modal_content {
	padding: 10px 2%;
	min-height: 400px;
}

#OK {
	position: absolute;
	bottom: 5px;
	right: 5px;
}
</style>

<div id="toast">'나의 맛집' 메뉴에서 방금 체크한 맛집을 확인하세요.</div>
<div class="container">
	<div class="row">
		<div class="col-md-5 writing-info">
			<img src="<%=request.getContextPath()%>/${shopdetail.imgFile}"
				class="img-rounded" id="detail_img">
			<div class="">
				<div class="writing-info1"><h3>${shopdetail.name}</h3></div>
				<div class="writing-info2">${shopdetail.category}</div>
				<div class="writing-info3">${shopdetail.menu}</div>
							
				<div class="writing-info4">${shopdetail.content}</div>

				<input type="hidden" id="pseq" name="pseq" value="${shopdetail.seq}">
				<!-- 블랙리스트,즐겨찾기부분 -->

				<input type="hidden" id="idseq" name="idseq" value="${login.seq}">
				<input type="hidden" id="auth" name="auth" value="${login.auth}">

			</div>
			<c:if test="${!empty login.id or login.id eq ''}">
				<div class="buttonHouse">
					<button id="chang" data-target='#chang_give' data-toggle="modal"
						class="btn btn-primary">댓글쓰기</button>
					<button class="btn btn-primary">주문하기</button>

					<img class='pull-right like'  src="like2.png" alt="0" >
					<img class='pull-right dislike' src="dislike.png" alt="0">
				</div>
			</c:if>

			<c:if test="${empty login.id and login.id ne ''}">
				<div>댓글 작성 및 평가는 로그인 후에 가능합니다.</div>
				<br>
			</c:if>
			<c:if test="${!empty shopdetail.xpos or shopdetail.xpos ne ''}">
			
				<div class="writing-info5"><h4>${shopdetail.addr}</h4></div>
				<div id="mymap" style='width: 300px; height: 280px;'></div>
			</c:if>
		</div>

		<div class="col-md-7 sidereply"></div>
	</div>
</div>



<div id="chang_give" class="modal fade" tabindex="-1" role="dialog"
	aria-hidden="true">
	<!-- Modal content -->
	<div class="modal-dialog modal-md">
		<div class="modal_content">
			<span class="close" data-dismiss="modal">&times;</span>
			<h5>댓글쓰기</h5>
			<br> 평점 &nbsp;:
			<div class="skullbtn">
				<img src="<%=request.getContextPath()%>/images/dislike.png"
					class="img" id="img1" alt="1">
			</div>
			<div class="skullbtn">
				<img src="<%=request.getContextPath()%>/images/dislike.png"
					class="img" id="img2" alt="2">
			</div>
			<div class="skullbtn">
				<img src="<%=request.getContextPath()%>/images/dislike.png"
					class="img" id="img3" alt="3">
			</div>
			<div class="skullbtn">
				<img src="<%=request.getContextPath()%>/images/dislike.png"
					class="img" id="img4" alt="4">
			</div>
			<div class="skullbtn">
				<img src="<%=request.getContextPath()%>/images/dislike.png"
					class="img" id="img5" alt="5">
			</div>
			<span id="skull_score">0 점</span> <br>


			<textarea id="ckedtest"></textarea>
			<br>
			<form action="comment.do" method="post">

				<input type="hidden" id="score" name="score" value=""><br>
				<input type="hidden" id="content" name="content" value="">
				<button type="button" id="OK" class="btn btn-primary">확인</button>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript"
        src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1i78w7iQT3tYF8nVdzAU&submodules=panorama,geocoder"></script>
<script>
	$(function() {
		var len;
		if ("${login.id}" != null && "${login.id}" != "") {
			getForb();
		}
		repReload();

		$(".dislike").click(
				function() {
					if ($(".dislike").attr("alt") == 0
							&& $(".like").attr("alt") == 0) {
						$(".dislike").css("opacity", "1");
						$(".dislike").attr("alt", "2");
						addForb(2);
						$("#toast").attr("class", "show")
						setTimeout(function() {
							$("#toast").removeClass("show");
						}, 1500);
					} else if ($(".dislike").attr("alt") == 2
							&& $(".like").attr("alt") == 0) {
						$(".dislike").css("opacity", "0.2");
						$(".dislike").attr("alt", "0");
						deleteForb();
					} else if ($(".dislike").attr("alt") == 0
							&& $(".like").attr("alt") == 1) {
						$(".dislike").css("opacity", "1");
						$(".dislike").attr("alt", "2");
						$(".like").css("opacity", "0.2");
						$(".like").attr("alt", "0");
						modifyForb(2);
						$("#toast").attr("class", "show")
						setTimeout(function() {
							$("#toast").removeClass("show");
						}, 1500);
					}
				})

		$(".like").click(
				function() {
					if ($(".like").attr("alt") == 0
							&& $(".dislike").attr("alt") == 0) {
						$(".like").css("opacity", "1");
						$(".like").attr("alt", "1");
						addForb(1);
						$("#toast").attr("class", "show")
						setTimeout(function() {
							$("#toast").removeClass("show");
						}, 1500);
					} else if ($(".like").attr("alt") == 1
							&& $(".dislike").attr("alt") == 0) {
						$(".like").css("opacity", "0.2");
						$(".like").attr("alt", "0");
						deleteForb();
					} else if ($(".like").attr("alt") == 0
							&& $(".dislike").attr("alt") == 2) {
						$(".like").css("opacity", "1");
						$(".like").attr("alt", "1");
						$(".dislike").css("opacity", "0.2");
						$(".dislike").attr("alt", "0");
						modifyForb(1);
						$("#toast").attr("class", "show")
						setTimeout(function() {
							$("#toast").removeClass("show");
						}, 1500);
					}
				})

		/* 즐겨찾기&블랙리스트 목록을 불러옴 */
		function getForb() {

			$.ajax({
				url : "getforb.do",
				type : "post",
				data : {
					"pseq" : $('#pseq').val(),
					"id" : $("#idseq").val()
				},
				success : function(data) {
					gfb = data.forbs;

					if (gfb == null || gfb == '') {

					} else if (gfb == 1 || gfb == '1') {
						$(".like").css("opacity", "1");
						$(".like").attr("alt", "1");
						$(".dislike").css("opacity", "0.2");
						$(".dislike").attr("alt", "0");
					} else if (gfb == 2 || gfb == '2') {
						$(".dislike").css("opacity", "1");
						$(".dislike").attr("alt", "2");
						$(".like").css("opacity", "0.2");
						$(".like").attr("alt", "0");
					}
				}
			})
		}

		function addForb(i) {
			$.ajax({
				url : "addforb.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val(),
					"idseq" : $('#idseq').val(),
					"forbs" : i,
				},
				success : function() {

				}
			})
		}

		function deleteForb() {
			$.ajax({
				url : "deleteforb.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val(),
					"idseq" : $('#idseq').val()
				},
				success : function() {

				}
			})
		}

		function modifyForb(i) {
			$.ajax({
				url : "modifyforb.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val(),
					"idseq" : $('#idseq').val(),
					"forbs" : i
				},
				success : function() {

				}
			})
		}

		if ($("#auth").val() == 1) {
			$(".rep-id").css("cursor", "pointer")
			$(".rep-id")
					.click(
							function() {
								showMsgs("정지 ㄱㄱ??<br><button class='btn btn-primary' id='black-add'>확인</button>&nbsp;&nbsp;"
										+ "<button class='btn btn-primary' id='black-cancel'>취소</button>")
							})
		}

		function repReload() {
			var str = "";
			$.ajax({
				url : "detailrepl.do",
				type : "post",
				async : true,
				data : {
					"pseq" : $('#pseq').val()
				},
				success : function(data) {
					$.each(data,function(index, value) {
						console.log(value.img)
						str += '<div class="col-md-12 repYeopAll"> <div class="col-md-3"> <div class="repYeop-pict">'

						if (value.img != ""
								&& value.img != null) {
							str += ' <img class="yesmother" src="'+value.img+'">'
						}
						
						else if(value.img == ""
							|| value.img == null){
							str += ' <img class="yesmother" src="images/noimage.jpg">'
						}

						str += '</div> </div> <div class="col-md-6"> <div class="repHead-body">'
								+ value.content
								+ '</div> </div> <div class="col-md-3"> <div class="rep-profile"> <p class="rep-id">아이디 :'
								+ value.id
								+ '</p> </div>';
						str += '<div class="rep-profileSkull"> <p>해골 :'
								+ value.score
								+ '</p> </div> <div class="rep-profileDate"> <p>날짜 :'
								+ value.wdate
								+ '</p> </div> </div> </div> </div>';
					})
					$(".sidereply").html(str)
					$(".yesmother").css("width", "115px")
					$(".yesmother").css("height", "115px")
				}
					})
		}

		var imgAlt;

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
			if (skullScore == 0 || skullScore == null || skullScore == '') {
				showMsg("평가점수를 선택하세요");
				return;
			}

			$("#score").attr("value", skullScore)
			$("#content").attr("value", repContent)
			$.ajax({
				url : "commentadd.do",
				type : "post",
				async : false,
				data : {
					"pseq" : $('#pseq').val(),
					"idseq" : $("#idseq").val(),
					"score" : $("#score").attr("value"),
					"img" : "noimage",
					"content" : $("#content").attr("value")
				},
				success : function(data) {
					if (data == "fail") {
						alert("에러")
					} else if (data == "idfail") {
						alert("로그인 ㄱㄱ")
					} else if (data == "true") {
						$('.close').click();
						CKEDITOR.instances.ckedtest.setData('<p></p>');

						repReload();
					}
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

		/* 지도 */
		var map;
		var marker;
		var infoWindow;
		var maplist = new Array();
		var maptaglist = new Array();
		var mylat = "${shopdetail.xpos}";
		var mylng = "${shopdetail.ypos}";
		var htmlAddresses = [];

		var mapOptions = {
			center : new naver.maps.LatLng(mylat, mylng),
			zoom : 10,
			scaleControl : false,
			logoControl : false,
			mapDataControl : false,
			mapTypeControl : true,
			zoomControl : true,
			minZoom : 1
		};

		mapinit = function(mapId) {
			mapOptions = {
				center : new naver.maps.LatLng(mylat, mylng),
				zoom : 8,
				scaleControl : false,
				logoControl : false,
				mapDataControl : false,
				mapTypeControl : true,
				zoomControl : true,
				minZoom : 1
			};
			map = new naver.maps.Map(mapId, mapOptions);

			maplist.push(map);

			marker = new naver.maps.Marker({
				position : new naver.maps.LatLng(mylat, mylng),
				map : map
			});

			var mylatlng = new naver.maps.LatLng(mylat, mylng);

		/* 	infowindow.open(map, marker); */

		}
		if(mylat != 0.0){
			mapinit('mymap');
		}
});
</script>