var SUPEREPICFANTASTICPRODUCTS;
var SUPEREPICFANTASTICPRODUCTPERPAGE = 10;
var SUPEREPICFANTASTICLENGTH;
var SUPEREPICFANTASTICURL;

function pagination() {
	/* 페이지네이션 버튼 생성  */
	$('#pagination').pagination({
		items: Object.values(SUPEREPICFANTASTICPRODUCTS).length,
		itemsOnPage: SUPEREPICFANTASTICPRODUCTPERPAGE,
		cssStyle: 'light-theme',
		/* 번호를 눌렀을 때 */
		onPageClick: function(pageNumber) {
			var start = (pageNumber - 1)* SUPEREPICFANTASTICPRODUCTPERPAGE;
			var end = start + SUPEREPICFANTASTICPRODUCTPERPAGE;
			if(end > SUPEREPICFANTASTICLENGTH){
				end = SUPEREPICFANTASTICLENGTH;
			}
			$('#product-package').empty();
			$('#zzim-package').empty();
			
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
				if(SUPEREPICFANTASTICURL == 'shopList.do') {
					$('#product-package').append(text);
				} else if(SUPEREPICFANTASTICURL == 'favoriteList.do') {
					$('#zzim-package').append(text);
				}
			}
        },
        /* 첫 화면 10개 출력 */
        onInit: function() {
        	$('#product-package').empty();
			$('#zzim-package').empty();
        	var end;
        	
        	if(SUPEREPICFANTASTICLENGTH <= 10) {
        		end = SUPEREPICFANTASTICLENGTH;
        	} else if(SUPEREPICFANTASTICLENGTH > 10) {
        		end = 10;
        	} else {
        		alert('가져올 수 없습니다.');
        	}
        		
        	for(var i=0; i<end; i++){
				var product = SUPEREPICFANTASTICPRODUCTS[i];
				console.log(product)
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
				if(SUPEREPICFANTASTICURL == 'shopList.do') {
					$('#product-package').removeClass('none');
					$('#zzim-package').addClass('none');
					$('#product-review').addClass('none');
					$('#product-package').append(text);
				} else if(SUPEREPICFANTASTICURL == 'favoriteList.do') {
					$('#zzim-package').removeClass('none');
					$('#product-package').addClass('none');
					$('#product-review').addClass('none');
					$('#zzim-package').append(text);
				}
			}
        }
	});
}

/* 마이페이지 보기 */
function view(userNo, url) {
	$.ajax({
		url: url,
		dataType: 'json',
		data: {
			"userNo": userNo
		},
		success: function(data) {
			console.log(data);
			SUPEREPICFANTASTICPRODUCTS = data.products;
			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICPRODUCTS).length;
			SUPEREPICFANTASTICURL = url;
			
			/* 아무것도 없을 시 */
			if(url == 'shopList.do') {
				if(SUPEREPICFANTASTICLENGTH == 0) {
					$('#product-package').append('<div style="text-align: center; line-height: 654px;">판매 중인 상품이 없습니다.</div>');
				} else if (SUPEREPICFANTASTICLENGTH > 0) {
					pagination();
				}
			}
			
			if(url == 'favoriteList.do') {
				if(SUPEREPICFANTASTICLENGTH == 0) {
					$('#zzim-package').append('<div style="text-align: center; line-height: 654px;">찜한 상품이 없습니다.</div>');
				} else if (SUPEREPICFANTASTICLENGTH > 0) {
					pagination();
				}
			}
		},
		error: function(error) {
			console.log(error)
		}
	})
}

