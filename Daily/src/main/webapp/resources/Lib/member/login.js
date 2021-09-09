$(function() {
	

	$('#loginform').click(function(){
		$.ajax({
			type:"post",
			url:"loginform",
			success:function(resultPage) {
				$('#titleArea').html('로그인');
				$('#resultArea').html(resultPage);
			},
			error:function() {
				$('#resultArea').html("login Error");
			}
		}); //ajax
  	}); //aloginf_click 

		
	$('#findid').click(function() {
		$.ajax({
			type:'post',
			url: 'findidform',
			success:function(resultPage) {
				$('#titleArea').html("아이디 찾기");
				$('#resultArea').html(resultPage);
			},
			error:function() {
				$('#resultArea').html("findid Error");
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

	$("#changepw").click(function(){
		$.ajax({
			type:'post',
			url:'changepwform',
			success:function(resultPage){
				$('#titleArea').html("비밀번호 찾기");
				$('#resultArea').html(resultPage);
			},
			error:function(){
				$('#resultArea').html("signup Error");
			}
		})//ajax
	});//serarchidpw








}); // ready
