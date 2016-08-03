<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modelo.Produto"%>
<%@ page import="dao.ProdutoDAO"%>
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
		<form class="col-md-8 col-md-push-2" action="InsereContato" method="post" accept-charset="utf-8">
			<div class="form-group">
				<label for="nome">Nome: </label>
				<input type="text" class="form-control" name="nome" placeholder="Nome Completo">
			</div>
			<div class="form-group">
				<label for="email">Email: </label>
				<input type="text" class="form-control" name="email" placeholder="seuemail@mail.com">
			</div>
			<div class="form-group">
				<label for="tel">Telefone: </label>
				<input type="text" class="form-control" name="tel" placeholder="Telefone">
			</div>
			<div class="form-group">
				<label for="coment">Comentario: </label>
				<textarea name="coment" class="form-control" placeholder="Deixe seu comentario" rows="8" cols="35"></textarea> 
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-ok"></span> Enviar</button>
			</div>	
		</form>
	</div>

	<div class="push"></div>
 	</div>
  	<jsp:include page="footer.jsp"/>
</body>
</html>