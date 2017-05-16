<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
<script>

	window.onload=function(){
		
		CKEDITOR.replace( 'ckedtest', {
	        filebrowserUploadUrl: '/upload',
	      }); 
	}
	
	
	
	

</script>

<form>
가게이름<input type="text">
주소<input type="text">
카테고리<input type="text">
메뉴<input type="text">
<input tyep="file" >

<textarea id='ckedtest'>



</textarea>

</form>


