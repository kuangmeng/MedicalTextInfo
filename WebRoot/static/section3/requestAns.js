function httpRequest(url, question, callback) {
	console.log("url:", url)
	var xhr = new XMLHttpRequest();
	xhr.open("GET", url, true);
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			callback(question, xhr.responseText);
		}
	}
	xhr.send();
}


function showAns(question, result) {
	// console.log("question:", question)
	console.log("result:", result)
	result = JSON.parse(result);
	console.log("parsed result:", result.departments)

	// var list = result.list;
	var content = '<p style="font-size:14px; font-weight:bold; color:black"> 推荐科室: <table class="hovertable"><tr>'

	for (var d in result.departments) {
		content += '<th style="font-size:16px;">' + result.departments[d] + '</th>'
	}
	content += '</tr></table></p>';
	// for (var i=0; i < result.diseases.length; i++){
	//     content += '<br>' + result.diseases[i]
	// }
	var table = '<p style="font-size:14px; font-weight:bold;color:black"> 以下疾病很可能包含上述病症：</p>'
	table += '<table class="hovertable"><tr><th style="font-size:14px;width:10%;color:black">疾病名</th><th style="font-size:14px;color:black">概述</th><th style="color:black;font-size:14px;width:8%">科室</th></tr>';
	for (var i = 0; i < result.diseases.length; i++) {
		table += '<tr onmouseover="this.style.backgroundColor=\'#ffff66\';" onmouseout="this.style.backgroundColor=\'#d4e3e5\';">';
		table += '<td style="font-size:14px; font-weight:bold;">' + result.diseases[i].disease_CNname + '</td>';
		table += '<td>' + result.diseases[i].summary + '</td>';
		table += '<td style="font-size:14px; font-weight:bold;">' + result.diseases[i].department_name + '</td>';
		table += '</tr>';
	}
	table += '</table>';
	content += table
	document.getElementById('answer').innerHTML = content;
}

function showAns2(question, result) {
	// console.log("question:", question)
	// console.log("result:", result)
	result = JSON.parse(result);
	console.log("parsed result:", result.recommend_question)

	// var list = result.list;
	var content = ''
	var max_len = 8
	var ans = ''
	if (result.answer == null) {
		content += '<div style="font-size:16px; font-weight:bold;color:black">您可能想问：</div>'
	} else {
		ans = result.answer
		content += '<div style="font-size:16px; color:black">您可能还想问：</div>'
	}
	content += '<div id="recommend_question" style="text-align:center;"><p>'
	var max_line_size = 4
	for (var i = 0; i < result.recommend_question.length && i < max_len; i++) {
		content += '<a class="btn2 btn-primary" role="button" onclick="fillSearchText(1, sears2, this.text); search2OnClick(sears2.value)">'
		content += result.recommend_question[i] + '</a>'
		if (i % max_line_size == max_line_size - 1) {
			content += '<p>'
		}
	}
	content += '</div>'
	content += '<div style="font-size:16px;color:black;">' + ans + '</div>';

	document.getElementById('answer').innerHTML = content;
}

// httpRequest(url, city, showWeather);
// httpRequest(url, city, showWeather);