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
})