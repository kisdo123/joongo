$(function() {

	// tag #추가
	$('.product-tag').each(function() {
		var tag = $(this).text();
		var ctag = '';

		if (tag != '태그없음') {
			let stag = tag.split(',');
			for (let i = 0; i < stag.length; i++) {
				ctag += '#' + stag[i] + ' ';
			}

			$(this).text(ctag);
		}
	})

	// 마지막 line 클래스 없애기
	$('.line').last().remove();

	// 카테고리 하나를 기본으로 잡아놓음
	$('.category-button').first().css({
		"border-color" : "#f64448",
		"background-color" : "#f64448",
		"color" : "white"
	});

	// 카테고리 버튼을 눌렀을 시 css 변경
	$('.category-button').click(function() {
		$(".category-button").each(function() {
			$(this).css({
				"border-color" : "#e8e8e8",
				"background-color" : "white",
				"color" : "black"
			});
		});
		$(this).css({
			"border-color" : "#f64448",
			"background-color" : "#f64448",
			"color" : "white"
		});
	})

	// 카테고리 버튼 padding 조정
	$('.category-button').each(function() {
		let aTag = $(this).find('a');
		let len = aTag.text().length;

		if (len == 2) {
			$(aTag).css('padding', '12px 40px');
		} else if (len == 3) {
			$(aTag).css('padding', '12px 32px');
		} else if (len == 4) {
			$(aTag).css('padding', '12px 24px');
		}
	});

	
	
	$(".product-condit:contains('판매완료')").css({"color": "#e81e22", "font-weight" : "bolder"});

	$(".product-condit:contains('판매중')").css({"color": "#0043ffd1", "font-weight" : "bolder"});

});