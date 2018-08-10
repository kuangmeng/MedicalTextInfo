<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="ajax.jsp"></jsp:include>
</head>

<body>
	<div class="wrap">
		<div>
			<jsp:include page="index/header.jsp"></jsp:include>
		</div>

		<div class="subMenu">
			<div class="inner">
				<a href="#s1" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">关系抽取</span>
				</a> <a href="#s2" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">知识图谱</span>
				</a> <a href="#s3" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">健康问答</span>
				</a> <a href="#s4" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">询证检索</span>
				</a> <a href="#s5" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">临床指南</span>
				</a> <a href="#s6" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">就诊推荐</span>
				</a> <a href="#s7" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">经验分享</span>
				</a> <a href="#s8" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">双语词典</span>
				</a> <a href="#s9" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">文献翻译</span>
				</a> <a href="#s10" class="subNavBtn"> <span class="tooltips"
					tooltip="这是一个简介" tooltip-position="top">病历翻译</span>
				</a>
			</div>
		</div>

		<jsp:include page="index/section1.jsp"></jsp:include>
		<jsp:include page="index/section2.jsp"></jsp:include>
		<jsp:include page="index/section3.jsp"></jsp:include>
		<jsp:include page="index/section4.jsp"></jsp:include>
		<jsp:include page="index/section5.jsp"></jsp:include>
		<jsp:include page="index/section6.jsp"></jsp:include>
		<jsp:include page="index/section7.jsp"></jsp:include>
		<jsp:include page="index/section8.jsp"></jsp:include>
		<jsp:include page="index/section9.jsp"></jsp:include>
		<jsp:include page="index/section10.jsp"></jsp:include>
		
		<a href="http://mitlab.hit.edu.cn" class="subNavBtn extLink end"
			style="display:none;">MITLab</a>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
