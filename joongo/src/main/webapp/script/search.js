var SUPEREPICFANTASTICPRODUCTS;
var SUPEREPICFANTASTICPRODUCTPERPAGE = 20;
var SUPEREPICFANTASTICLENGTH;
var SUPEREPICFANTASTICURL;
var address = window.location.href;
var catNo = address.substr(address.indexOf('=')+1);

$(function(){
	
	// 카테고리 하나를 기본으로 잡아놓음
	$('.category-button').first().css({
		"border-color": "#f64448",
		"background-color": "#f64448",
		"color": "white"
	});
	
	// 맨 위로
	$('.up').click(function() {
		$('html').scrollTop(0);
	});
	
	// 맨 아래로
	$('.down').click(function() {
		$('html').scrollTop($(document).height());
	});
	
	
})


/*카테고리 전체보기*/
function search(word, url){
	$.ajax({
		type:"GET",
		url:"getSearchProducts.do",
		data:{
			"word":word
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
};
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
				"<div class='product-img-container'>"+
				"<a href='productInfo.do?proNo="+product.proNo+"'>"+
				((product.image.length > 0)?
					"<img src='"+product.image[0].imagePath+"' class='product-img'>"
				:
					"<img src='/joongo/image/no-image.jpg' class='product-img'>")
				+"</a>"+
				"</div>"+
				"<div class='product-info'>"+
				"<div class='product-title'>"+
				"<a href='#'>"+product.title+"</a>"+
				"</div>"+
				"<div class='product-price'>"+product.price+"</div>"+
				"<div class='product-tag'>"+product.tags+"</div>"+
				"<div class="
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
        	}
        		
        	for(var i=0; i<end; i++){
				var product = SUPEREPICFANTASTICPRODUCTS[i];
				var text = "<div class='product'>"+
				"<div class='product-img-container'>"+
				"<a href='productInfo.do?proNo="+product.proNo+"'>"+
				((product.image.length > 0)?
					"<img src='"+product.image[0].imagePath+"' class='product-img'>"
				:
					"<img src='/joongo/image/no-image.jpg' class='product-img'>")
				+"</a>"+
				"</div>"+
				"<div class='product-info'>"+
				"<div class='product-title'>"+
				"<a href='#'>"+product.title+"</a>"+
				"</div>"+
				"<div class='product-price'>"+product.price+"</div>"+
				"<div class='product-tag'>"+product.tags+"</div>"+
				"</div>"+
				"</div>";
				
				$('#products').append(text);
				
			}
        }
	});
}