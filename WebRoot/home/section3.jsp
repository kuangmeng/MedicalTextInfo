<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="renderer" content="webkit">
<meta name="applicable-device" content="pc,mobile">
<meta property="qc:admins" content="164521307760163633">
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<title>健康问答</title>
<meta name="keywords" content="问答">
<link rel="stylesheet" type="text/css"
	href="../static/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../static/section3/icon.css">
<link href="../static/section3/common.css" rel="stylesheet"
	type="text/css">
<link href="../static/section3/link.css" rel="stylesheet"
	type="text/css">
<link href="../static/section3/style.css" rel="stylesheet"
	type="text/css">
<script src="../static/section3/requestAns.js" type="text/javascript"></script>
<link href="../static/section3/main.css" rel="stylesheet"
	type="text/css">

</head>
<body>
	<noscript unselectable="on" id="noscript">&lt;div
		class="aw-404 aw-404-wrap container"&gt; &lt;img
		src="//api.goproxy.cc/static/common/no-js.jpg"&gt;
		&lt;p&gt;你的浏览器禁用了JavaScript, 请开启后刷新浏览器获得更好的体验!&lt;/p&gt; &lt;/div&gt;
	</noscript>

	<h2 class="header">医疗健康问答</h2>

	<div class="aw-container-wrap">
		<div class="container">
			<div class="logo">
				<span
					style="text-align:left;color: #095095;font-size:30px;width:max-content;">按症状查科室</span>
				<form class="form-inline" role="form">
					<div class="input-group col-xs-12 col-md-8">
						<input name="sears" id="sears" type="text" placeholder="恶心干呕"
							autocomplete="off" onkeydown="return SubmitKeyClick(this,event)"
							class="form-control input-lg"> <span
							class="input-group-btn ss">
							<button id="psearch" onclick="searchOnClick(sears.value)"
								class="btn btn-primary btn-lg" type="button">搜索</button>
						</span>

					</div>
				</form>
			</div>
			<div id="hot_mov" style="text-align:center;margin-top:20px;">
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">头晕</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">关节疼痛</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">恶心,呕吐</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">出汗异常</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">口臭</a>
				</p>
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">心率失常</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">持续发烧</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">颈背疼痛</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">多尿,尿频</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">烦躁不安</a>
				</p>
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">烦渴多饮</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">面色苍白</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">四肢无力</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">频繁发笑</a> <a
						class="btn btn-primary" role="button"
						onclick="fillSearchText(0, sears, this.text)">排便障碍</a>
				</p>
				<p></p>
			</div>
		</div>

		<div class="container">
			<div class="logo">
				<span
					style="text-align:left;color: #095095;font-size:30px;width:max-content;">常见健康问答</span>
				<form class="form-inline" role="form">
					<div class="input-group col-xs-12 col-md-8">
						<input name="sears2" id="sears2" type="text" placeholder="糖尿病如何治疗"
							autocomplete="off" onkeydown="return SubmitKeyClick2(this,event)"
							class="form-control input-lg"> <span
							class="input-group-btn ss">
							<button id="psearch2" onclick="search2OnClick(sears2.value)"
								class="btn btn-primary btn-lg" type="button">搜索</button>
						</span>
					</div>
				</form>
			</div>

			<div id="hot_mov2" style="text-align:center;margin-top:20px;">
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">老年人得了高血压需要做什么检查</a>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">老年人高血压如何治疗</a>
				</p>
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">老年人如何预防高血压</a>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">糖尿病如何治疗</a>
				</p>
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">如何预防糖尿病</a>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">糖尿病有哪些并发症</a>
				</p>
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">糖尿病的临床表现</a>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">胃溃疡如何治疗</a>
				</p>
				<p>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">为什么会得胃溃疡</a>
					<a class="btn btn-primary" role="button"
						onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">胃溃疡如何预防</a>
				</p>
			</div>
		</div>

	</div>

	<h2 id="answerLabel" style="margin-top:480px" class="answerLabel">查询结果</h2>
	<div id="answer" style="margin:0 auto; width:80%; text-align:left;"></div>
	<br>

	<script type="text/javascript">
		function fillSearchText(kind, id, text) {
			if (id.value != "" && kind == 0) {
				id.value += "," + text;
			} else {
				id.value = text
			}
		}
	
		function searchOnClick(text) {
			document.getElementById('answer').innerHTML = "加载中...";
			var url = 'http://60.247.77.152:19003/api/getDepartment?q=' + text;
			httpRequest(url, text, showAns)
		}
		function search2OnClick(text) {
			document.getElementById('answer').innerHTML = "加载中...";
			var url = 'http://60.247.77.152:19003/api/getAnswer?q=' + text;
			httpRequest(url, text, showAns2)
		}
	
		function SubmitKeyClick(obj, evt) {
			evt = (evt) ? evt : ((window.event) ? window.event : "")
			keyCode = evt.keyCode ? evt.keyCode : (evt.which ? evt.which : evt.charCode);
			if (keyCode == 13) {
				document.getElementById("psearch").focus();
			}
		}
	
		function SubmitKeyClick2(obj, evt) {
			evt = (evt) ? evt : ((window.event) ? window.event : "")
			keyCode = evt.keyCode ? evt.keyCode : (evt.which ? evt.which : evt.charCode);
			if (keyCode == 13) {
				document.getElementById("psearch2").focus();
			}
		}
	</script>
</body>
</html>