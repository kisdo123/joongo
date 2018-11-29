$(function(){
	
	// 마지막 line 클래스 없애기
	$('.line').last().remove();
	
	// 카테고리 하나를 기본으로 잡아놓음
	$('.category-button').first().css({
		"border-color": "#f64448",
		"background-color": "#f64448",
		"color": "white"
	});
	
	// 카테고리 버튼을 눌렀을 시 css 변경
	$('.category-button').click(function(){
		$(".category-button").each(function(){
			$(this).css({
				"border-color": "#e8e8e8",
				"background-color": "white",
				"color": "black"
			});
		});
		$(this).css({
			"border-color": "#f64448",
			"background-color": "#f64448",
			"color": "white"
		});
	})
	
	// 맨 위로
	$('.up').click(function() {
		$('html').scrollTop(0);
	});
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').scrollTop($(document).height());
	});
	
	$('.product-title > a').each(function() {
		
		var cutLength = 15;
		var length = $(this).text().length;
		
		for(let i=0; i<length; i++) {
			let chr = $(this).text().charAt(i)
			var tl = 0;
			 
			if((chr < "AC00") || (chr > "D7A3")) { // 한글의 범위를 벗어났을 경우.
				tl += 1;
				console.log('영어')
			} else {
				tl += 2;
				console.log('한글')
			}
		}
		
		if(tl > cutLength) {
			var text = $(this).text().substr(0,cutLength)+'...';
			$(this).text(text);
		}
	})
	
})