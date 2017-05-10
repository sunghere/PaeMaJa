<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sccss.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function() {
		var imgAlt;
		$("#chang").click(function() {
			$(".changryeol").css("display", "block")
		})

		$(".close").click(function() {
			$(".changryeol").css("display", "none")
			$(".img").css("opacity", "0.1")
			$("#skull_score").html("0점")
		})

		$(".img").click(function() {
			imgAlt = $(this).attr("alt")
			$("#skull_score").html(imgAlt + "점")
			$(".img").css("opacity", "0.1")
			for (var i = 1; i <= imgAlt; i++) {
				$("#img" + i).css("opacity", "1")
				console.log(i)
			}
		})

		$("#OK").click(function() {
			var skullScore = imgAlt;
			$("#OK").attr("value", imgAlt)
			console.log($("#OK").attr("value"))
		})
	})
</script>

<div class="daegari">
	<div class="main_daegari">
		<ul class="sc_ul">
			<li class="sc_li">
				<button id="chang">별</button>
			</li>
			<li class="sc_li">li_2</li>
		</ul>
	</div>
</div>
<div class="hair">
	<div class="hair_face">영정사진</div>
	<div class="hair_yeopguri">
		<div class="hair_yeopguri_daegari1">대가리1</div>
		<div class="hair_yeopguri_daegari2">대가리2</div>
		<div class="hair_yeopguri_daegari3">대가리3</div>
	</div>
</div>
<div class="mom">댓글</div>


<div id="chang_give" class="changryeol">
	<!-- Modal content -->
	<div class="chang_mom">
		<div id="point_average">
			<div id="point_average_head">머리 부분</div>
			<br> <span class="close">&times;</span> 평점 &nbsp;:
			<button class="btn">
				<img src="skull_black.png" class="img" id="img1" alt="1">
			</button>
			<button class="btn">
				<img src="skull_black.png" class="img" id="img2" alt="2">
			</button>
			<button class="btn">
				<img src="skull_black.png" class="img" id="img3" alt="3">
			</button>
			<button class="btn">
				<img src="skull_black.png" class="img" id="img4" alt="4">
			</button>
			<button class="btn">
				<img src="skull_black.png" class="img" id="img5" alt="5">
			</button>
			<span id="skull_score">0 점</span>
		</div>
		<br> 그림&nbsp;:&nbsp;&nbsp;<input type="text"
			id="point_average_title"> <br> <br> <span
			id="pyeong">핑까&nbsp;:</span>&nbsp;&nbsp;
		<textarea id="point_average_content" rows="10" cols="50"></textarea>
		<br>
		<button id="OK" name="OK" value="">확인</button>
		<button id="cancle" name="cancle">취소</button>
	</div>

</div>

