<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>临床指南</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="icon" id="myid" href="../static/img/avatar.png">
<script src="../static/js/bootstrap.min.js" type="text/javascript"></script>
<link href="../static/css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../static/js/jquery.min.js"></script>
<script src="../static/js/jquery.smint.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="../static/css/normalize.css" />
<link rel="stylesheet" href="../static/css/hover.css" media="screen"
	type="text/css" />

<link rel="stylesheet" type="text/css" href="../static/css/header.css">
<link href="../static/css/s3.css" rel="stylesheet" type="text/css">
<script src="../static/section9/popper.min.js" type="text/javascript"></script>
<script src="../static/section9/tooltip.min.js" type="text/javascript"></script>
<script src="../static/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.subMenu').smint({
			'scrollSpeed' : 500
		});
	});
</script>
<style type="text/css">
.s1 {
	background: #ededed;
	color: #fff;
}

.s2 {
	background: #c0c0c0;
}

.s3 {
	background: #fff;
}

.s4 {
	height: 100%;
	margin: 0 auto;
	background: #ededed;
	width: 100%;
	min-width: 960px;
	z-index: 10;
	position: relative;
}

div.search {
	padding: 30px 0;
}

form {
	position: relative;
	width: 600px;
	margin: 50 auto;
}

input, button {
	border: none;
	outline: none;
}

input {
	width: 80%;
	height: 50px;
	padding-left: 17px;
}

button {
	height: 50px;
	cursor: pointer;
	position: absolute;
}

/*搜索框6*/
.bar6 input {
	border: 2px solid #c0c0c0;
	background: transparent;
	top: 0;
	right: 0;
	font-size: 18px;
}

.bar6 button {
	background: #1296db;
	width: 80px;
	top: 0;
	right: 0;
}

.bar6 button:before {
	content: "指南搜索";
	font-size: 18px;
	color: #fff;
}

input, img {
	vertical-align: middle;
}
</style>
</head>

<body>

	<div class="wrap">
		<div>
			<jsp:include page="section5/header.jsp"></jsp:include>
		</div>

		<div class="subMenu">
			<div class="inner">
				<a href="#s1" class="subNavBtn"> <span>主题浏览</span>
				</a> <a href="#s2" class="subNavBtn"> <span>最新专题</span>
				</a> <a href="#s3" class="subNavBtn"> <span>科室浏览</span>
				</a> <a href="#s4" class="subNavBtn"> <span>上传指南</span>
				</a>
			</div>
		</div>

		<jsp:include page="section5/menu1.jsp"></jsp:include>
		<jsp:include page="section5/menu2.jsp"></jsp:include>
		<jsp:include page="section5/menu3.jsp"></jsp:include>
		<jsp:include page="section5/menu4.jsp"></jsp:include>
		<a href="http://mitlab.hit.edu.cn" class="subNavBtn extLink end"
			style="display:none;">MITLab</a>
	</div>

	<script src="../static/js/hover.js" type="text/javascript"></script>

</body>

</html>
