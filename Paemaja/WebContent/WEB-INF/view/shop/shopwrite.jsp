<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script type="text/javascript"
	src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>



<!--
<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ckeditor.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/style.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/config.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/contents.css"/>
 -->
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
			
			init();
	});


</script>

<form>
	<input type="button" id="typetest" value="타입 확인" />

	<textarea id='ckedtest'>

</textarea>

</form>


