<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>文献翻译</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">

<script src="../static/js/jquery.min.js" type="text/javascript"></script>
<script src="../static/section9/popper.min.js" type="text/javascript"></script>
<script src="../static/section9/tooltip.min.js" type="text/javascript"></script>
<script src="../static/js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="../static/css/bootstrap.css">
</head>
<body style="background-color:#ededed;">
	<br>
	<div style="text-align: center;">
		<img class="logo_img" src="../static/section9/file_trans.png"
			width="100" height="100"
			style="margin-top:100px; margin-bottom: 20px;">
		<div class="input-group mb-3" style="width:60%;margin:0 20%;">
			<input type="text" class="form-control" id="inputfile"
				placeholder="文件地址">
			<div class="input-group-append">
				<button class="btn btn-danger" id="addrule" type="submit">选择文件</button>
			</div>
		</div>
		<br>
		<div class="btn-group">
			<button type="button" id="upload" class="btn btn-primary">&nbsp;&nbsp;&nbsp;上传文件&nbsp;&nbsp;&nbsp;</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" id="download" class="btn btn-warning">&nbsp;&nbsp;&nbsp;下载结果&nbsp;&nbsp;&nbsp;</button>
		</div>
		<br>
		<h4 id="result" style="line-height:20px;"></h4>
	</div>







</body>
</html>
