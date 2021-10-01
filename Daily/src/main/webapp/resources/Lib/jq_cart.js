
// Delete 버튼
$(function() {
	$("#btnDelete").click(function() {
		if(confirm("장바구니를 비우시겠습니까?")){
			$.ajax({
				type: "Get",
				url: "deleteAll",
				success:function(resultData){
				 	if(resultData.success == 'T'){
				 		alert("장바구니 상품이 삭제 되었습니다.");
				 		location.reload();
				 	}else{
				 		alert("상품 삭제 실패. 다시 시도해 주세요!");
				 	}
				},
				error:function(errorPage){
					alert("잠시후 다시 이용해 주세요.");
					$("#errortest").html(errorPage);
				}
			}); //ajax
		  }//if confirm
		});//click
/*		
	$("#btnCart").click(function() {
		if(confirm("장바구니에 담으시겠습니까?")){
			$.ajax({
				type:"Get",
				url:"addCart",
				success:function(resultData){
					if(resultData.success == 'T'){
						if(confirm("장바구니로 이동하시겠습니까?")){
							location.href("cartlist");
						}
					}else if(resultData.success == 'F'){
						alert("장바구니 담기가 실패 하였습니다.");
						
					}else{
						alert("로그인 후 이용하세요!");
						location.href("mlogin");
					}
				},
				error:function(){
					alert("서버 오류 잠시후 이용해 주시기 바랍니다.");
				}
			});//ajax
		}//if_confirm
	});//btnCart	
		
	*/	
		
});//ready

//Update 버튼
function btnUpdate(i) {
	$.ajax({
		type:"Get",
		url:"updateCart",
		data:{
			quantity:$("#quantity"+i).val(), //컬럼명이 vo에 같은이름이 있으면 
			cartnum:$("#cartnum"+i).html()
			},
		success:function(resultData){
			if(resultData.success=='T'){
				alert("수량이 수정되었습니다.");
				location.reload();
			}else{
				alert("수정오류 다시 시도 해주세요.");
			}
		},	
		error:function(){
			alert("잠시후 다시 이용해 주세요.")
		}	
	});//ajax
	
}//btnUpdate