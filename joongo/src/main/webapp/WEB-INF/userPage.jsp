<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/userPage.css">
<script type="text/javascript" src="/joongo/script/userPage.js?6"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<script>
	window.onload = function() {
		viewProducts(${pageUser.userNo}, 'shopList.do', ${param.pageNum});
	}
</script>
<div class="mypage-container">
	<div class="first-middle">
		<div class="middle">
			<div class="user-info-container">
				<!-- 유저 이름 -->
				<div class="user-info">
					<span class="user-name">${pageUser.name }(${pageUser.nickname })</span> <span class="user-modify"> <c:if test="${pageUser.userNo == loginUser.userNo }">
							<a id="modifya" class="modify">회원수정</a>
							<span>/</span>
							<a id="deletea" class="modify">회원탈퇴</a>
							<form id="modifyForm" action="modifyUserForm.do">
								<input type="hidden" name="userNo" value="${pageUser.userNo }">
							</form>
							<form id="deleteUser" action="deleteUser.do">
								<input type="hidden" name="userNo" value="${pageUser.userNo }">
							</form>
						</c:if> <!-- 신고하기 다른 사람 프로필을 봤을 때 --> <c:if test="${pageUser.userNo != loginUser.userNo }">
							<form action="reportForm.do" method="POST">
								<input type="hidden" value="${pageUser.userNo }"> <input type="submit" class="modify" value="신고하기">
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
								<textarea class="introduce-textarea" id="introduce-modify">${pageUser.introduce }</textarea>
								<button class="register" id="register" onclick="introduceChange(${pageUser.userNo})">등록</button>
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
				<div class="menu-contents">
					<!-- 내 상품 div -->
					<div class="product-package" id="product-package"></div>
					<!-- 후기 div -->
					<!-- 찜 div -->
					<div class="product-package none" id="fav-packge"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>