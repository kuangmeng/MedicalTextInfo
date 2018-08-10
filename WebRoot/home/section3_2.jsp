<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="gr__baidu_com">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="always" name="referrer">
<title>健康问答结果</title>
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">
<link rel="stylesheet" type="text/css"
	href="../static/section3_3/index.css">
<script src="../static/section3/requestAns.js" type="text/javascript"></script>
<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../static/css/bootstrap.css">
</head>
<body class="has-background s-manhattan-index is-lite"
	data-gr-c-s-loaded="true" link="#0000cc"
	style="background-color:#ededed;" onload="GetUrlParam()">

<script type="text/javascript">
　　function GetUrlParam() {
　　　　var url = document.location.toString();
　　　　var arrObj = url.split("?");
		var text,flag;
　　　　if (arrObj.length > 1) {
　　　　　　var arrPara = arrObj[1].split("&");
　　　　　　var arr;
　　　　　　for (var i = 0; i < arrPara.length; i++) {
　　　　　　　　arr = arrPara[i].split("=");
　　　　　　　　if (arr != null && arr[0] == "text") {
　　　　　　　　　　text = decodeURIComponent(arr[1]);
				   flag = 0;
				   if(text == "" || text == null){
				   		return;
				   }
				    var psel = document.getElementById("kw");
                    psel.value = text; //设置
　　　　　　　　}else if(arr != null && arr[0] == "flag"){
				  flag = arr[1];
				  }
　　　　　　}
		if(flag == 1){
			searchOnClick(text);
		}else if(flag == 2){
			search2OnClick(text);
		}
　　　　}
　　}
</script>
	<div id="wrapper" class="wrapper_l" style="background-color:#ededed;">
		<div id="head" class="s-skin-hasbg white-logo s-opacity-25"
			style="background-color:#ededed;">

			<div id="head_wrapper"
				class="s-isindex-wrap head_wrapper s-title-img  s-ps-islite">
				<div id="s_fm" class="s_form">
					<div class="s_form_wrapper soutu-env-mac" id="s_form_wrapper">
						
						<!-- 图标 -->
						<a id="result_logo" href="section3.jsp"
							onmousedown="return c({&#39;fm&#39;:&#39;tab&#39;,&#39;tab&#39;:&#39;logo&#39;})">
							<img class="s_lg_img_gold_show"
							rc="../static/section3_2/ask_answer.png"> <img
							class="s_lg_img_gold_showre"
							src="../static/section3_2/ask_answer.png">
						</a>
						
						
						<form id="form" role="form" class="fm" style="margin-top:20px;">
							<span id="s_kw_wrap" class="bg s_ipt_wr quickdelete-wrap"
								style="background-color: #fff">
								
								<!-- 搜索框 -->
								 <input type="text" placeholder="请输入症状或问题"
								class="s_ipt" name="search" id="kw" maxlength="100" value=""
								autocomplete="off">
							</span> <span class="btn_wr s_btn_wr bg" id="s_btn_wr2"> <input
								type="submit"
								onclick="searchOnClick(search.value)" value=" 症状科室 " id="su"
								class="btn self-btn bg s_btn">
							</span> <span class="btn_wr s_btn_wr bg" id="s_btn_wr"> <input
								type="submit" value=" 健康问题 "
								onclick="search2OnClick(search.value)" 
								id="su" class="btn self-btn bg s_btn">
							</span>

						</form>
					</div>
				</div>
				<br>
				<hr>
			</div>
		</div>

		<div id="wrapper_wrapper" style="display: block;">
			<div id="container" class="container_l">
				<div id="content_left" style="margin-top: 100px;">

					<div id="answer"
						style="margin:0 auto; width:120%; text-align:left;"></div>
					<br>
					<script type="text/javascript">
						function searchOnClick(text) {
						    if(text == null || text == "" || text.match("\\s+")){
						    	alert("请输入症状或问题后点击相应查询按钮！");
						    	location.href="section3.jsp";
						    	window.event.returnValue = false;
						    	return;
						    }
							window.event.returnValue = false;
							document.getElementById('answer').innerHTML = "加载中...";
							var url = 'http://60.247.77.152:19003/api/getDepartment?q=' + text;
							httpRequest(url, text, showAns)
						}
						function search2OnClick(text) {
							if(text == null || text == "" || text.match("\\s+")){
						    	alert("请输入症状或问题后点击相应查询按钮！");
						    	location.href="section3.jsp";
						    	window.event.returnValue = false;
						    	return;
						    }
							window.event.returnValue = false;
							document.getElementById('answer').innerHTML = "加载中...";
							var url = 'http://60.247.77.152:19003/api/getAnswer?q=' + text;
							httpRequest(url, text, showAns2)
						}
					</script>
				</div>
			</div>
		</div>
	</div>

</body>
</html>