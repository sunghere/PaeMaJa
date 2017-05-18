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

	$(".skullbtn").click(function() {
		imgAlt = $(this).children().first().attr("alt")
		$("#skull_score").html(imgAlt + "점")
		$(".img").css("opacity", "0.1")		
		for (var i = 1; i <= imgAlt; i++) {
			$("#img" + i).css("opacity", "1")
		}
	})

	$("#OK").click(function() {
		var skullScore = imgAlt;
		$("#OK").attr("value", imgAlt)
		$("#skullScore").attr("value", skullScore)
	})
	
	$(".yesmother").css("width", "115px");
	$(".yesmother").css("height", "115px");
})
</script>

<style>
.yesmother{
	width:100%;
	border-radius:10%;
}
.repYeop-day{border-bottom:1px solid gray;}
.wdate{
	color:gray;
	font-size:11px;
}
.repYeopAll{border-bottom:1px solid gray; padding-bottom:5px; margin-bottom:10px;}
.foradun{
	height:100%;
}
</style>

<div class="container">
<div class="row">
<div class="col-md-5 foradun">
	<div class=""><img src="KakaoTalk_20170510_165445431.png<%-- <%=request.getContextPath()%>/images/c1.jpg --%>" class="img-rounded" id="detail_img"></div>
	<div class="">
		<div class="hair_yeopguri_daegari1">${shopdetail.name}</div>
		<div class="hair_yeopguri_daegari2">${shopdetail.category}</div>
		<div class="hair_yeopguri_daegari3">${shopdetail.menu}</div>
	</div>
	<button id="chang" class="btn">별</button>
</div>

<!--댓글 div-->
<div class="col-md-7 repYeopAll">
<div class="col-md-3">
	<div class="repYeop-pict">
		<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
	</div>
</div>
<div class="col-md-6">
	<div class="repHead">
		<div class="repHead-mom">
			아이디  별
		</div>
	</div>
	<div class="repHead-body">
		가나다라마바사아자카타파하abcdefghijklmnopqrstuvwxyz
	</div>
</div>
</div>
<div class="col-md-7 repYeopAll">
<div class="col-md-3">
	<div class="repYeop-pict">
		<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
	</div>
</div>
<div class="col-md-6">
	<div class="repHead">
		<div class="repHead-mom">
			아이디  별
		</div>
	</div>
	<div class="repHead-body">
		가나다라마바사아자카타파하abcdefghijklmnopqrstuvwxyz
	</div>
</div>
</div>
<div class="col-md-7 repYeopAll">
<div class="col-md-3">
	<div class="repYeop-pict">
		<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
	</div>
</div>
<div class="col-md-6">
	<div class="repHead">
		<div class="repHead-mom">
			아이디  별
		</div>
	</div>
	<div class="repHead-body">
		가나다라마바사아자카타파하abcdefghijklmnopqrstuvwxyz
	</div>
</div>
</div>
<div class="col-md-7 repYeopAll">
<div class="col-md-3">
	<div class="repYeop-pict">
		<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
	</div>
</div>
<div class="col-md-6">
	<div class="repHead">
		<div class="repHead-mom">
			아이디  별
		</div>
	</div>
	<div class="repHead-body">
		가나다라마바사아자카타파하abcdefghijklmnopqrstuvwxyz
	</div>
</div>
</div>
</div>
</div>












<!-- 	<div class="repHead">
		<div class="repHead-mom">
			아이디
		</div>
		<div class="repHead-skull">
			별
		</div>
	</div><br>
	<div class="repYeop-pict">
		<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
	</div>
	
	
	
	<div class="repHead">
		<div class="repHead-mom">
			아이디
		</div>
		<div class="repHead-skull">
			별
		</div>
	</div><br>
	<div class="repYeop-pict">
		<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
	</div>
</div>
<div class="col-md-9">
	<div class="repYeop-day"><p class="wdate">wdate</p></div>
	<div class="repYeop-cont">
		가나다라가 나다라가나다라가나다라가나다라가나다라가<br>
		가나다라가나다라가나다라가나다라가나다라가나다라가<br>
		가나다라가나다라가나다라가나다라가나다라가나다라가<br>
				가나다라가나다라가나다라가나다라가나다라가나다라가<br>
		
	</div>
	
	
	
	<div class="repYeop-day"><p class="wdate">wdate</p></div>
	<div class="repYeop-cont">
		가나다라<br>
		마바사아<br>
		자카타파<br>
		하ABC<br>
		DEFG<br>
		HIGK<br>
		LMNO
	</div> -->










<div id="chang_give" class="changryeol">
	<!-- Modal content -->
	<div class="chang_mom">
		<div id="point_average">
			<div id="point_average_head">머리 부분</div>
			<br> <span class="close">&times;</span> 평점 &nbsp;:
				<div class="btn skullbtn">
					<img src="skull_black.png" class="img" id="img1" alt="1">
				</div>
				<div class="btn skullbtn">
					<img src="skull_black.png" class="img" id="img2" alt="2">
				</div>
				<div class="btn skullbtn">
					<img src="skull_black.png" class="img" id="img3" alt="3">
				</div>
				<div class="btn skullbtn">
					<img src="skull_black.png" class="img" id="img4" alt="4">
				</div>
				<div class="btn skullbtn">
					<img src="skull_black.png" class="img" id="img5" alt="5">
				</div>
				<span id="skull_score">0 점</span>
		</div>
		<br> 그림&nbsp;:&nbsp;&nbsp; <input type="text" id="point_average_title" name="title"> <br> <br> 
		<span id="pyeong">핑까&nbsp;:</span>&nbsp;&nbsp; <textarea id="point_average_content" name="content" rows="10" cols="50"></textarea>
		<input type="hidden" id="skullScore" name="score" value="">
		<br>
		<button type="submit" class="btn btn-primary">확인</button>
	</div>
</div>