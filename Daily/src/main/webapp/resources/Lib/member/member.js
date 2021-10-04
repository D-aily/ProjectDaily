$(function() {
	//location.reload(); 
	
	$('.deleteBtn').click(function(){
		var wlnum = $(this).attr('id');
		var id = session.getAttribute("loginInfo");
		$.ajax({
			type:'Post',
			url:'wishlistdeleteone',
			data:{
				id:id,
				wlnum:wlnum
			},
			success:function(resultPage){
				$('#contentArea').html(resultPage); 
			},
			error:function(){
				alert('error');
			}
		});	
	});

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
			success:function(resultData){
				alert(resultData.message);
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
	
	// Page -----------------------------------------------
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

	// 위시리스트 page 이동
	$('#wishlistpage').click(function(){
		$.ajax({
			type:'Post',
			url:'wishlistpage',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		}); //ajax
	});	

	//비밀번호 변경 page
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
