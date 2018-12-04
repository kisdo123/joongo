<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body class="text-center" oncontextmenu="return false"
	ondragstart="return false" onselect="return false">
	<div id="header-body">
		<nav id="header-navbar">
			<div class="middle header-divTop">
				<div class="header-logo">
					<a href="main.do"> <img src="/joongo/image/logo.png"
						class="header-img">
					</a>
				</div>
				<div class="header-search">
					<form action="search.do" method="post" class="header-form-search">
						<input type="text" placeholder="&nbsp;검색어 입력"
							class="header-search-input" name="word" required> <input
							type="image" src="/joongo/image/searchBtn.png"
							class="header-search-icon">
					</form>
				</div>
				<div class="header-divLogin">
					<c:if test="${loginUser != null }">
						<!-- 로그인 loginId가 있을 때 버튼 3개 -->
						<div class="header-divNick">
							<span class="header-spanNick">${loginUser.nickname }</span> 님
							안녕하세요!
						</div>
						<img src="/joongo/image/sellImg.png">
						<span class="header-a" id="header-spanSell">판매하기</span>
						<img src="/joongo/image/myStoreImg.png">
						<span class="header-a" id="header-spanMystore"> 내상점</span>
						<img src="/joongo/image/logoutImg.png" id="header-logoutImg">
						<span class="header-a" id="header-spanLogout"> 로그아웃</span>

					</c:if>
				</div>
				<div class="header-divLogout">
					<c:if test="${loginUser == null }">
					<!-- 로그인 상태가 아닐 때 로그인 & 회원가입 버튼 -->
					<span class="header-a" id="header-spanLogin"><i
						class="fa fa-user-circle-o" aria-hidden="true"></i> 로그인</span> <span
						class="header-a" id="header-spanJoin"><i
						class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</span>
					</c:if>
				</div>
			</div>
		</nav>
	</div>
	<jsp:include page="/particular/loginPopup.jsp"></jsp:include>
	<jsp:include page="/particular/registerPopup.jsp"></jsp:include>