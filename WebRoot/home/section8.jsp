<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta id="i18n_pagename" content="index-common">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>双语词典</title>
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">

<link rel="stylesheet" href="../static/section8/layui.css">
<link rel="stylesheet" href="../static/css/bootstrap.css">
<link rel="stylesheet" href="../static/section8/index.css">
<link id="layuicss-laydate" rel="stylesheet"
	href="../static/section8/laydate.css" media="all">
<link id="layuicss-layer" rel="stylesheet"
	href="../static/section8/layer.css" media="all">
<link id="layuicss-skincodecss" rel="stylesheet"
	href="../static/section8/code.css" media="all">
<body>
	<div class="layui-row layui-container clearfix transContainer"
		style="min-width: 1200px; padding: 0px 30px; min-height: 804px;">
		<div class="width50 marginT110 paddingB150">
			<form class="layui-form marginR10">
				<div class="layui-form-item">
					<a href="javascript:;"
						class="select-langunge-a select-langunge-a-1" ind="1"> <span
						class="language-selected language-selected1 translate_auto"
						value="nzh">中文</span> <i class="layui-edge layui-edge-zd"></i>
					</a> <a href="javascript:;" class="from-to-exchange"> <span
						class="exchange-mask"></span>
					</a>
				</div>
				<div class="translate-gap translate-gap1" style="display: none;"></div>
				<div class="translate-select-panel translate-select-panel1"
					style="display: none;">
					<ul class="language-often language-often1 clearfix">
						<li><a href="javascript:;"
							class="data-lang data-lang-1 translate_en" value="nen">英文</a></li>
						<li><a href="javascript:;"
							class="data-lang data-lang-1 translate_zh lang-selected"
							value="nzh">中文</a></li>
					</ul>

				</div>
				<div class="layui-form-item layui-form-text leftText">
					<div class="layui-input-block">
						<a href="javascript:;" class="clearTextBtn"></a>
						<textarea id="textarea" placeholder="输入文字即可翻译"
							class="translateBefor textarea"
							style="resize: none; height: 280px;"></textarea>
						<div class="leftTextBot1">
							<div class="leftTextBot" style="display: none;">
								<div class="sizeInp">
									<span class="translateLength">0</span> <span>/</span> <span>5000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="width50 marginT110 paddingB150">
			<form class="layui-form marginL10">
				<div class="layui-form-item clearfix">
					<div class="langungeAbsolute">
						<a href="javascript:;"
							class="select-langunge-a select-langunge-a-2" ind="2"> <span
							class="language-selected language-selected2 translate_zh"
							value="nen">英文</span> <i class="layui-edge layui-edge-after"></i>
						</a>
					</div>
					<!-- 右侧面板start -->
					<div class="translate-gap translate-gap2 langungeAbsolute"
						style="display: none;"></div>
					<div
						class="translate-select-panel translate-select-panel2 langungeAbsolute"
						style="display: none;">
						<ul class="language-often language-often2 clearfix">
							<li><a href="javascript:;"
								class="data-lang data-lang-1 translate_en lang-selected"
								value="nen">英文</a></li>
							<li><a href="javascript:;"
								class="data-lang data-lang-1 translate_zh" value="nzh">中文</a></li>
						</ul>

					</div>
					<!-- 右侧面板end -->
					<a href="javascript:;"
						class="select-langunge-a select-langunge-a-4 auto-field" ind="4"
						style="margin-left: -168px"> <span
						class="language-selected language-selected4 translate_aif">医疗</span>
						<i class="layui-edge layui-edge-auto rotate1"></i>
					</a>
					<!-- 自动识别领域 -->
					<div
						class="translate-select-panel translate-select-panel4  auto-field-con"
						style="display: none;">
						<ul>
							<li class="translate_aif" fieldtype="auto">通用领域</li>
							<li fieldtype="med" class="active">医疗</li>
						</ul>
					</div>
					<button
						class="layui-btn layui-btn-radius layui-btn-normal translateBtn">开始翻译</button>
					<button class="layui-btn layui-btn-radius layui-btn-normal "
						style="margin-left:220px;margin-top:-30px;">清空</button>
				</div>
				<div class="layui-form-item layui-form-text rightText">
					<div style="position: relative;">
						<textarea autoheight="true" readonly=""
							class="translateAfter textarea" id="ttsText"
							style="height: 280px; resize: none;"></textarea>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- 蒙板 -->
	<div class="layui-anim test10C hide"></div>

</body>
</html>
