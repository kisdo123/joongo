<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/userPage.css?5">
<link rel="stylesheet" type="text/css" href="/joongo/css/simplePagination.css">
<script type="text/javascript" src="/joongo/script/userPage.js?8"></script>
<script type="text/javascript" src="/joongo/script/pagination.js"></script>
<jsp:include page="/particular/header.jsp"></jsp:include>
<div class="mypage-container">

	<script type="text/javascript">
		window.onload = function() {
			
			init(${pageUser.userNo}, ${loginUser.userNo}, '${loginUser.nickname}');
			view('shopList.do');
		}
	</script>
	<div class="first-middle">
		<div class="middle">
			<div class="user-info-container">
				<!-- 유저 이름 -->
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
								<input type="hidden" name="claimeeNo" value="${pageUser.userNo }"> <input type="submit" class="modify" value="신고하기">
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
							<c:if test="${pageUser.introduce.trim() == ''}">
								<p class="introduce-content" id="introduce-content">소개글이 없습니다.</p>
								<c:if test="${loginUser.userNo == pageUser.userNo }">
									<p class="update" id="update">변경</p>
									<textarea class="introduce-textarea" id="introduce-modify" placeholder="소개글을 입력해주세요."></textarea>
									<button class="register" id="register" onclick="introduceChange(${pageUser.userNo})">등록</button>
								</c:if>
							</c:if>
							<c:if test="${pageUser.introduce.trim() != ''}">
								<span class="introduce-content" id="introduce-content">${pageUser.introduce }</span>
								<c:if test="${loginUser.userNo == pageUser.userNo }">
									<p class="update" id="update">변경</p>
									<textarea class="introduce-textarea" id="introduce-modify" placeholder="소개글을 입력해주세요.">${pageUser.introduce }</textarea>
									<button class="register" id="register" onclick="introduceChange(${pageUser.userNo})">등록</button>
								</c:if>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<div class="mypage-menu-container">
				<div class="mypage-menu">
					<c:if test="${pageUser.userNo == loginUser.userNo }">
						<div class="center menu-title menu" onclick="view('shopList.do')">상품</div>
						<div class="center menu-title menu" onclick="viewReview('getReviewList.do')">후기</div>
						<div class="center menu-title menu" onclick="view('favoriteList.do')">찜</div>
					</c:if>
					
					
					<c:if test="${pageUser.userNo != loginUser.userNo }">
						<div class="center1 menu-title1 menu1" onclick="view('shopList.do')">상품</div>
						<div class="center1 menu-title1 menu1" onclick="viewReview('getReviewList.do')">후기</div>
					</c:if>
				</div>
				<!-- product를 감싸는 div -->
				<div class="menu-contents">
					<!-- ajax div -->
					<div class="userpage" id="userpage"></div>
					<!-- 페이지네이션 -->
					<div class="pagination" id="pagination"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>