$(function() {
	
	$('#infopage').click(function(){
		$.ajax({
			type:'Get',
			url:'minfopage',
			success:function(resultPage){
				$('#contentArea').html(resultPage);
			},
			error:function(){
				alert('error');
			}
		}); //ajax
	}); 	
	







}); // ready
