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
	$("#users").on("click", function(){
		str="<table><tr><td>아이디</td><td>닉네임</td><td>계정나중에</td><td>탈퇴여부</td></tr>"
		$.ajax({
			url:"userconfig.do",
			type:"post",
			async:false,
			success:function(data){
				console.log(data)
					$.each(data,function(index, v) {
						if(v.auth==1){v.auth="관리자"} else if(v.auth==3){v.auth="일반"} else if(v.auth==5){v.auth=="계정정지"}
						if(v.del==0){v.del="나중에"} else{v.del="탈퇴"}
						str+="<tr><td>"+v.id+"</td><td>"+v.nickname+"</td><td><button class='btn'>"+v.auth+"</button></td><td>"+v.del+"</td></tr>"
					})
				str+="</table>"
				$("#tab-user").html(str);
			}	
		})
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
})
</script>

<div role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#main" aria-controls="main" role="tab" data-toggle="tab">Main</a></li>
    <li role="presentation"><a href="#user" aria-controls="user" role="tab" data-toggle="tab" id="users">user</a></li>
    <li role="presentation"><a href="#shop" aria-controls="shop" role="tab" data-toggle="tab" id="shops">shop</a></li>
    <li role="presentation"><a href="#comment" aria-controls="comment" role="tab" data-toggle="tab" id="comments">Settings</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="main">
    	<div id="tab-main">
    	메인부분에는 어떤 내용이
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="user">
    	<div id="tab-user">
    	User를 관리
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