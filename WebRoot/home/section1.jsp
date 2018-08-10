<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>关系抽取</title>
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
		<img class="logo_img" src="../static/section1/relation.png"
			width="100" height="100"
			style="margin-top:100px; margin-bottom: 20px;">
		<div class="form-group" style="width: 50%; margin: 0 auto;">
			<textarea class="form-control" rows="6" id="sentence"></textarea>
		</div>

		<br>
		<button type="button" id="temp" class="btn btn-info" style="margin-right: 20px;">加载实例</button>
		&nbsp;
		
		<button type="button" id="relation" class="btn btn-success" style="margin: 0 20px;">关系抽取</button>
		&nbsp;
		<button type="button" id="clear" class="btn btn-primary" style="margin-left: 20px;">清空所有</button>
		<br><br>
		<hr>
		<h4 id="result" style="line-height:20px;"></h4>
	</div>






  </body>
</html>
