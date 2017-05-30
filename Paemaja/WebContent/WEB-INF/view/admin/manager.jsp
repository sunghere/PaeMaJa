<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-21
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<style>
	table, td,  th{
		border:1px solid;
		background-color:white;
	}
	table {
		width:100%;
		color:black;
	}
	
	.btn1 {
		background-color:white;
		border:none;
		width:100%;
		color: black;
	}
	
	a {
		color : black;
	}
	
	th {text-align:center;}
	.userdel{text-align:center;}
	
	.cth1 {min-width:70px;}.ctd1 {min-width:70px; text-align:center;}.cth2 {min-width:70px;}.ctd2 {min-width:70px; text-align:center;}
	
	.cth3{
		width:100%;
	}
	.rep-content {
		max-width:500px;
	}
	.txtcen{text-align:center;}

</style>
<script>

$(function(){
	var l;
	function userreload(){
		str="<table><tr><th class='leftside'>아이디</th><th>닉네임</th><th>등급변경</th><th>탈퇴여부</th></tr>"
			$.ajax({
				url:"userconfig.do",
				type:"post",
				async:false,
				success:function(data){
						$.each(data,function(index, v) {
							if(v.auth==1){v.auth="관리자"} else if(v.auth==3){v.auth="일반"} else if(v.auth==4){v.auth="우수"}  else if(v.auth==5){v.auth="특별"} else if(v.auth==9){v.auth="계정정지"}
							if(v.del==0){v.del="미탈퇴"} else{v.del="탈퇴"}
							str+="<tr><td class='userIds"+ v.id+" leftside'>"
								+"&nbsp;"+v.id+"</td><td class='nickname'>"
								+"&nbsp;"+v.nickname+"</td><td class='userAuth'><button class='btn btn1' onclick='aaa(\""+v.id+"\",\""+v.auth+"\",\""+v.nickname+"\","+v.seq+")'>"
								+v.auth+"</button></td><td class='userdel'>"
								+v.del+"</td></tr>"
						})
					str+="</table>"
					$("#tab-user").html(str);
				}
			})
	}
	$("#users").on("click", function(){
		userreload();
	})
	
	$("#shops").on("click", function(){
		str="<table><tr><th>식당명</th><th>댓글 수</th><th>평 점</th><th>링크</th></tr>"
		$.ajax({
			url:"shopconfig.do",
			type:"post",
			async:false,
			success:function(data){
					$.each(data,function(index, v) {
						str+="<tr><td>"+"&nbsp;"+v.name+"</td><td class='txtcen'>"+v.counts+"</td><td class='txtcen'>"+v.scores+"</td>"
						str+="<td class='txtcen'><a href='shopdetail.do?seq="+v.seq+"'>글보기</a></td></tr>"
					})
				str+="</table>"
				$("#tab-shop").html(str);
			}	
		})
	})
//  class='table-striped table-bordered table-hover'	
	$("#comments").on("click", function(){
		str="<table><tr><th class='cth1'>아이디</th><th class='cth2'>평 점</th><th class='cth3'>내 용</th></tr>"
		$.ajax({
			url:"commentconfig.do",
			type:"post",
			async:false,
			success:function(data){
				console.log(data)
					$.each(data,function(index, v) {
						str+="<tr><td class='ctd1'>"+v.id+"</td><td class='ctd2'>"+v.score+"</td><td class='rep-content txtcen'>"+v.content+"</td></tr>"
					})
				str+="</table>"
				$("#tab-comment").html(str);
			}	
		})
	})

	$("#infoSubmit").on("click", function(){
		$.ajax({
			url:"userinfomodify.do",
			type:"post",
			data:{"auth":$(".usergrade").val(), "seq":$(".userseq").val()},
			success:function(data){
			}
		})
		userreload();
	})	
})

function aaa(id, auth, nickname,seq){
	console.log(id+","+auth+","+nickname+","+seq);
	
	document.getElementById('tab-userInfo').style.display="block";
	document.getElementById('infoText').innerHTML="아이디 : "+id+"<br>"+
							"등급변경 : <select class='usergrade'><option>현재등급::"+auth+"</option><option value='1'>관리자</option><option value='3'>일반회원</option><option value='4'>우수회원</option><option value='5'>특별회원</option><option value='9'>이용정지</option></select><br> 닉네임 : "+nickname
							+"<input class='userseq' type='hidden' value='"+seq+"'>";
}
</script>
<style>
	#tab-userInfo{display:none;}
</style>
<div role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#main" aria-controls="main" role="tab" data-toggle="tab">Main</a></li>
    <li role="presentation"><a href="#user" aria-controls="user" role="tab" data-toggle="tab" id="users">user</a></li>
    <li role="presentation"><a href="#shop" aria-controls="shop" role="tab" data-toggle="tab" id="shops">shop</a></li>
    <li role="presentation"><a href="#comment" aria-controls="comment" role="tab" data-toggle="tab" id="comments">comments</a></li>
  </ul>

  <!-- Tab panes -->
  <br>
  <div class="row">
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="main">
    	<div id="tab-main">
    	메인부분에는 어떤 내용이
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="user">
    	<div class="col-md-6" id="tab-user">
    	User를 관리
    	</div>
    	<div class="col-md-6" id="tab-userInfo">
    	<div id="infoText"></div>
    	<div><button id="infoSubmit">등급변경</button></div>
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="shop">
    	<div class="col-md-7" id="tab-shop">
    	등록된 음식점을 관리
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="comment">
    	<div class="col-md-8" id="tab-comment">

    	사람들의 댓글을 관리
    	</div>
    </div>	
  </div>
</div>
</div>


