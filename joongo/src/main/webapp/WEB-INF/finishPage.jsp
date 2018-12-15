<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${loginFilter }">
		<script>
			alert("로그인이 필요한 서비스입니다.");
			location.href="/joongo/main.do";
		</script>
	</c:if>
	<c:if test="${loginFail }">
		<script>
			alert("로그인에 실패하였습니다. 아이디와 비밀번호를 확인해 주세요");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${registerFail }">
		<script>
			alert("회원가입에 실패하였습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${deleteFail }">
		<script>
			alert("삭제에 실패하였습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${updateFail }">
		<script>
			alert("수정에 실패하였습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${writeFail }">
		<script>
			alert("글 등록에 실패하였습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${notAuth }">
		<script>
			alert("권한이 없습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${addFavoFail }">
		<script>
			alert("장바구니 등록에 실패하였습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${delFavoFail }">
		<script>
			alert("장바구니 삭제에 실패하였습니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${userExist }">
		<script>
			alert("이미 존재하는 유저입니다");
			location.href='${ret }';
		</script>
	</c:if>

	<c:if test="${userNotFound }">
		<script>
			alert("유저를 찾을 수 없습니다");
			location.href='${ret }';
		</script>
	</c:if>
	
	<c:if test="${passwordNotMatch }">
		<script>
			alert("아이디 또는 비밀번호가 일치하지 않습니다.");
			location.href='${ret }';
		</script>
	</c:if>

</body>
</html>