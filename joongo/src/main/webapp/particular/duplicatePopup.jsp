<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${param.type== 'id'}">
	<c:if test="${param.res=='true' }">
		이미 존재하는 아이디입니다.
	</c:if>
	<c:if test="${param.res=='false' }">
		사용 가능한 아이디입니다.
	</c:if>
</c:if>
<c:if test="${param.type== 'phone'}">
	<c:if test="${param.res=='true' }">
		이미 존재하는 전화번호입니다.
	</c:if>
	<c:if test="${param.res=='false' }">
		사용 가능한 전화번호입니다.
	</c:if>
</c:if>
</body>
</html>