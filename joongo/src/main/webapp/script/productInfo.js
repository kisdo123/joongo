$(function() {

	// 이미지가 없으면 이미지와 라디오 버튼을 지움
	$("li>img").each(function(index) {

		var curSrc = $(this).attr("src");

		console.log(curSrc);
		console.log(index);

		if (curSrc == "") {

			if (index == 9) {

				$("#productInfo-label10").css("display", "none");

			} else if (index == 8) {

				$("#productInfo-label9").css("display", "none");
			} else if (index == 7) {

				$("#productInfo-label8").css("display", "none");
			} else if (index == 6) {

				$("#productInfo-label7").css("display", "none");
			} else if (index == 5) {

				$("#productInfo-label6").css("display", "none");
			} else if (index == 4) {

				$("#productInfo-label5").css("display", "none");
			} else if (index == 3) {

				$("#productInfo-label4").css("display", "none");
			} else if (index == 2) {

				$("#productInfo-label3").css("display", "none");
			} else if (index == 1) {

				$("#productInfo-label2").css("display", "none");
			} else if (index == 0) {

				$(this).attr("src", "/joongo/image/no-image.jpg")

			}

		}

	});

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

	
	
	// 찜버튼 활성화
	$(".productInfo-zzimBtn").on("click", function() {
		$(".productInfo-zzimBtn").css("display", "none");
		$(".productInfo-clickZzim").css("display", "inline");
	});

	// 찜버튼 비활성화
	$(".productInfo-clickZzim").on("click", function() {
		$(".productInfo-zzimBtn").css("display", "inline");
		$(".productInfo-clickZzim").css("display", "none");
	});

});

// 가격 1000원 단위로 콤마찍기
function thousand(number) {

	return number.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

}

// 찜 선택 삭제 ajax 처리
/*$(".productInfo-zzimBtn").click(function() {

	$.ajax({
		url : "addFavorite.do",
		data : {
			// ${product.proNo} , {product.userNo} 로 변경해야 함
			"proNo" : proNo,
			"userNo" : userNo
		},
		success : function() {
			$(".productInfo-zzimBtn").css("display", "none");
			$(".productInfo-clickZzim").css("display", "inline");
		},
		error : function(error) {

			console.log(error);
			alert('찜 선택이 실패했습니다.');
		}
	});
});

$(".productInfo-clickZzim").click(function() {

	$.ajax({
		url : "deleteFavorite.do",
		data : {
			// ${product.proNo} , {product.userNo} 로 변경해야 함
			"proNo" : proNo,
			"userNo" : userNo
		},
		success : function() {
			$(".productInfo-zzimBtn").css("display", "inline");
			$(".productInfo-clickZzim").css("display", "none");
		},
		error : function(error) {

			console.log(error);
			alert('찜 해제에 실패했습니다.');
		}
	});
});*/
