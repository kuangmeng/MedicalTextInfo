<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="origin" name="referrer">
<title>健康问答</title>
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">
<link rel="stylesheet" type="text/css"
	href="../static/section3_2/index.css">
</head>
<body class="hp vasq" id="gsr" data-gr-c-s-loaded="true">
	<div class="ctr-p" id="viewport">
		<a href="section3.jsp">
		<!-- 图标 -->
		<img class="logo_img" src="../static/section3_2/ask_answer.png"
			width="100" height="100"></a>
		<div class="jhp big" id="searchform">
			<form class="tsf" action="" style="overflow:visible" id="tsf">
				<div class="tsf-p">
					<div class="sbibod " id="sfdiv">
						<div class="sbib_b" id="sb_ifc0" dir="ltr">
							<div id="gs_lc0" style="position: relative;">
							<!-- 搜索框 -->
								<input class="gsfi" id="search" maxlength="2048"
									autocomplete="off" type="text" placeholder="请输入症状或问题"
									style="border: none; padding: 0px; margin: 0px; height: auto; width: 100%; background: url(&quot;data:image/gif;base64,R0lGODlhAQABAID/AMDAwAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw%3D%3D&quot;) transparent; position: absolute; z-index: 6; left: 0px; outline: none;">
							</div>
						</div>
					</div>

					<div class="jsb" style="padding-top:18px">
						<center>
						<!-- 按钮 -->
							<input 
								onclick="jumpOnClick(1)" value=" 症状科室 "
								type="submit"> 
								
								<input value=" 健康问题 "
								onclick="jumpOnClick(2)"
								type="submit">
						</center>
					</div>
				</div>
			</form>
		</div>

		<script type="text/javascript">
			function jumpOnClick(flag) {
					url = "section3_2.jsp?text=" + encodeURIComponent(document.getElementById('search').value) + "&flag=" + flag;
					if(document.getElementById('search').value.match("\\s+") || document.getElementById('search').value == null || document.getElementById('search').value == ""){
						alert("请输入症状或问题后点击相应查询按钮！");
						return;
					}
					//网页跳转
					location.href = url;
					
					window.event.returnValue=false;
			}
		</script>
</body>
</html>
