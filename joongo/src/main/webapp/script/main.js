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
	
	// 카테고리 버튼 padding 조정
	$('#moveScroll').each(function() {
		let aTag = $(this).find('a').text();
		let len = aTag.length;
		
		if(len == 2) {
			$(aTag).css('padding', '12px 40px');
		} else if(len == 3) {
			$(aTag).css('padding', '12px 32px');
		} else if(len == 4) {
			$(aTag).css('padding', '12px 24px');
		}
	});
	
	// 맨 위로
	$('.up').click(function() {
		$('html').scrollTop(0);
	});
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').scrollTop($(document).height());
	});
	
	$('#hello').click(function() {
		var href = $(this).prop('href');
		var destination = href.substr(href.indexOf('#'))
		var y = $(destination).offset().top;
		
		$("html,body").animate({
			scrollTop: y
		}, 1000);
	})
});