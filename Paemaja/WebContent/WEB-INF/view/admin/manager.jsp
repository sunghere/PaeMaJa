<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-21
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<script>

$(function(){
	
	function userreload(){
		str="<table><tr><td>아이디</td><td>닉네임</td><td>계정나중에</td><td>탈퇴여부</td></tr>"
			$.ajax({
				url:"userconfig.do",
				type:"post",
				async:false,
				success:function(data){
						$.each(data,function(index, v) {
							if(v.auth==1){v.auth="관리자"} else if(v.auth==3){v.auth="일반"} else if(v.auth==4){v.auth=="우수"}  else if(v.auth==5){v.auth=="특별"} else if(v.auth==9){v.auth=="계정정지"}
							if(v.del==0){v.del="나중에"} else{v.del="탈퇴"}
							str+="<tr><td class='userIds"+ v.id+"'>"
								+v.id+"</td><td class='nickname'>"
								+v.nickname+"</td><td class='userAuth'><button class='btn btn-primary' onclick='aaa(\""+v.id+"\",\""+v.auth+"\",\""+v.nickname+"\","+v.seq+")'>"
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
		str="<table><tr><td>식당 명</td><td>댓글 수</td><td>평점  </td><td>링크  </td></tr>"
		$.ajax({
			url:"shopconfig.do",
			type:"post",
			async:false,
			success:function(data){
					$.each(data,function(index, v) {
						str+="<tr><td>"+v.name+"</td><td>"+v.counts+"</td><td>"+v.scores+"</td>"
						str+="<td><a href='shopdetail.do?seq="+v.seq+"'>링크</a></td></tr>"
					})
				str+="</table>"
				$("#tab-shop").html(str);
			}	
		})
	})
	
	$("#comments").on("click", function(){
		str="<table><tr><td>아이디 </td><td>스코어 </td><td>내용  </td></tr>"
		$.ajax({
			url:"commentconfig.do",
			type:"post",
			async:false,
			success:function(data){
				console.log(data)
					$.each(data,function(index, v) {
						str+="<tr><td>"+v.idseq+"</td><td>"+v.score+"</td><td>"+v.content+"</td></tr>"
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
		userreload()
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
    <li role="presentation"><a href="#comment" aria-controls="comment" role="tab" data-toggle="tab" id="comments">Settings</a></li>
  </ul>

  <!-- Tab panes -->
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
    	<div><button id="infoSubmit">벤자민버튼의시간은거꾸로가냐?</button></div>
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="shop">
    	<div id="tab-shop">
    	등록된 음식점을 관리
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="comment">
    	<div id="tab-comment">
    	사람들의 댓글을 관리
    	</div>
    </div>
  </div>
</div>
</div>


