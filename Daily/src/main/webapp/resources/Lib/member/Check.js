function idCheck(){
	var id=$('#id').val();
	if (id.length<4) {
		$('#iMessage').html(' ~~ id 는 4글자 이상  입니다 ~~');
		return false;
	}else if (id.replace(/[a-z.0-9]/gi,'').length > 0) {
		$('#iMessage').html(' ~~ id 는 영문자, 숫자로만 입력 하세요 ~~');
		return false;
	}else {
		$('#iMessage').html('');
		return true;
	}
} //idCheck

function pwCheck(){
	var password=$('#pw').val();
	if (password.length<4) {
		$('#pMessage').html(' ~~ password 는 4글자 이상  입니다 ~~');
		return false;
	}else if (password.replace(/[!-*]/gi,'').length >= password.length ) {
		$('#pMessage').html(' ~~ password 는 특수문자가 반드시 1개 이상 포함되어야 합니다 ~~');
		return false;
	}else if (password.replace(/[a-z.0-9.!-*]/gi,'').length > 0) {
		$('#pMessage').html(' ~~ password 는 영문자, 숫자, 특수문자 로만 입력 하세요 ~~');
		return false;
	}else {
		$('#pMessage').html('');
		return true;
	}
} //pwCheck

//  password 재입력 동일성 확인
function pw2Check(){
	var password=$('#pw').val();
	var password2=$('#pw2').val();
	if (password != password2) {
		$('#p2Message').html('~~ password 가  다릅니다. 확인하세요  ~~');
		$('#password').focus();
		return false;
	}else {
		$('#p2Message').html('');
		return true;
	}
}
//***********************

function nmCheck() {
	var name=$("#name").val();
	if(name.length < 2){
		$('#nMessage').html(' Name 2글자 이상 입력하세요 ~~');
	    return false;
	}else if(name.replace(/[a-z.가-힇]/gi,'').length > 0 ){ //다음 확인
	   	$('#nMessage').html(' Name은 한글과 영문으로만 입력하세요 ~~');	
	    return false;
	}else {
	 	$('#nMessage').html('');
	   	return true;
	}
} //nmCheck

function bdCheck() {
	var birthd=$("#birthd").val();
	if(birthd.length != 10){
		$('#bMessage').html(' 생일은 YYYY-MM-DD 정확하게 입력하세요 ~~');
	    return false;
	}else {
	 	$('#bMessage').html('');
	   	return true;
	}
} //bdCheck 

function poCheck() {
	var point=$("#point").val();
	if ( $.isNumeric(point)==false ) {
		$('#oMessage').html(' ~~ point는 숫자로만 정확하게 입력 하세요 ~~ ');
		return false;
	}else if (point.replace(/[.]/g,'').length < point.length) {
		$('#oMessage').html(' ~~ point는 정수로만 정확하게 입력 하세요 ~~ ');
		return false;
	}else {
		$('#oMessage').html('');
		return true;
	}	
} //poCheck 

function weCheck() {
	var weight=$("#weight").val();
    if($.isNumeric(weight)==false){
    	$('#wMessage').html(' Weight는 숫자로만 입력하세요 ~~');
        return false;
    }else if ( parseFloat(weight)<20 || parseFloat(weight)>200){
    	$('#wMessage').html(' Weight가 범위를 초과합니다 ~~');
	    return false;
    }else {
	    $('#wMessage').html('');
	    return true;
	}
} //weCheck 
