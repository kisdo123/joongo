

$(function() {
	
	// 헤더 카테고리 드롭다운
	/*$("ul.header-sub").hide();
	$("ul.header-ulMenu li").hover(function() {
		$("ul:not(:animated)", this).slideDown("fast");
	}, function() {
		$("ul", this).slideUp("fast");
	});*/
	
	
	
	
	// 헤더 상단에 고정시키기
	var offSet = $('#header-navbar').offset();
	$(window).scroll(function() {
		if ($(document).scrollTop() > offSet.top) {
			$('#header-navbar').addClass('header-topfixed');
		} else {
			$('#header-navbar').removeClass('header-topfixed');
		}
	});
	
	
	
	  
});

