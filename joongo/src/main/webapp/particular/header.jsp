<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body class="text-center" oncontextmenu="return false" ondragstart="return false" onselect="return false">
<div id="header-body">
	<nav id="header-navbar">
		<div class="middle header-divTop">
			<div class="header-logo">
			<a href="#">
				<img src="/joongo/image/logo.png" class="header-img">
			</a>
			</div>
			<div class="header-search">
				<form action="search.do" method="post" class="header-form-search">
					<input type="text" placeholder="&nbsp;상품명, 카테고리 , @태그입력" class="header-search-input" name="word" required autofocus>
					<input type="image" src="/joongo/image/searchBtn.png" class="header-search-icon">
				</form>
			</div>
			<div class="header-divLogin">
				<span class="header-a"><i class="fa fa-user-circle-o" aria-hidden="true"></i> 로그인</span> <span class="header-a header-spanJoin"><i class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</span>
				<!-- 로그인했을 때 판매하기 내상점버튼으로 바꾸고 로그아웃버튼만들기 -->
			</div>
		</div>
	</nav>
</div>
	<!-- 	<i class="fa fa-cloud-upload" aria-hidden="true"></i> 판매하기
	<i class="fa fa-suitcase" aria-hidden="true"></i> 내상점 -->