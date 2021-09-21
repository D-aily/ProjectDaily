$(function() {
	//location.reload(); 
	
	

	
	//비밀번호 변경변경
	$('#info_pwchange').click(function(){
		$.ajax({
			type:'Post',
			url:'changepw',
			data: {
				id:$('#id').val(),
				phone:$('#phone').val(),
				name:$('#name').val(),
				pw:$('#pw').val()
				},
			success:function(){
				alert('비밀번호 변경 완료.');
				location.reload(); 
			},
			error:function(){
				alert('error');
			}
		});	
	});
	//개인정보 변경변경
	$('#info_change').click(function(){
		$.ajax({
			type:'Post',
			url:'info_change',
			data: {
				id:$('#id').val(),
				phone:$('#phone').val(),
				address:$('#address').val()},
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		});	
	});
	
	
	// page -----------------------------------------------
	//개인정보 변경 page
	$('#info_change_page').click(function(){
		$.ajax({
			type:'Post',
			url:'info_change_page',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		});//ajax
	});//address_change
	
	//개인정보확인/수정 page
	$('#infopage').click(function(){
		$.ajax({
			type:'Post',
			url:'minfopage',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		}); //ajax
	}); //infopage	

	//비밀번호 변경
	$('#info_pwchange_page').click(function(){
		$.ajax({
			type:'Post',
			url:'info_pwchange_page',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		}); //ajax
	});	



}); // ready
