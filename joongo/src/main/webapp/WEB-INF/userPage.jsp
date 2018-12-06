<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/myPage.css">
<script type="text/javascript" src="/joongo/script/userPage.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div class="mypage-container">
	<div class="first-middle">
		<div class="middle">
			<div class="user-info-container">
				<!-- 유저 이름 -->
				<div class="user-info">
					<span class="user-name">${pageUser.name }(${pageUser.nickname })</span>
					<span class="user-modify">
					
						<c:if test="${pageUser.userNo == loginUser.userNo }">
							<span id="modifya" class="modify">회원수정</span> <span>/</span>
							<span id="deletea" class="modify">회원탈퇴</span>
							<form id="modifyForm" action="modifyUserForm.do">
								<input type="hidden" name="userNo" value="${pageUser.userNo }">
							</form>
							<form id="deleteUser" action="deleteUser.do">
								<input type="hidden" name="userNo" value="${pageUser.userNo }">
							</form>
						</c:if>
						
						<!-- 신고하기 다른 사람 프로필을 봤을 때 -->
						<c:if test="${pageUser.userNo != loginUser.userNo }">
							<form action="reportForm.do" method="POST">
								<input type="hidden" value="">
								<input type="submit" class="modify" value="신고하기">
							</form>
						</c:if>
					</span>
				</div>
				<!-- 유저 정보 -->
				<div class="user-table">
					<table>
						<tr>
							<td class="bold">주소</td>
							<td class="w68p">${pageUser.addr }</td>
							<td class="bold">번호</td>
							<td class="w17p">${pageUser.phone }</td>
						</tr>
						<tr>
							<td class="bold">이메일</td>
							<td class="w68p">${pageUser.email }</td>
							<td class="bold">가입일</td>
							<td class="w17p">${pageUser.rdate }</td>
						</tr>
					</table>
				</div>
				<!-- 소개글 -->
				<div class="introduce-container">
					<span class="intro-title bold">소개글</span>
					<div class="introduce-update">
						<div class="introduce" id="introduce">
							<span class="introduce-content" id="introduce-content">${pageUser.introduce }</span>
							<c:if test="${loginUser.userNo == pageUser.userNo }">
							<p class="update" id="update">변경</p>
							<textarea class="introduce-textarea" id="introduce-modify" comment="100">${pageUser.introduce }</textarea>
							<button class="register" id="register">등록</button>
							</c:if>
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