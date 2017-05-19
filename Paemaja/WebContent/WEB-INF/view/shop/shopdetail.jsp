<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sccss.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
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
		var repContent=CKEDITOR.instances.ckedtest.getData();
		var skullScore = imgAlt;
		$("#score").attr("value", skullScore)
		$("#content").attr("value",repContent)
		console.log($("#score").attr("value")+"   ,   "+$("#content").attr("value"))
		$("#OK").attr("type","submit")
	})
	
	$(".yesmother").css("width", "115px");
	$(".yesmother").css("height", "115px");
})
</script>

<style>
#point_average{margin-bottom:10px;}
.skullbtn{
	display:inline;
	cursor:pointer;
}
.yesmother{
	width:100%;
	border-radius:10%;
}
.repYeopAll{border-bottom:1px solid #e0e0e0; padding-bottom:5px; margin-bottom:10px;}
.writing-info {
	min-height:25%
}
.buttonHouse{
	margin:0 auto;
}
.affix{
	top:90px;
}
.sidereply{
margin:0 auto;
overflow: scroll;
height:70%;
}
</style>

<div class="container">
<div class="row">
<div class="col-md-5 writing-info">
	<img src="KakaoTalk_20170510_165445431.png<%-- <%=request.getContextPath()%>/images/c1.jpg --%>" class="img-rounded" id="detail_img">
	<div class="">
		<div class="writing-info1">${shopdetail.name}</div>
		<div class="writing-info2">${shopdetail.category}</div>
		<div class="writing-info3">${shopdetail.menu}</div>
		<div class="writing-info4">${shopdetail.content}</div>
		<div class="writing-info5">${shopdetail.addr}</div>
	</div>
	<div class="buttonHouse">
		<button id="chang" class="btn">별</button> 
		<button class="btn">주문하기</button>
	</div>
</div>

<!--댓글 div-->
	<div class="col-md-7 sidereply">
		<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
		
					<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
		
					<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
		
					<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
					<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>			<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
					<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>			<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
					<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>			<div class="col-md-12 repYeopAll">
			<div class="col-md-3">
				<div class="repYeop-pict">
					<img class="yesmother" src="KakaoTalk_20170510_165445431.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="repHead-body">
					가나다라마바사아자카타파하<br>abcdefghijklmnopqrstuvwxyz
				</div>
			</div>
			<div class="col-md-3">
				<div class="rep-profile">
					<div class="rep-profileId">
						<p>아이디 :</p>
					</div>
					<div class="rep-profileSkull">
						<p>해골 :</p>
					</div>
					<div class="rep-profileDate">
						<p>날짜 :</p>
					</div>
				</div>
			</div>
		</div>
			

		</div>
	</div>
</div>



































<div id="chang_give" class="changryeol">
	<!-- Modal content -->
	<div class="chang_mom">
	<div id="">머뤼 <span class="close">&times;</span></div>
	<div id="point_average">
		<br>  평점 &nbsp;:
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
	<script>
	$(function () {
		var init=function(){
			CKEDITOR.replace( 'ckedtest', {
				width:'100%',
	            height:'200px',
		        filebrowserUploadUrl: 'imageUpload.do',
		      });
		}
		
		init();
	});
	</script>
	<textarea id="ckedtest">
	
	</textarea>
	<form action="comment.do" method="post">
	<input type="hidden" id="score" name="score" value=""><br><input type="hidden" id="content" name="content" value="">
	<button type="button" id="OK" class="btn btn-primary">확인</button> 
	</form>
	</div>
</div>