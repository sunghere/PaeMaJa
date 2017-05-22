<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-21
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>


<script>
$(function() {
	


		$.ajax({
					url : "detailrepl.do",
					type : "post",
					async : false,
					data : {
						"pseq" : $('#pseq').val()
					},
					success : function(data) {
				
					}
				})
	
	
	
	
	})

</script>

<div role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#main" aria-controls="main" role="tab" data-toggle="tab">Main</a></li>
    <li role="presentation"><a href="#user" aria-controls="user" role="tab" data-toggle="tab">user</a></li>
    <li role="presentation"><a href="#shop" aria-controls="shop" role="tab" data-toggle="tab">shop</a></li>
    <li role="presentation"><a href="#comment" aria-controls="comment" role="tab" data-toggle="tab">Settings</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="main">메인부분에는 어떤 내용이</div>
    <div role="tabpanel" class="tab-pane" id="user">User를 관리</div>
    <div role="tabpanel" class="tab-pane" id="messages">등록된 음식점을 관리</div>
    <div role="tabpanel" class="tab-pane" id="comment">사람들의 댓글을 관리</div>
  </div>

</div>