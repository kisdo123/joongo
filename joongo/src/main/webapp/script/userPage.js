var SUPEREPICFANTASTICPRODUCTS;
var SUPEREPICFANTASTICSTART = 0;
var SUPEREPICFANTASTICEND = 10;
var SUPEREPICFANTASTICLENGTH;

/* 자신의 상품리스트 보기 */
function viewProducts(userNo, url) {
	$.ajax({
		url: url,
		dataType: 'json',
		data: {
			"userNo": userNo
		},
		success: function(data) {
			SUPEREPICFANTASTICPRODUCTS = data;
			SUPEREPICFANTASTICLENGTH = Object.values(data.products).length;
			$("#product-package").html('');
			
			for(var i=0; i<SUPEREPICFANTASTICEND; i++){
				var product = SUPEREPICFANTASTICPRODUCTS.products[i];
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
				
				if(url == 'shopList.do') {
					$('#product-package').append(text);
				} else if(url == '') {
					
				}
			}
		},
		error: function(error) {
			console.log(error);
		}
	});
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
	
	$('.menu').click(function() {
		var index = $('.menu').index(this);
		var sibling = $(this).siblings();
		
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
		console.log('test');
		
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
	
});

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
			console.log(error);
			alert('소개글 변경에 실패하였습니다.');
		}
	}); 
}