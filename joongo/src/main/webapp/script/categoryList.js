$(function(){
	
	// 마지막 line 클래스 없애기
	$('.line').last().remove();
	
	// 카테고리 하나를 기본으로 잡아놓음
	$('.category-button').first().css({
		"border-color": "#f64448",
		"background-color": "#f64448",
		"color": "white"
	});
	
	// 카테고리 버튼을 눌렀을 시 css 변경
	$('.category-button').click(function(){
		$(".category-button").each(function(){
			$(this).css({
				"border-color": "#e8e8e8",
				"background-color": "white",
				"color": "black"
			});
		});
		$(this).css({
			"border-color": "#f64448",
			"background-color": "#f64448",
			"color": "white"
		});
	})
	//카테고리 이름
	$('.category-button').click(function(){
		var category = $(this).text();
		$(".category-title").val(category);
	});
	
	// 맨 위로
	$('.up').click(function() {
		$('html').scrollTop(0);
	});
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').scrollTop($(document).height());
	});
	
	//페이지네이션
	$('.pageNum').click(function(){
		$(".pageNum").each(function(){
			$(this).css({
				"border-bottom":"none"
			});
		});
		$(this).css({
			"border-bottom":"2px solid red"
			});
	})
	
})

/*$(document).ready(function () {
	$("#category-button").trigger("click");
});
*/
function selectCat(catNo){
	console.log(catNo);
	$.ajax({
		type:"Post",
		url:"getCatList.do",
		data:{
			"catNo":catNo
		},
		dataType:"json",
		success: function(list){
			
			console.log(Object.values(list.products).length);
			$("#products").html('');
			
			for(var i=0; i<Object.values(list.products).length; i++){
				
				var product = list.products[i];
				var text = "<div class='product'>"+
								"<div class='product-img-container'>" +
									"<a href='#'> <img src='"+((product.image.length==0)?"/joongo/image/no-image.jpg":product.image[0].imagePath) +"'"+
										"class='product-img'>"+
									"</a>"+
								"</div>"+
								"<div class='product-info'>"+
									"<div class='product-title'>"+
										"<a href='productInfo.do?"+product.proNo+"'>"+product.title+"</a>"+
									"</div>"+
									"<div class='product-price'>"+product.price+"</div>"+
									"<div class='product-tag'>"+product.tags+"</div>"+
								"</div>"+
							"</div>";
				
				$("#products").append(text);
			}
		
		},error: function(error){
			console.log(error);
			alert("에러가 발생했습니다.");
		}
		
	})
}