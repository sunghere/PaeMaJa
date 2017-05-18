<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script type="text/javascript"
	src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>



<script>
		
		$(function () {
			var init=function(){
				
				CKEDITOR.replace( 'ckedtest', {
					width:'100%',
		            height:'400px',
			        filebrowserUploadUrl: 'imageUpload.do',
			      })
			};
					
				
			
			$("#typetest").click(function(){
				showMsgs('작성하시겠습니까??<br><input type="button">');
				var shopContent=CKEDITOR.instances.ckedtest.getData();
				$("#ff").attr("value",shopContent);
				
				$("#ff").val(shopContent);
				
				console.log($("#ff").val());
			});
	
			
			$("#aaa").click(function(){
				/* var shopContent=CKEDITOR.instances.ckedtest.getData();
				$("#ff").attr("value",shopContent) */
				/* $.ajax({
					url:"shopwriteaf.do",
					type:"post",
					async:false,
					data:{"addr": $('input[name="addr"]').val(), 
						  "tel":$("#tel").val(), 
						  "category":$("#category").val(),
						  "menu":$("#menu").val(),
						  "content":$("#ff").val(),
						  "name":$("#name").val(),
						  "search":$("#search").val()},
					success:function(data){
						alert(data)
					}
				}) */
			}) 
			init();
	});


</script>
	<button type="button" id="typetest" value="타입 확인" class="btn"/>
<form action="shopwriteaf.do" method="post">
	<button id="aaa">저장</button>
	상호명 <input type="text" id="name" name="name"> <br>
	주소 <input type="text" id="addr" name="addr"> <br>
	전화번호 <input type="text" id="tel" name="tel"> <br>
	카테고리 <input type="text" id="category" name="category"> <br>
	메뉴 <input type="text" id="menu" name="menu"> <br>
		<input type="hidden" id="ff" name="ff" value="">
	

	<textarea id='ckedtest'>

	</textarea>
	
</form>