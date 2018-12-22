$(function() {
	
	  $("#header-spanLogin").click(function(event){  //팝업 Open 버튼 클릭 시 
		  
          $("#loginPopup-popupDiv").css({
             "top": (($(window).height()-$("#loginPopup-popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
             "left": (($(window).width()-$("#loginPopup-popupDiv").outerWidth())/2+$(window).scrollLeft())+"px",
             "right": (($(window).width()-$("#loginPopup-popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
             //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
          
          }); 
         
         $("#loginPopup-popup_mask").css("display","block"); //팝업 뒷배경 display block
         $("#loginPopup-popupDiv").css("display","block"); //팝업창 display block
          
         $("body").css("overflow","hidden");//body 스크롤바 없애기
     });
     
     $("#loginPopup-popCloseImg").click(function(event){
         $("#loginPopup-popup_mask").css("display","none"); //팝업창 뒷배경 display none
         $("#loginPopup-popupDiv").css("display","none"); //팝업창 display none
         $("body").css("overflow","auto");//body 스크롤바 생성
     });
	
});
