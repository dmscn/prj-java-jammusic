/* CUSTOM JS */

function getUrlParameter(sParam) {
	var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
	for (var i=0; i < sURLVariables.length; i++) {
    	var sParameterName = sURLVariables[i].split('=');
    	if (sParameterName[0] === sParam) {
        	return sParameterName[1];
    	}
	}
}

$(function showAlert() {
	var alert = getUrlParameter("alert");

	switch(alert) {
		case "email":
			$('#alert-email').slideDown();
			break;

		case "username":
			$('#alert-username').slideDown();
			break;

		case "all":
			$('#alert-all').slideDown();
			break;
		case "error":
			$('#alert-error').slideDown();
			break;
		case "success":
			$('#alert-success').slideDown();
			break;
	}
});
