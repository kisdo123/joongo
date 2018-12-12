$(function() {

	// 이미지 개수에 따른 상품 라디오 버튼 숫자조절
	var total = $(".productInfo-radioUl>li").length;

	var noImgLi = "<li class='roductInfo-radioLi'><img src='/joongo/image/no-image.jpg' class='productInfo-img'></li>";

	if (total == 0) {
		$(".productInfo-radioUl").after(noImgLi);
		for (var i = 2; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	}
	// 이미지 한개일 때
	else if (total == 1) {
		for (var i = 2; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
		// 이미지 2개일 때
	} else if (total == 2) {
		for (var i = 3; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
		// 이미지 3개일 때
	} else if (total == 3) {
		for (var i = 4; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	} else if (total == 4) {
		for (var i = 5; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	} else if (total == 5) {
		for (var i = 6; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	} else if (total == 6) {
		for (var i = 7; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	} else if (total == 7) {
		for (var i = 8; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	} else if (total == 8) {
		for (var i = 9; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	} else if (total == 9) {
		for (var i = 10; i < 11; i++) {
			$("#productInfo-label" + i).css("display", "none");
		}
	}

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

	$("input[id='pos6']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-2000px"
		}, 500);
	});

	$("input[id='pos7']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-2400px"
		}, 500);
	});

	$("input[id='pos8']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-2800px"
		}, 500);
	});

	$("input[id='pos9']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-3200px"
		}, 500);
	});

	$("input[id='pos10']").click(function() {

		$(".productInfo-radioUl").animate({
			"margin-left" : "-3600px"
		}, 500);
	});

	// // 찜버튼 활성화
	// $(".productInfo-zzimBtn").on("click", function() {
	// $(".productInfo-zzimBtn").css("display", "none");
	// $(".productInfo-clickZzim").css("display", "inline");
	// });
	//
	// // 찜버튼 비활성화
	// $(".productInfo-clickZzim").on("click", function() {
	// $(".productInfo-zzimBtn").css("display", "inline");
	// $(".productInfo-clickZzim").css("display", "none");
	// });

	
	// 찜
	$(".productInfo-zzimBtn").click(function() {

		$(".productInfo-zzimBtn").css("display", "none");
		$(".productInfo-clickZzim").css("display", "inline");

	});
	
	
	
});

// 가격 1000원 단위로 콤마찍기
function thousand(number) {

	return number.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

}



