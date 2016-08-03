<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modelo.Produto"%>
<%@ page import="dao.ProdutoDAO"%>
<%@ include file="taglibs.jsp"%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		

		<form action="CadastraCliente" method="post" class="col-md-8 col-md-push-2" accept-charset="utf-8">
			
			<div id="alert-email" class="alert alert-warning">
				<strong>Ops!</strong> O email digitado já esta cadastrado.
			</div>
			<div id="alert-username" class="alert alert-warning">
				<strong>Ops!</strong> O username digitado já esta sendo usado.
			</div>
			<div id="alert-all" class="alert alert-warning">
				<strong>Ops!</strong> O email digitado e username ja estao cadastrados.
			</div>
			<div id="alert-error" class="alert alert-danger">
				<strong>Ops!</strong> Occoreu um error ao efetuar o cadastro.
			</div>
			<div id="alert-success" class="alert alert-success">
				<strong>Pronto!</strong> Usuario cadastro com sucesso!
			</div>

			<fieldset>
				<legend>Informações de Contato</legend>
				<div class="form-group">
					<label for="nome" class="control-label">Nome: </label>
					<input type="text" name="nome" id="nome" class="form-control" placeholder="Nome Completo" >
				</div>
				<div class="form-group">
					<label for="email" class="control-label">Email: </label>
					<input type="text" name="email" id="email" class="form-control" placeholder="seuemail@mail.com">
				</div>
				
				<div class="row">
					<div class="col-xs-7">
						<div class="form-group">
							<label for="cpf" class="control-label">CPF: </label>
							<input type="text" name="cpf" id="cpf" class="form-control">
						</div>				
					</div>
					<div class="col-xs-5">
						<div class="form-group">
							<label class="control-label">Data de Nascimento: </label> <br>
							<input type="text" name="dia" id="dia" size="2" maxlength="2" placeholder="dd"> / 
							<input type="text" name="mes" id="mes" size="2" maxlength="2" placeholder="mm"> / 
							<input type="text" name="ano" id="ano" size="4" maxlength="4" placeholder="aaaa">
						</div>				
					</div>
				</div>

				<div class="row">
					<div class="col-xs-4">
						<div class="form-group">
							<label for="sexo" class="control-label">Sexo: </label>
							<select class="form-control" name="sexo" id="sexo">
								<option value="M">Masculino</option>
								<option value="F">Femenino</option>
							</select>
						</div>		
					</div>
					<div class="col-xs-4">
						<div class="form-group">
							<label for="telefone" class="control-label">Telefone: </label>
							<input type="text" name="telefone" id="telefone" class="form-control" placeholder="(xx) xxxx-xxxx">
						</div>
					</div>
					<div class="col-xs-4">
						<div class="form-group">
							<label for="celular" class="control-label">Celular: </label>
							<input type="text" name="celular" id="celular" class="form-control" placeholder="(xx) x-xxxx-xxxx">
						</div>				
					</div>
				</div>
			
				<hr>
				
				<div class="row">
					<div class="col-xs-8">
						<div class="form-group">
							<label for="endereco" class="control-label">Endereco: </label>
							<input type="text" name="endereco" id="endereco" class="form-control" placeholder="Rua Avenida Logradouro">
						</div>
					</div>
					<div class="col-xs-4">
						<div class="form-group">
							<label for="cep" class="control-label">CEP: </label>
							<input type="text" name="cep" id="cep" class="form-control" placeholder="xxxxx-xxx">
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-2">
						<div class="form-group">
							<label for="numero" class="control-label">Numero: </label>
							<input type="text" name="numero" id="numero" class="form-control">
						</div>						
					</div>
					<div class="col-xs-10">
						<div class="form-group">
							<label for="complemento" class="control-label">Complemento: </label>
							<input type="text" id="complemento" class="form-control" placeholder="Apt 000">
						</div>						
					</div>
				</div>
				
				<div class="row">
					<div class="col-xs-6">
						<div class="form-group">
							<label for="bairro" class="control-label">Bairro: </label>
							<input type="text" name="bairro" id="bairro" class="form-control" placeholder="Botafogo">
						</div>						
					</div>
					<div class="col-xs-6">
						<div class="form-group">
							<label for="cidade" class="control-label">Cidade: </label>
							<input type="text" name="cidade" id="cidade" class="form-control" placeholder="Rio de Janeiro">
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-4">
						<div class="form-group">
							<label for="estado" class="control-label">Estado (UF): </label>
							<input type="text" name="estado" id="estado" class="form-control" placeholder="RJ">
						</div>						
					</div>
					<div class="col-xs-8">
						<div class="form-group">
							<label for="referencia" class="control-label">Referencia: </label>
							<input type="text" name="referencia" id="referencia" class="form-control" placeholder="Proximo à Cobal">
						</div>						
					</div>
				</div>
			</fieldset>

			<br>

			<fieldset>
				<legend>Informações de Conta</legend>
				<div class="form-group">
					<label for="username" class="control-label">Username: </label>
					<input type="text" name="username" id="username" class="form-control" placeholder="Username">
				</div>
				<div class="form-group">
					<label for="senha" class="control-label">Senha: </label>
					<input type="password" name="senha" id="senha" class="form-control">
				</div>
				<div class="form-group">
					<label for="confSenha" class="control-label">Confirmar Senha: </label>
					<input type="password" name="confSenha" id="confSenhas" class="form-control">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-ok"></span> Cadastrar</button>
					<button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-erase"></span> Limpar</button>
				</div>
			</fieldset>
		</form>
	</div>
	<div class="push"></div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>