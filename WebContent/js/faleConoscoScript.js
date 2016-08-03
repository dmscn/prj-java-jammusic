function msg(txt, e) {
	alert(txt);
	e.focus();
	return false;
}

function validacao() {
	var f = document.form_contate;	
		if(f.txtNome.value == "") {
			alert ("O preenchimento do campo Nome é obrigatório!", f.txtNome);
			form.txtNome.focus();
			return false;
	}
		if(f.txtEmail.value == "") {
			alert ("O preenchimento do campo E-mail é obrigatório!", f.txtEmail);
			form.txtEmail.focus();
			return false;
	}
		if(f.txtTelefone.value == "") {
			alert ("O preenchimento do campo Assunto é obrigatório!", f.txtTelefone);
			form.txtTelefone.focus();
			return false;
	}
		if(f.txtComment.value == "") {
			alert ("O preenchimento do campo Comentarios é obrigatório!", f.txtComment);
			form.txtComment.focus();
			return false;
	}
		
		
	f.submit();	
			
	}
