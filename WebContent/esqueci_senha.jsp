<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JamMusic</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/estilo.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/script.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $(window).resize(function(){
        var footerHeight = $('.footer').outerHeight();
        var stickFooterPush = $('.push').height(footerHeight);

        $('.wrapper').css({'marginBottom':'-' + footerHeight + 'px'});
      });

      $(window).resize();
    }); 
  </script>
</head>
<body>
  <div class="wrapper">
  <jsp:include page="menu.jsp" />
	<div class="container">

		<div class="col-md-offset-3 col-md-6">
      <form action="RecuperarSenha" method="post">
        <div class="form-group">
          <label for="email">Digite seu Email: </label>
          <input type="text" name="email" id="email" class="form-control" placeholder="Email">
        </div>
        <input type="submit" class="btn btn-danger form-control" value="Conferir">
      </form>

      <div id="alert-error" class="alert alert-danger">
        <strong>Erro!</strong> Este email não esta cadastrado.
      </div>
      <div id="alert-success" class="alert alert-success">
        <strong>Pronto!</strong> Enviamos um email de confirmação para você.
      </div>
		</div>

	</div>
		<div class="push"></div>
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>