$(function() {
	
	  $(".productInfo-productdelete").click(function(event){  //팝업 Open 버튼 클릭 시 
		  
          $("#deletePopup-popupDiv").css({
             "top": (($(window).height()-$("#deletePopup-popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
             "left": (($(window).width()-$("#deletePopup-popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
             //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
          
          }); 
         
         $("#deletePopup-popup_mask").css("display","block"); //팝업 뒷배경 display block
         $("#deletePopup-popupDiv").css("display","block"); //팝업창 display block
          
         $("body").css("overflow","hidden");//body 스크롤바 없애기
     });
     
     $("#deletePopup-popCloseImg").click(function(event){
         $("#deletePopup-popup_mask").css("display","none"); //팝업창 뒷배경 display none
         $("#deletePopup-popupDiv").css("display","none"); //팝업창 display none
         $("body").css("overflow","auto");//body 스크롤바 생성
     });
	
     
     $("#deletePopup-cancelBtn").click(function(event){
         $("#deletePopup-popup_mask").css("display","none"); //팝업창 뒷배경 display none
         $("#deletePopup-popupDiv").css("display","none"); //팝업창 display none
         $("body").css("overflow","auto");//body 스크롤바 생성
     });
     
  
});


//글삭제 ajax
function deleteProduct(proNo){
	$.ajax({
		url : "delectProduct.do",
		data : { "proNo" : proNo }, 
		success : function() { 
			alert("글을 삭제했습니다.");
			location.href="main.do";
		},
		error : function(error) {
			console.log(error); alert('글 삭제가 실패했습니다.');
		}
	}); 
}
