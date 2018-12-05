$(function() {

	$("input[id='pos1']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "0px"
		}, 500);
	});

	$("input[id='pos2']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-400px"
		}, 500);
	});

	$("input[id='pos3']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-800px"
		}, 500);
	});

	$("input[id='pos4']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-1200px"
		}, 500);
	});

	$("input[id='pos5']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-1600px"
		}, 500);
	});

});


// 가격 1000원 단위로 콤마찍기
function thousand(number) {

	return number.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

}


