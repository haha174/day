<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<body>		
 <form  action="/upload/oos.do" method="post" id="ImageForm" enctype="multipart/form-data" >
<input id='upinput' type='file' name='file'>
<input type='submit' value="上传">

</form>
	</body>
</html>