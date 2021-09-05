$(function() {
	
  $('#searchidpw').click(function() {
		$.ajax({
			type:'post',
			url: 'searchidpwform',
			success:function(resultPage) {
				$('#titleArea').html("아이디/비밀번호 찾기");
				$('#resultArea').html(resultPage);
			},
			error:function() {
				$('#resultArea').html("searchidpw Error");
			}
		}); //ajax
  }); //ajoinf_click		

	$("#signup").click(function(){
		$.ajax({
			type:'post',
			url:'signupform',
			success:function(resultPage){
				$('#titleArea').html("회원가입");
				$('#resultArea').html(resultPage);
			},
			error:function(){
				$('#resultArea').html("signup Error");
			}
		})//ajax
	});//serarchidpw
	
	
	
}); // ready
