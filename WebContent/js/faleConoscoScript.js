function msg(txt, e) {
	alert(txt);
	e.focus();
	return false;
}

function validacao() {
	var f = document.form_contate;	
		if(f.txtNome.value == "") {
			alert ("O preenchimento do campo Nome � obrigat�rio!", f.txtNome);
			form.txtNome.focus();
			return false;
	}
		if(f.txtEmail.value == "") {
			alert ("O preenchimento do campo E-mail � obrigat�rio!", f.txtEmail);
			form.txtEmail.focus();
			return false;
	}
		if(f.txtTelefone.value == "") {
			alert ("O preenchimento do campo Assunto � obrigat�rio!", f.txtTelefone);
			form.txtTelefone.focus();
			return false;
	}
		if(f.txtComment.value == "") {
			alert ("O preenchimento do campo Comentarios � obrigat�rio!", f.txtComment);
			form.txtComment.focus();
			return false;
	}
		
		
	f.submit();	
			
	}
