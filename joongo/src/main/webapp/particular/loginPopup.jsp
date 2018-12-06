<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<div id="loginPopup-popup_mask"></div>
<!-- 팝업 배경 DIV -->

<div id="loginPopup-popupDiv">
	<!-- 팝업창 -->

	<img id="loginPopup-loginImg" src="/joongo/image/logo100.png"> <img
		id="loginPopup-popCloseImg" src="/joongo/image/loginCloseBtn.png">
	<div id="loginPopup-popupTitle">중고장터로 중고거래 시작하기</div>
	<div id="loginPopup-popupText">
		로그인하고 빠르고 안전하게 중고거래를 시작하세요!<br> 단 15초면 회원가입 완료!
		<div id ="loginPopup-loginAPI">
			<a id="kakao-register-btn"></a> <a
				href="http://developers.kakao.com/logout"></a>
		</div>

	</div>
	<div>
		<form action="login.do">
			<input class="loginPopup-loginInput" type="text" name="loginId"
				placeholder="아이디" required autofocus><br> <input
				class="loginPopup-loginInput" type="password" name="password" placeholder="비밀번호"
				required><br> <input type="submit"
				id="loginPopup-loginSubmit" value="로그인하기">
		</form>

	</div>
	<br>
</div>
<script type='text/javascript'>
	//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('5e7ba7b367a3ddeee8bfc6511796f9b2');
	
	// 카카오 로그인 버튼을 생성합니다.
	Kakao.Auth.createLoginButton({
		container : '#kakao-register-btn',
		success : function(authObj) {

			// 로그인 성공시, API를 호출합니다.
			Kakao.API.request({
				url : '/v1/user/me',
				success : function(res) {
					console.log(res);

					var userID = res.id; //유저의 카카오톡 고유 id

					location.href="login.do?loginId="+userID+"&password="+userID;
				},
				fail : function(error) {
					alert(JSON.stringify(error));
				}
			});
		},
		fail : function(err) {
			alert(JSON.stringify	(err));
		}
	});
	//]]>
</script>
