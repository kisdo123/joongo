$(function() {
	$('#report').click(function() {
		var select = $('#reason > option:selected').val();
		var text = $('#report-content').val();
		var checked = true;
		
		if(text.trim() == "") {
			alert("신고 내용을 입력하세요");
			checked = false;
		} else {
			checked = true;
		}
		
		if(checked) {
			alert("신고되었습니다");
			$('#form')[0].submit();
		}
	});
	
	// textarea 글자수 제한
	$('#report-content').keyup(function() {
		var frm = $('#report-content'); 
		console.log(frm.val().length);
		if(frm.val().length > 100){  
			alert("100자로 제한됩니다.");
	        frm.val(frm.val().substr(0,100));  
	        frm.focus();
		}
	});
	
	
	
	
	
	
});