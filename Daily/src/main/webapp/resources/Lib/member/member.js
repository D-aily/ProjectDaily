$(function() {
	
	//배송지 변경 page
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
	
/*	//개인정보 변경 페이지 이동
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
	});*/
	
	//개인정보확인/수정
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



	//배송지 확인 page
	$('#addresspage').click(function(){
		$.ajax({
			type:'Post',
			url:'addresspage',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		});//ajax
	});//addresspage
	
	//배송지 변경 page
	$('#address_change_page').click(function(){
		$.ajax({
			type:'Post',
			url:'address_change_page',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		});//ajax
	});//address_change

	//배송지 변경 실행
	$('#address_change').click(function(){
		$.ajax({
			type:'Post',
			url:'address_change',
			data:{
				id:$('#id').val(),
				address:$('#address').val()
			},
			success:function(resultPage, resultData){
				if (resultData.result='complete') {
					alert("배송지 변경 완료");
					location.reload(); 
					$('#contentArea').html(resultPage);
				} else {
					alert("배송지 변경 실패. 다시시도해 주세요");
					location.reload(); 
				}
			},
			error:function(){
				alert('error');
			}
		});//ajax
	});//address_change

}); // ready
