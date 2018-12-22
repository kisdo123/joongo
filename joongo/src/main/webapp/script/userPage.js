var SUPEREPICFANTASTICITEM;
var SUPEREPICFANTASTICPRODUCTPERPAGE = 10;
var SUPEREPICFANTASTICLENGTH;
var SUPEREPICFANTASTICURL;
var SUPEREPICFANTASTICUSERNO = 0;
var SUPEREPICFANTASTICPAGENO = 0;
var SUPEREPICFANTASTICNICKNAME = "";

function init(pageNo, userNo, nickname) {
	SUPEREPICFANTASTICPAGENO = pageNo;
	SUPEREPICFANTASTICUSERNO = userNo;
	SUPEREPICFANTASTICNICKNAME = nickname;
}

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
			$(this).text(ctag);
		}
	})
}

function conditCss() {
	$(".product-condit:contains('판매완료')").css({"color": "#e81e22", "font-weight" : "bolder"});
	$(".product-condit:contains('판매중')").css({"color": "#0043ffd1", "font-weight" : "bolder"});
}

function pagination() {
	/* 페이지네이션 버튼 생성 */
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
					"<div class='product-condit'>"+ product.condit +"</div>"+
					"</div>"+
					"</div>";
					
					$('#userpage').append(text);
				}
				tag();
				conditCss();
			} else if (SUPEREPICFANTASTICURL == 'getReviewList.do') {
				var addreview = "";
				
				if(SUPEREPICFANTASTICPAGENO != SUPEREPICFANTASTICUSERNO){
					addreview += "<div class='product-review none' id='product-review'>"+
					"<textarea class='review' id='review'></textarea>"+
					"<button class='review-btn' id='review-btn' onclick='addReview()>등록</button>"+
					"</div>";
				}
				
				$('#userpage').append(addreview);
				for(var i=start; i<end; i++){
					var review = SUPEREPICFANTASTICITEM[i];
					var text = "<div class='productuser-review'>"+
					"<div class='user-review-container'>"+
					"<span>"+review.nickname+"</span>"+
							"<span class='date'>"+review.wdate+"</span>"+
							"<div class='user-review-content'>"+
								"<p class='user-review'>"+review.content+"</p>"+
									"<p class='user-review-function'>" +
									"<span id='user-review-modify' class='user-review-modify'>수정  </span>"+
									"<span onclick='deleteReview()' class='user-review-delete'>삭제</span>"+
									"</p>" +
								"</div>"+
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
					"<div class='product-condit'>"+ product.condit +"</div>"+
					"</div>"+
					"</div>";
					
					$('#userpage').append(text);
	        	}
	        	tag();
	        	conditCss();
			}  else if (SUPEREPICFANTASTICURL == 'getReviewList.do') {
				var addreview = "";
				if(SUPEREPICFANTASTICPAGENO != SUPEREPICFANTASTICUSERNO){
					
					addreview += "<div class='product-review none' id='product-review'>"+
					"<textarea class='review' id='review'></textarea>"+
					"<button class='review-btn' id='review-btn' onclick='addReview()'>등록</button>"+
					"</div>";
				}
			
				$('#userpage').append(addreview);
				for(var i=0; i<end; i++){
					var review = SUPEREPICFANTASTICITEM[i];
					var text = "<div class='productuser-review'>"+
					"<div class='user-review-container'>"+
					"<input id='reviewNo' type='hidden' value='"+review.reviewNo+"'>" +
					"<span>닉네임 : "+review.nickname+"</span>"+
							"<span class='date'>"+ review.wdate+"</span>"+
							"<div class='user-review-content'>"+
								"<p class='user-review'>"+review.content+"</p>"+
									"<p class='user-review-function'>" +
									"<span id='user-review-modify' class='user-review-modify'>수정  </span>"+
									"<span id='user-review-delete' class='user-review-delete'>삭제</span>"+
									"</p>" +
								"</div>"+
							"</div>"+
					"</div>";
					$('#userpage').append(text);
				}
			}
        }
	});
}

