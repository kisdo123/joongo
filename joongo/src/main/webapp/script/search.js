var SUPEREPICFANTASTICPRODUCTS;
var SUPEREPICFANTASTICPRODUCTPERPAGE = 20;
var SUPEREPICFANTASTICLENGTH;
var SUPEREPICFANTASTICURL;
var address = window.location.href;
var catNo = address.substr(address.indexOf('=')+1);

function tag() {
	// tag #추가
	$('.product-tag').each(function() {
		var tag = $(this).text();
		var ctag = '';

		if (tag != '태그없음') {
			let stag = tag.split(',');
			for (let i = 0; i < stag.length; i++) {
				ctag += '#' + stag[i] + ' ';
			}
			console.log(ctag)
			$(this).text(ctag);
		}
	})
}

function conditCss() {
	$(".product-condit:contains('판매완료')").css({"color": "#e81e22", "font-weight" : "bolder"});
	$(".product-condit:contains('판매중')").css({"color": "#0043ffd1", "font-weight" : "bolder"});
}

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
			if(SUPEREPICFANTASTICLENGTH <= 0) {
				$('#products').append('<div class="nosearch">검색결과가 없습니다.</div>')
			} else if (SUPEREPICFANTASTICLENGTH > 0) {
				pagination();
			}
		
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
				"<div class='product-tag'>"+((product.tags == '') ? '태그없음' : product.tags) +"</div>"+
				"<div class='product-condit'>"+ product.condit +"</div>"+
				"</div>"+
				"</div>";
				$('#products').append(text);
			}
			tag();
			conditCss();
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
				"<div class='product-tag'>"+((product.tags == '') ? '태그없음' : product.tags) +"</div>"+
				"<div class='product-condit'>"+ product.condit +"</div>"+
				"</div>"+
				"</div>";
				
				$('#products').append(text);	
			}
        	tag();
        	conditCss();
        }
	});
}