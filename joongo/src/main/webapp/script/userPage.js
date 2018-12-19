var SUPEREPICFANTASTICITEM;
var SUPEREPICFANTASTICPRODUCTPERPAGE = 10;
var SUPEREPICFANTASTICLENGTH;
var SUPEREPICFANTASTICURL;

function pagination() {
	/* 페이지네이션 버튼 생성  */
	$('#pagination').pagination({
		items: Object.values(SUPEREPICFANTASTICITEM).length,
		itemsOnPage: SUPEREPICFANTASTICPRODUCTPERPAGE,
		cssStyle: 'light-theme',
		/* 번호를 눌렀을 때 */
		onPageClick: function(pageNumber) {
			var start = (pageNumber - 1)* SUPEREPICFANTASTICPRODUCTPERPAGE;
			var end = start + SUPEREPICFANTASTICPRODUCTPERPAGE;
			if(end > SUPEREPICFANTASTICLENGTH){
				end = SUPEREPICFANTASTICLENGTH;
			}
			
			$('#userpage').empty();
			
			/* 10개씩 출력 */
			if(SUPEREPICFANTASTICURL == 'shopList.do' || SUPEREPICFANTASTICURL == 'favoriteList.do') {
				for(var i=start; i<end; i++){
					var product = SUPEREPICFANTASTICITEM[i];
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
					
					$('#userpage').append(text);
				}
			} else if (SUPEREPICFANTASTICURL == 'getReviewList.do') {
				var addreview = "<div class='product-review none' id='product-review'>"+
					"<textarea class='review'></textarea>"+
					"<button class='review-btn'>등록</button>"+
					"</div>";
				
				$('#userpage').append(addreview);
				for(var i=start; i<end; i++){
					var review = SUPEREPICFANTASTICITEM[i];
					var text = "<div class='productuser-review'>"+
					"<div class='user-review-container'>"+
					"<span>"+review.name+"</span>"+
					"<span>"+review.wdate+"</span>"+
						"<p class='user-review'>"+review.content+"</p>"+
							"</div>"+
					"</div>";
					$('#userpage').append(text);
				}
			}
        },
        /* 첫 화면 10개 출력 */
        onInit: function() {
        	
        	$('#userpage').empty();
        	var end;
        	
        	if(SUPEREPICFANTASTICLENGTH <= 10) {
        		end = SUPEREPICFANTASTICLENGTH;
        	} else if(SUPEREPICFANTASTICLENGTH > 10) {
        		end = 10;
        	} else {
        		alert('가져올 수 없습니다.');
        	}
        	
        	if(SUPEREPICFANTASTICURL == 'shopList.do' || SUPEREPICFANTASTICURL == 'favoriteList.do') {
	        	for(var i=0; i<end; i++) {
					var product = SUPEREPICFANTASTICITEM[i];
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
					
					$('#userpage').append(text);
	        	}
			}  else if (SUPEREPICFANTASTICURL == 'getReviewList.do') {
				var addreview = "<div class='product-review none' id='product-review'>"+
				"<textarea class='review'></textarea>"+
				"<button class='review-btn'>등록</button>"+
				"</div>";
			
				$('#userpage').append(addreview);
				for(var i=start; i<end; i++){
					var review = SUPEREPICFANTASTICITEM[i];
					var text = "<div class='productuser-review'>"+
					"<div class='user-review-container'>"+
					"<span>"+review.name+"</span>"+
					"<span>"+review.wdate+"</span>"+
						"<p class='user-review'>"+review.content+"</p>"+
							"</div>"+
					"</div>";
					$('#userpage').append(text);
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
			SUPEREPICFANTASTICITEM = data.products;
			console.log(data);
			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICITEM).length;
			SUPEREPICFANTASTICURL = url;
			
			$('#userpage').empty();
			$('#pagination').empty();
			
			/* 아무것도 없을 시 */
			if(url == 'shopList.do') {
				if(SUPEREPICFANTASTICLENGTH == 0) {
					$('#userpage').append('<div style="text-align: center; line-height: 654px;">판매 중인 상품이 없습니다.</div>');
				} else if (SUPEREPICFANTASTICLENGTH > 0) {
					pagination();
				}
			}
			
			if(url == 'favoriteList.do') {
				if(SUPEREPICFANTASTICLENGTH == 0) {
					$('#userpage').append('<div style="text-align: center; line-height: 654px;">찜한 상품이 없습니다.</div>');
				} else if (SUPEREPICFANTASTICLENGTH > 0) {
					pagination();
				}
			}
		},
		error: function(error) {
			alert('가져올 수 없습니다.');
		}
	})
}

function viewReview(pageNo, url) {
	$.ajax({
		url: url,
		dataType: 'json',
		data: {
			"pageNo": pageNo
		},
		success: function(data) {
			console.log(data);
			SUPEREPICFANTASTICITEM = data.reviewList;
			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICITEM).length;
			SUPEREPICFANTASTICURL = url;
			
			$('#userpage').empty();
			$('#pagination').empty();
			
			if(url == 'getReviewList.do') {
				if(SUPEREPICFANTASTICLENGTH == 0) {
					$('#userpage').append("<div class='product-review none' id='product-review'>"+
							"<textarea class='review' id='review'></textarea>"+
							"<button class='review-btn'>등록</button>"+
							"</div>");
					$('#userpage').append('<div style="text-align: center; line-height: 654px;">후기가 없습니다.</div>');
				} else if (SUPEREPICFANTASTICLENGTH > 0) {
					pagination();
				}
			}
		},
		error: function(error) {
			console.log(error.responseText);
		}
	})
}

$(function() {
	
	// 후기추가
	$('.review-btn').click(function() {
		var review = $('#review').val();
		
		$.ajax({
			url: 'addReview.do',
			data:
		})
	});
	
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