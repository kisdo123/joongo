<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/search.css">
<link rel="stylesheet" type="text/css" href="/joongo/css/userPage.css">
<script type="text/javascript" src="/joongo/script/search.js?2"></script>
<script type="text/javascript" src="/joongo/script/pagination.js"></script>
<link rel="stylesheet" type="text/css" href="/joongo/css/simplePagination.css">
<jsp:include page="/particular/header.jsp"></jsp:include>
	<script type="text/javascript">
		window.onload = function() {
			search('${word}');
		}
	</script>
<div id="container" class="container">
	<div class="w1200">
		<div class="middle" id="middle2">
			
			<div class="category">
				<div class="category-info">
					<span class="search-word">${word}</span>
					<span class="search">검색결과 </span>
				</div>
				<div id="products" class="product-container"></div>
			</div>
			<div class="pagination" id="pagination"></div>
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>