/* 마이페이지 보기 */
function view(url) {
	$.ajax({
		url: url,
		dataType: 'json',
		data: {
			"userNo": SUPEREPICFANTASTICPAGENO
		},
		success: function(data) {
			SUPEREPICFANTASTICITEM = data.products;
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
		error: function() {
			alert('가져오는데 실패했습니다.');
		}
	})
}

function viewReview(url) {
	$.ajax({
		url: url,
		dataType: 'json',
		data: {
			"pageNo": SUPEREPICFANTASTICPAGENO
		},
		success: function(data) {
			SUPEREPICFANTASTICITEM = data.reviewList;
			SUPEREPICFANTASTICLENGTH = Object.values(SUPEREPICFANTASTICITEM).length;
			SUPEREPICFANTASTICURL = url;
			
			$('#userpage').empty();
			$('#pagination').empty();
			
			if(url == 'getReviewList.do') {
				if(SUPEREPICFANTASTICLENGTH == 0) {
					if(SUPEREPICFANTASTICUSERNO == SUPEREPICFANTASTICPAGENO){
						$('#userpage').append('<div style="text-align: center; line-height: 654px;">후기가 없습니다.</div>');
					}else{
						$('#userpage').append("<div class='product-review none' id='product-review'>"+
								"<textarea class='review' id='review'></textarea>"+
								"<button class='review-btn' id='review-btn' onclick='addReview()'>등록</button></div>");
						$('#userpage').append('<div style="text-align: center; line-height: 654px;">후기가 없습니다.</div>');
					}
				} else if (SUPEREPICFANTASTICLENGTH > 0) {
					pagination();
				}
			}
		},
		error: function() {
			alert("후기를 가져올 수 없습니다.");
		}
	})
}

 /**********\
    후기등록
 \**********/
function addReview() {
	
	var content = $('#review').val();
	$.ajax({
		url: 'addReview.do',
		data: {
			pageNo: SUPEREPICFANTASTICPAGENO,
			userNo: SUPEREPICFANTASTICUSERNO,
			nickname: SUPEREPICFANTASTICNICKNAME,
			content: content
		},
		success: function() {
			viewReview('getReviewList.do');
		},
		error: function(error) {
			alert('후기 등록에 실패했습니다.')
		}
	})
}

$(function() {
	var reviewNo = 0;
	
	// 리뷰 수정버튼 클릭
	$(document).on("click", ".user-review-modify", function() {
		var content = $(this).parent().prev().text();
		reviewNo = $(this).parent().parent().parent().find('input[type=hidden]').val();
		$(this).parent().parent().prepend('<button id="modify">수정</button>');
		$(this).parent().parent().prepend('<textarea id="reviewInput" class="reviewInput" required>'+ content +'</textarea>');
		$(this).parent().prev().remove();
		$(this).parent().remove();
	})
	
	// 수정 완료 버튼을 눌렀을 시
	$(document).on('click', '#modify', function() {
		var content = $('#reviewInput').val();
		
		$.ajax({
			url: 'updateReview.do',
			data: {
				reviewNo: reviewNo,
				content: content
			},
			success: function() {
				$('.user-review').css('display', 'block');
				$('.user-review-content > input').remove();
				$('.user-review-content > button').remove();
				
				viewReview('getReviewList.do');
			},
			error: function(error) {
				alert('수정에 실패했습니다.');
			}
		})
	})
	
	// 리뷰 삭제 버튼 클릭
	$(document).on("click", ".user-review-delete", function() {
		reviewNo = $(this).parent().parent().parent().find('input[type=hidden]').val();
		var success = false;
		$.ajax({
			url: 'deleteReview.do',
			data: {
				reviewNo: reviewNo,
			},
			success: function() {
				viewReview('getReviewList.do');
				success = true;
			},
			error: function() {
				alert('예기치 않은 오류가 발생했습니다.');
			},
			complete : function() {
				if(success) {
					alert("삭제했습니다.");
				}    
		    }
		})
	})
	
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
		
		$('#introduce-content').css('display', 'none');
		$('#update').css('display', 'none');
		$('#introduce-modify').css('display', 'block');
		$('#register').css('display', 'block');
		
		if(content != '소개글이 없습니다.') {
			$('#introduce-modify').val(content);
		}
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
	// 후기 등록 글자수 제한
	$(".review").keyup(function() {
		var frm = $(".review");
		if(frm.val().length > 100){  
			alert("100자로 제한됩니다.");
			frm.val(frm.val().substr(0,100));  
			frm.focus();
		};
	});
	// 후기 수정 글자수 제한
	$(document).on('keyup', '#reviewInput', function() {
		var frm = $("#reviewInput");
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
			
			if(content != '') {
				$('#introduce-content').text(content);
			} else {
				$('#introduce-content').text('소개글이 없습니다.');
			}
		},
		error: function(error) {
			alert('소개글 변경에 실패하였습니다.');
		}
	});
}