<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/particular/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/joongo/css/categoryList.css">
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
		<div class="middle">
			
			<div class="category">
				<p class="category-info">
					<span><input value="검색결과" readonly class="category-title"></span>
				</p>
				<div id="products" class="product-container"></div>
			</div>
			<div class="pagination" id="pagination"></div>
			<jsp:include page="/particular/sideMenu.jsp"></jsp:include>
		</div>
	</div>
</div>
<jsp:include page="/particular/footer.jsp"></jsp:include>