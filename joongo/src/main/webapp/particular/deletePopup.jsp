<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="deletePopup-popup_mask"></div>
<!-- 팝업 배경 DIV -->

<div id="deletePopup-popupDiv">
	<!-- 팝업창 -->
	<img id="deletePopup-loginImg" src="/joongo/image/logo100.png">
	<img id="deletePopup-popCloseImg" src="/joongo/image/loginCloseBtn.png">
	<div id="deletePopup-popupTitle">해당 게시글을 삭제하시겠습니까?</div>
	
	<div id="deletePopup-popupBtn">
		<button id="deletePopup-deleteBtn" onclick="deleteProduct(${product.proNo })">삭제</button>
		<button id="deletePopup-cancelBtn">취소</button>
	</div>

</div>

