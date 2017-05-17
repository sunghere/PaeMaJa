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
				alert(CKEDITOR.instances.ckedtest.getData());
			});
			
	/* 		$("#aa").click(function(){
				var shopContent=CKEDITOR.instances.ckedtest.getData();
				var temp=shopContent.split('<img')
				$(".ckedtest").append(shopContent)
				console.log($(".ckedtest:contains('ㅁㄴㅇ')").css("background-color", "red"))
				
 				$(".ff").append(shopContent)
				$(".ff:contains('asd')").css("background-color", "red")
				console.log($("#ff").val())
				console.log($("#ff:contains('asd')"))

				var imgTag="";
				var shopContent=CKEDITOR.instances.ckedtest.getData();
				var temp=shopContent.split('<img')
				
				for(var i=0; i<temp.length; i++)
				{
				} 
			}); */
			
			$("#aa").click(function(){
				var shopContent=CKEDITOR.instances.ckedtest.getData();
				$("#ff").attr("value",shopContent)
				$.ajax({
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
				})
			})
			
			init();
	});


</script>
	<input type="button" id="typetest" value="타입 확인" />
	<div class="btn btn-primary" id="aa">저장</div><br><br>
	<input type="text" id="name" name="name">
	<input type="text" id="search" name="search">
	<input type="text" id="addr" name="addr">
	<input type="text" id="tel" name="tel">
	<input type="text" id="category" name="category">
	<input type="text" id="menu" name="menu">
	<input type="hidden" id="ff" name="ff" value="">

	<textarea id='ckedtest'>

</textarea>