$(function() {
	// tag #추가
	$('.product-tag').each(function() {
		var tag = $(this).text();
		var ctag = ''; 
		
		if(tag != '태그없음') {
			let stag = tag.split(',');
			for(let i=0; i<stag.length; i++) {
				ctag += '#' + stag[i] + ' ';
			}
			
			$(this).text(ctag);
		}
	})
	
	/* 소개글 변경 눌렀을 시 textarea와 버튼을 생성 */
	$('#update').click(function() {
		var content = $('#introduce-content').text();
		var information = {
				'content': content
		};
		
		$('#introduce-content').css('display', 'none');
		$('#update').css('display', 'none');
		$('#introduce-modify').css('display', 'block');
		$('#register').css('display', 'block');
		
		$('#introduce-modify').val(content);
	});
	
	$('.menu').click(function() {
		var index = $('.menu').index(this);
		var sibling = $(this).siblings();
		
		$('.menu').each(function() {
			$(this).css('border', 'none');
		});
		
		if(index == 0) {
			$(this).css({
				'border-right': '2px solid red',
				'border-top': '2px solid red'
			});
			
			$(this).next().css({
				'border-top': '2px solid #e8e8e8',
				'border-right': '2px solid #e8e8e8'
			});
			$(this).next().next().css('border-top', '2px solid #e8e8e8');
		} else if(index == 1) {
			$(this).css({
				'border-top': '2px solid red',
				'border-right': '2px solid red',
				'border-left': '2px solid red'
			});
			
			$(this).prev().css('border-top', '2px solid #e8e8e8');
			$(this).next().css('border-top', '2px solid #e8e8e8');
		} else if(index == 2) {
			$(this).css({
				'border-top': '2px solid red',
				'border-left': '2px solid red'
			});
			
			$(this).prev().css({
				'border-top': '2px solid #e8e8e8',
				'border-left': '2px solid #e8e8e8'
			});
			$(this).prev().prev().css('border-top', '2px solid #e8e8e8');
		}
		
		for(let i = 0; i < sibling.length; i++) {
			sibling[i].style.borderBottom = "2px solid red";
		}
	});
	
	
	
	
	$('.menu1').click(function() {
		var index = $('.menu1').index(this);
		var sibling = $(this).siblings();
		
		$('.menu1').each(function() {
			$(this).css('border', 'none');
		});
		
		if(index == 0) {
			$(this).css({
				'border-right': '2px solid red',
				'border-top': '2px solid red'
			});
			
			$(this).next().css({
				'border-top': '2px solid #e8e8e8',
				'border-right': '2px solid #e8e8e8'
			});
			$(this).next().next().css('border-top', '2px solid #e8e8e8');
		} else if(index == 1) {
			$(this).css({
				'border-top': '2px solid red',
				'border-right': '2px solid red',
				'border-left': '2px solid red'
			});
			
			$(this).prev().css('border-top', '2px solid #e8e8e8');
			$(this).next().css('border-top', '2px solid #e8e8e8');
		} else if(index == 2) {
			$(this).css({
				'border-top': '2px solid red',
				'border-left': '2px solid red'
			});
			
			$(this).prev().css({
				'border-top': '2px solid #e8e8e8',
				'border-left': '2px solid #e8e8e8'
			});
			$(this).prev().prev().css('border-top', '2px solid #e8e8e8');
		}
		
		for(let i = 0; i < sibling.length; i++) {
			sibling[i].style.borderBottom = "2px solid red";
		}
	});
	
	
	
	
	
	
	
	
	
	
	
	$("#modifya").click(function(){
		$("#modifyForm")[0].submit();
	})
	
	$("#deletea").click(function(){
		$("#deleteUser")[0].submit();
	})
	
	
	// textarea 글자수 제한
	$('#introduce-modify').keyup(function() {
		var frm = $('#introduce-modify'); 
		if(frm.val().length > 100){  
			alert("100자로 제한됩니다.");
	        frm.val(frm.val().substr(0,100));  
	        frm.focus();
		}
	});
	//후기 등록 글자수 제한
	$(".review").keyup(function() {
		var frm = $(".review");
		if(frm.val().length > 100){  
			alert("100자로 제한됩니다.");
			frm.val(frm.val().substr(0,100));  
			frm.focus();
		};
	});
	
})

/* 소개글 변경 */
function introduceChange(userNo) {
	var content = $('#introduce-modify').val();
	
	$.ajax({
		url: 'introduceModify.do',
		data: {
			"content":content,
			"userNo":userNo
		},
		dataType: 'text',
		success: function() {
			$('#introduce-content').css('display', 'block');
			$('#update').css('display', 'block');
			$('#introduce-modify').css('display', 'none');
			$('#register').css('display', 'none');
			
			$('#introduce-content').text(content);
		},
		error: function(error) {
			alert('소개글 변경에 실패하였습니다.');
		}
	});
}