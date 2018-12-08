$(function(){
	

	// 맨 위로
	$('.up').click(function() {
		$('html').scrollTop(0);
	});
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').scrollTop($(document).height());
	});
	
	// 스크롤 애니메이션
	$('.moveScroll').click(function() {
		var href = $(this).prop('href');
		var destination = href.substr(href.indexOf('#'))
		var y = $(destination).offset().top;
//		if()
		
		$("html,body").animate({
			scrollTop: y
		}, 1000);
	});
});