<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
	#signupPopup{
		border-radius: 5px;
		width: 221px;
    	height: 48px;
		background: #FE8181;
		text-align: center;
    	line-height: 45px;
	}
	#signupPopup a{
		text-decoration: none;
	    color: white;
	}
</style>
</head>
<body class="text-center" oncontextmenu="return false"
	ondragstart="return false" onselect="return false">
	<button id="popOpenBtn">Popup Open</button>

	<div id="popup_mask"></div>
	<!-- 팝업 배경 DIV -->

	<div id="popupDiv">
		<!-- 팝업창 -->

		<img class="loginImg" src="/joongo/image/2.png"> <img
			id="popCloseImg" src="/joongo/image/4.png">
		<div id="popupTitle">중고장터로 중고거래 시작하기</div>
		<div id="popupText">
			로그인하고 빠르고 안전하게 중고거래를 시작하세요!<br> 단 15초면 회원가입 완료!
			<div id="LoginAPI">
				<a id="kakao-login-btn"></a> <a
					href="http://developers.kakao.com/logout"></a>
			</div>
			<div id="signupPopup">
				<a href="#">회원가입</a>
			</div>
			<!-- <div id="registerNormal">
				<a id="normal-login-btn"></a> <a href="registerForm.do"></a>
			</div> -->
		</div>
		
	</div>
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('5e7ba7b367a3ddeee8bfc6511796f9b2');

		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {

				// 로그인 성공시, API를 호출합니다.
				Kakao.API.request({
					url : '/v1/user/me',
					success : function(res) {
						console.log(res);

						var userID = res.id; //유저의 카카오톡 고유 id
						var userEmail = res.kaccount_email; //유저의 이메일
						var userNickName = res.properties.nickname; //유저가 등록한 별명

						console.log(userID, userEmail, userNickName, Phone);

					},
					fail : function(error) {
						alert(JSON.stringify(error));
					}
				});
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
		//]]>
	</script>

</body>
</html>