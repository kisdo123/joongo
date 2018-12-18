$(function(){
	
	// 맨 위로
	$('.up').click(function() {
		$('html').animate( { scrollTop : 0 }, 400 );
		return false;
	});
	
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').animate( { scrollTop : $(document).height() }, 400 );
		return false;
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