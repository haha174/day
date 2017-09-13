<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript" src="<%=basePath%>scripts/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>scripts/js/jquery.form.js"></script>
<script src="<%=basePath%>scripts/lhgdialog/lhgdialog/lhgdialog.js"type="text/javascript"></script>

<script type="text/javascript">

var api = frameElement.api, W = api.opener;
function up(){
$('#form').ajaxForm({
	url : '/user/uptouxiang.do',
	onSubmit : function() {
		var isValid = $('#list').val();
		if (isValid==null||isValid=="") {
			return false;
		}
		return true;
	},
	success : function(result) {
		console.info(result);
		data = eval("(" + result + ")");
			if (data && data.success) {
				window.parent.logoph(data.result);
				
			//	W.logoph(data.result);
			} else {
				$.dialog.alert(data.msg);// 操作失败
		
		} 
	}
});
$('#form').submit();
}
</script>
<%--   <div id="photo">
		<table border="1">
			<tr>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/01.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/01.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/02.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/02.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/03.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/03.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/04.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/04.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/05.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/05.gif"></a></td>
			</tr>
			<tr>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/06.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/06.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/07.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/07.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/08.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/08.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/09.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/09.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/10.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/10.gif"></a></td>
			</tr>
			<tr>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/11.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/11.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/12.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/12.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/13.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/13.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/14.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/14.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/15.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/15.gif"></a></td>
			</tr>
			<tr>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/16.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/16.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/17.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/17.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/18.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/18.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/19.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/19.gif"></a></td>
			<td><a href="javascript:void(0)" id="" name="<%=path%>/images/userhead/20.gif" onclick="selecttxs(this)"><img style="width:50px;height:50px" src="<%=path%>/images/userhead/20.gif"></a></td>
			</tr>
		</table>
		
	</div> --%>
	<div style="float:left">
		<table>
		<tr>
			<td>
			<form  id="form" enctype="multipart/form-data" >
			<input type="file" value="" id="list" name="list" size="30" />
			<input type="button" value="上传" onclick="up()">
			</form>
			</td>
		</tr>
		</table>
		</div> 

