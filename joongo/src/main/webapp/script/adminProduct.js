

function ableProduct(proNo, able){
	$.ajax({
		url : "updateAbleProduct.do",
		data : { "proNo" : proNo,
			"able" : able
		}, 
		success : function() { 
			alert("상품을 수정했습니다.");
			location.href="adminAllProducts.do";
		},
		error : function(error) {
			console.log(error); alert('상품 수정이 실패했습니다.');
		}
	}); 
}
