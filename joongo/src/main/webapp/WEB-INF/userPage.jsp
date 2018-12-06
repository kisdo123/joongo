<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/myPage.css">
<script type="text/javascript" src="/joongo/script/myPage.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div class="mypage-container">
	<div class="first-middle">
		<div class="middle">
			<div class="user-info-container">
				<!-- 유저 이름 -->
				<div class="user-info">
					<span class="user-name">이름(닉네임)</span>
					<span class="user-modify">
						<a href="modifyUserForm.do" class="modify">회원수정</a> <span>/</span>
						<a href="" class="modify">회원탈퇴</a>
						<!-- 신고하기 다른 사람 프로필을 봤을 때 -->
						<form action="reportForm.do" method="POST">
							<input type="hidden" value="">
							<input type="submit" class="modify" value="신고하기">
						</form>
					</span>
				</div>
				<!-- 유저 정보 -->
				<div class="user-table">
					<table>
						<tr>
							<td class="bold">주소</td>
							<td class="w68p">서울특별시 중랑구</td>
							<td class="bold">번호</td>
							<td class="w17p">010-8529-7193</td>
						</tr>
						<tr>
							<td class="bold">이메일</td>
							<td class="w68p">nnvkk@naver.com</td>
							<td class="bold">가입일</td>
							<td class="w17p">2018-12-01</td>
						</tr>
					</table>
				</div>
				<!-- 소개글 -->
				<div class="introduce-container">
					<span class="intro-title bold">소개글</span>
					<div class="introduce-update">
						<div class="introduce" id="introduce">
							<span class="introduce-content" id="introduce-content">ㅁㄴㅇㅁㄴㅇ</span>
							<p class="update" id="update">변경</p>
							<textarea class="introduce-textarea" id="introduce-modify" comment="100">ㅁㄴㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㄴㅇㄴ</textarea>
							<button class="register" id="register">등록</button>
						</div>
					</div>
				</div>
			</div>
			<div class="mypage-menu-container">
				<div class="mypage-menu">
					<div class="center menu-title menu">상품</div>
					<div class="center menu-title menu">후기</div>
					<div class="center menu-title menu">찜</div>
				</div>
				<!-- product를 감싸는 div -->
				<div class="menu-contents" >
					<div class="product-package">
						<!-- for 문 -->
						<div class="product">
							<div class="product-img-container">
								<a href="#"> <img src="/joongo/image/fruit.jpg"class="product-img">
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="#">상품</a>
								</div>
								<div>
									<div class="product-price">19000</div>
									<div class="product-tag">#사과 #귤 #포도</div>
								</div>
							</div>
						</div>
					</div>
					<!-- for 문 -->
					<div class="product-package none">
						<!-- for 문 -->
						<div class="product">
							<div class="product-img-container">
								<a href="#"> <img src="/joongo/image/fruit.jpg"class="product-img">
								</a>
							</div>
							<div class="product-info">
								<div class="product-title">
									<a href="#">상품</a>
								</div>
								<div>
									<div class="product-price">19000</div>
									<div class="product-tag">#사과 #귤 #포도</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 라인은 for문 5번 하고 난 후 -->
					<div class="line"></div>
				</div>
			</div>
		</div>
	</div>
</div>
	<jsp:include page="/particular/footer.jsp"></jsp:include>