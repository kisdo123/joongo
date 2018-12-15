$(function() {
	
	var oEditors = [];
	var textarea = $('#ir1');
	
	// 스마트 에디터를 만드는 함수
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : textarea[0],
		sSkinURI : "/joongo/se2/SmartEditor2Skin.html?6",
		fCreator : "createSEditor2"
	});
	
	// 3자리마다 콤마를 만드는 함수
	function addCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	// addCommas를 호출하면서 숫자만 입력가능하게 하는 함수
	$("#price").on("keyup", function() {
		$(this).val(addCommas($(this).val().replace(/[^0-9]/g,"")));
	});
	
	// 무결성 검사를 하는 함수
	$("#register").click(function(){
        
        oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
        var ir1 = $('#ir1').val();
        var checked = true;
        
        if ($('#title').val().trim() == '') {
        	$('#title').addClass('error');
        	$('#title').prop('placeholder', '제목을 입력해주세요');
        	$('#title').focus();
        	checked = false;
        }
        
        if($('#price').val().trim() == '') {
        	$('#price').addClass('error');
        	$('#price').prop('placeholder', '가격을 입력해주세요');
        	$('#price').focus();
        	checked = false;
        }
        
        // 문제 없을 시 submit 실행
        if(checked) {
        	$("#writefrm")[0].submit();
        }
    });
	
	
})