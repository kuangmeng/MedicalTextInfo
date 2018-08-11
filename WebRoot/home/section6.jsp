<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link rel="icon" id="myid" href="../static/img/avatar.png">
<link rel="apple-touch-icon" id="myid" href="../static/img/avatar.png">

<title>就诊推荐</title>
<link href="../static/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../static/cityChoose/input/css/htmleaf-demo.css">
<link href="../static/cityChoose/input/dist/css/component-chosen.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../static/cityChoose/css/cityPicker.css">
<link rel="stylesheet"
	href="https://cache.amap.com/lbs/static/main1119.css" />
<script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
<!-- 密钥：00d21ef8a1b4cb38dda2df8e42373f03 可以改成自己的 如果不能使用 就改 高德地图  -->
<script
	src="https://webapi.amap.com/maps?v=1.4.9&key=00d21ef8a1b4cb38dda2df8e42373f03"></script>
<script type="text/javascript"
	src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body class="h-100">
	<div class="htmleaf-container">
		<div class="container h-100">
			<div class="d-flex align-items-start flex-column h-100">
				<form class="was-validated">
					<div class="w-100 m-auto py-5">
						<div class="row">
							<div class="col-xs-12 col-md-4 mb-5" style="width: 400px;">
								<label>就诊科室</label> <select id="required"
									class="form-control form-control-chosen-required"
									data-placeholder="Please select...">
									<option></option>
									<option>Option One</option>
									<option>Option Two</option>
									<option>Option Three</option>
									<option>Option Four</option>
									<option>Option Five</option>
									<option>Option Six</option>
									<option>Option Seven</option>
									<option>Option Eight</option>
								</select>
							</div>

							<div class="col-xs-12 col-md-4 mb-5" style="width: 400px;">
								<label>所在地（市）</label> <input type="text" id="cityChoice"
									class="form-control form-control-chosen-required"
									placeholder="点击选择就诊市"> <input type="hidden"
									id="province" value=""> <input type="hidden" id="city"
									value="">
							</div>
							<button type="button" class="btn btn-outline-primary"
								style="height: 50px; width: 200px; margin-top: 20px; margin-left: 30px;">搜索</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div>
		<div id="container"
			style="height: 75%; width: 60%; margin:10% 0 0 10%;"></div>
		<div id="right_list"
			style="margin-right: 10%; float: right; width: 18%; text-align:left;">


			<div class="search-item">
				<p class="search-item__tit"> <label>1.&nbsp;</label>
				<a target="_blank" href="/health/hospital/14134/section/1101"
						class="name">哈尔滨医科大学附属第一医院</a>
				</p>
				<p class="search-item__desc">
					<span class="address">地址：黑龙江省哈尔滨市邮政街23号</span>
					<!-- <a href="" class="map orange">查看地图</a> -->
				</p>
				<p class="search-item__desc">
					<span class="address">电话： 045185556000</span>
				</p>
			</div>
			<hr>
			<div class="search-item">
				<p class="search-item__tit"> <label>2.&nbsp;</label>
				<a target="_blank" href="/health/hospital/14134/section/1101"
						class="name">哈尔滨医科大学附属第一医院</a>
				</p>
				<p class="search-item__desc">
					<span class="address">地址：黑龙江省哈尔滨市邮政街23号</span>
					<!-- <a href="" class="map orange">查看地图</a> -->
				</p>
				<p class="search-item__desc">
					<span class="address">电话： 045185556000</span>
				</p>
			</div>

		</div>

	</div>

	<script>
		var map = new AMap.Map('container', {
			resizeEnable : true,
			center : [ 116.397428, 39.90923 ],
			zoom : 13
		});
		map.clearMap(); // 清除地图覆盖物
		var markers = [ {
			icon : 'https://webapi.amap.com/theme/v1.3/markers/n/mark_b1.png',
			position : [ 116.205467, 39.907761 ]
		}, {
			icon : 'https://webapi.amap.com/theme/v1.3/markers/n/mark_b2.png',
			position : [ 116.368904, 39.913423 ]
		}, {
			icon : 'https://webapi.amap.com/theme/v1.3/markers/n/mark_b3.png',
			position : [ 116.305467, 39.807761 ]
		} 
		
		];
		// 添加一些分布不均的点到地图上,地图上添加三个点标记，作为参照
		markers.forEach(function(marker) {
			new AMap.Marker({
				map : map,
				icon : marker.icon,
				position : [ marker.position[0], marker.position[1] ],
				offset : new AMap.Pixel(-12, -36)
			});
		});
		var center = map.getCenter();
		var centerText = '当前中心点坐标：' + center.getLng() + ',' + center.getLat();
		document.getElementById('centerCoord').innerHTML = centerText;
		document.getElementById('tips').innerHTML = '成功添加三个点标记，其中有两个在当前地图视野外！';
	
		// 添加事件监听, 使地图自适应显示到合适的范围
		AMap.event.addDomListener(document.getElementById('setFitView'), 'click', function() {
			var newCenter = map.setFitView();
			document.getElementById('centerCoord').innerHTML = '当前中心点坐标：' + newCenter.getCenter();
			document.getElementById('tips').innerHTML = '通过setFitView，地图自适应显示到合适的范围内,点标记已全部显示在视野中！';
		});
	</script>
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"
		type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="../static/cityChoose/input/js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
	<script src="../static/js/bootstrap.min.js"></script>
	<script src="../static/cityChoose/input/js/chosen.jquery.js"></script>
	<script type="text/javascript">
		$('.form-control-chosen').chosen({
			allow_single_deselect : true,
			width : '100%'
		});
		$('.form-control-chosen-required').chosen({
			allow_single_deselect : false,
			width : '100%'
		});
		$('.form-control-chosen-search-threshold-100').chosen({
			allow_single_deselect : true,
			disable_search_threshold : 100,
			width : '100%'
		});
		$('.form-control-chosen-optgroup').chosen({
			width : '100%'
		});
	
		$(function() {
			$('[title="clickable_optgroup"]').addClass('chosen-container-optgroup-clickable');
		});
		$(document).on('click', '[title="clickable_optgroup"] .group-result', function() {
			var unselected = $(this).nextUntil('.group-result').not('.result-selected');
			if (unselected.length) {
				unselected.trigger('mouseup');
			} else {
				$(this).nextUntil('.group-result').each(function() {
					$('a.search-choice-close[data-option-array-index="' + $(this).data('option-array-index') + '"]').trigger('click');
				});
			}
		});
	</script>


	<script type="text/javascript"
		src="../static/cityChoose/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript"
		src="../static/cityChoose/js/cityData.js"></script>
	<script type="text/javascript"
		src="../static/cityChoose/js/cityPicker.js"></script>
	<script>
		var cityPicker = new IIInsomniaCityPicker({
			data : cityData,
			target : '#cityChoice',
			valType : 'k-v',
			hideCityInput : '#city',
			hideProvinceInput : '#province',
			callback : function(city_id) {}
		});
	
		cityPicker.init();
	</script>



</body>
</html>

