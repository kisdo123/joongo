$(function() {

	// 헤더 카테고리 드롭다운
	/*
	 * $("ul.header-sub").hide(); $("ul.header-ulMenu li").hover(function() {
	 * $("ul:not(:animated)", this).slideDown("fast"); }, function() { $("ul",
	 * this).slideUp("fast"); });
	 */

	// 헤더 상단에 고정시키기
	/*
	 * var offSet = $('#header-navbar').offset(); $(window).scroll(function() {
	 * if ($(document).scrollTop() > offSet.top) {
	 * $('#header-navbar').addClass('header-topfixed'); } else {
	 * $('#header-navbar').removeClass('header-topfixed'); } });
	 */

	var nav = $("#header-body");
	var navTop = 1; // 숫자 지정

	$(window).scroll(function() {

		var windowTop = $(this).scrollTop();

		if (windowTop >= navTop)
			nav.addClass("header-topfixed");
		else if (windowTop <= navTop) {
			nav.removeClass("header-topfixed");
		}
	});
	
	
	
	$("span:contains('내상점')").click(function(){
		$('#userpage-form')[0].submit();
	})
	
	$("span:contains('로그아웃')").click(function(){
		location.href="logout.do";
	})

});
