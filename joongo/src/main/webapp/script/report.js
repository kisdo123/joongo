$(function() {
	
	$('#report').click(function() {
		var name = $('#userName').val();
		var nickname = $('#userNickname').val();
		var checked = true;
		
		var dbname = "";
		var dbnickname = "";
		
		$.ajax({
			url: '',
			data: userId,
			dataType: 'json',
			success: function(data) {
				
			}
		})
		
	})
	
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