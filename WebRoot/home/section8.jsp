<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="fragment" content="!">
<title>双语翻译</title>
<link rel="stylesheet" href="../static/css/bootstrap.min.css">
<link rel="stylesheet" href="../static/section8/index.css">
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">

</head>
<body>
	<div id="root">
		<div data-reactroot="" class="首页">
			<div class="container" style="text-align: center;">
				<img class="logo_img" src="../static/section8/dict.png"
			width="100" height="100"
			style="margin-top:100px; margin-bottom: 20px;">
				<div class="row">
					<div class="search-type-description">
						<div class="text-center">
							<span><a class="active"
								href="">中文 → 英文</a><span
								class="bar"></span></span><span><a class=""
								href="">英文 → 中文</a></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="search-box">
						<form method="GET" action=""
							class="input-group input-group-lg">
							<input type="text" value="" class="form-control"
								placeholder="关键字"><span class="input-group-btn"><a
								class="btn submit-btn" type="submit"
								href="">翻译</a></span>
						</form>
						<div class="hot-keywords" style="text-align:left;">
							<label>最常搜索：</label><a
								href="">Hello</a><a
								href="">VR</a><a
								href="">Hello</a>
								<a
								href="">Hello</a>
								<a
								href="">Hello</a>
								<a
								href="">Hello</a>
								<a
								href="">Hello</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>