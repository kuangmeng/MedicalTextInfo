<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		$("#ner").click(function(){
				var k = $("#sentence").val();
				if(k == ''){
					alert("请填写内容！");
				}else{
					$("#result").empty();
					$("#result").append("请耐心等候……");
					htmlobj = $.ajax({
							url : "./rest/ner",
							async : false,
							type : 'post',
							data : $("#sentence").val(),
							});
					$("#result").empty();
					var arr = htmlobj.responseText;
					$("#result").append("<span class='label label-default'>"+arr+"</span>");
				};
		});
	});
    var linkEle = document.getElementById("myid");
    var tmplink = linkEle.href;
    var tmptitle = document.title;
    document.addEventListener('visibilitychange', function() {
      var isHidden = document.hidden;
      if (isHidden) {
        document.title = '喔唷，崩溃啦！';
        linkEle.href = 'static/img/error.gif';
      } else {
        document.title = tmptitle;
        linkEle.href = tmplink;
      }
    });
    
    $(document).ready( function() {
        $('.subMenu').smint({
        	'scrollSpeed' : 1000
        });
    });
  </script>