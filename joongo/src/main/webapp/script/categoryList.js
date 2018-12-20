var SUPEREPICFANTASTICPRODUCTS;
var SUPEREPICFANTASTICPRODUCTPERPAGE = 20;
var SUPEREPICFANTASTICLENGTH;
var SUPEREPICFANTASTICURL;
var address = window.location.href;
var catNo = address.substr(address.indexOf('=')+1);

$(function(){
	
//	$.ajax({
//		url: 'getCatList.do',
//		dataType: 'json',
//		data: {
//			"catNo": catNo
//		},
//		success: function(data) {
//			console.log(data);
//			SUPEREPICFANTASTICPRODUCTS = data.products;
//			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICPRODUCTS).length;
////			pagination();
//		},
//		error: function(error) {
//			console.log(error)
//		}
//	})
	
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

/*카테고리 버튼 클릭하여 보여주기*/
function selectCat(catNo){
	$.ajax({
		type:"Post",
		url:"getCatList.do",
		data:{
			"catNo": catNo
		},
		dataType:"json",
		success: function(list){
			$('#products').empty();
			SUPEREPICFANTASTICPRODUCTS = list.products;
			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICPRODUCTS).length;
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
				
				pagination();
			}
		
		},error: function(error){
			console.log(error);
			alert("에러가 발생했습니다.");
		}
		
	})
}
/*카테고리 전체보기*/
$(document).ready(function(){
	$(".category-button").each(function(){
		$(this).css({
			"border-color": "#e8e8e8",
			"background-color": "white",
			"color": "black"
		});
	});
	
	$(".category-button:nth-child("+ catNo +")").css({
		"border-color": "#f64448",
		"background-color": "#f64448",
		"color": "white"
	});
	var category = $(".category-button:nth-child("+ catNo +")").text();
	$(".category-title").val(category);
	
	$.ajax({
		type:"GET",
		url:"getCatList.do",
		data:{
			"catNo":catNo
		},
		dataType:"json",
		success: function(list){
			$('#products').empty();
			SUPEREPICFANTASTICPRODUCTS = list.products;
			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICPRODUCTS).length;
			pagination();
		
		},error: function(error){
			alert("에러가 발생했습니다.");
		}
	})
})
//카테고리 페이징

function pagination() {
	/* 페이지네이션 버튼 생성  */
	$('#pagination').pagination({
		items: Object.values(SUPEREPICFANTASTICPRODUCTS).length,
		itemsOnPage: SUPEREPICFANTASTICPRODUCTPERPAGE,
		cssStyle: 'light-theme',
		/* 번호를 눌렀을 때 */
		onPageClick: function(pageNumber) {
			$('#products').empty();
			var start = (pageNumber - 1)* SUPEREPICFANTASTICPRODUCTPERPAGE;
			var end = start + SUPEREPICFANTASTICPRODUCTPERPAGE;
			if(end > SUPEREPICFANTASTICLENGTH){
				end = SUPEREPICFANTASTICLENGTH;
			}
			
			/* 10개씩 출력 */
			for(var i=start; i<end; i++){
				var product = SUPEREPICFANTASTICPRODUCTS[i];
				var text = "<div class='product'>"+
				"<div class='product-img-container'>" +
				"<a href='productInfo.do?proNo="+ product.proNo +"'><img src='"+((product.image.length==0)?'/joongo/image/no-image.jpg':product.image[0].imagePath) +"'"+
				"class='product-img'>"+
				"</a>"+
				"</div>"+
				"<div class='product-info'>"+
				"<div class='product-title'>"+
				"<a href='productInfo.do?"+product.proNo+"'>"+product.title+"</a>"+
				"</div>"+
				"<div class='product-price'>"+product.price+"</div>"+
				"<div class='product-tag'>"+((product.tags == '') ? '태그없음' : product.tags) +"</div>"+
				"</div>"+
				"</div>";
				
				$('#products').append(text);
			}
        },
        /* 첫 화면 10개 출력 */
        onInit: function() {
        	$('#products').empty();
        	var end;
        	
        	if(SUPEREPICFANTASTICLENGTH <= 20) {
        		end = SUPEREPICFANTASTICLENGTH;
        	} else if(SUPEREPICFANTASTICLENGTH > 20) {
        		end = 20;
        	} else {
        		console.log(SUPEREPICFANTASTICLENGTH);
        	}
        		
        	for(var i=0; i<end; i++){
				var product = SUPEREPICFANTASTICPRODUCTS[i];
				var text = "<div class='product'>"+
				"<div class='product-img-container'>" +
				"<a href='productInfo.do?proNo="+ product.proNo +"'><img src='"+((product.image.length==0)?'/joongo/image/no-image.jpg':product.image[0].imagePath) +"'"+
				"class='product-img'>"+
				"</a>"+
				"</div>"+
				"<div class='product-info'>"+
				"<div class='product-title'>"+
				"<a href='productInfo.do?"+product.proNo+"'>"+product.title+"</a>"+
				"</div>"+
				"<div class='product-price'>"+product.price+"</div>"+
				"<div class='product-tag'>"+((product.tags == '') ? '태그없음' : product.tags) +"</div>"+
				"</div>"+
				"</div>";
				
				$('#products').append(text);
				
			}
        }
	});
}
