<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Produto"%>
<%@ page import="dao.ProdutoDAO"%>
<%@ include file="taglibs.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.ProdutoDAO" %>
<%@ page import="modelo.Produto" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
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

  <% 
  	int id = Integer.parseInt(request.getParameter("id"));
  	ProdutoDAO dao = new ProdutoDAO();
  	Produto produto = new Produto();

  	produto = dao.retornarProduto(id);
  %>

  	<div class="container">
		<div class="col-md-5">
			<a href="#" class="thumbnail">
		    	<img src="<%= produto.getFoto() %>" alt="Imagem do produto">
		    </a>
		</div>
		<div class="col-md-offset-1 col-md-6">
			
			<div class="controle-produto">
			    <h2><%= produto.getNome() %></h2>
			</div>
			
			<div class="controle-produto">
		    	<p class="text-muted text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis sapien nec neque feugiat vehicula. Nam et accumsan est, et aliquet tellus. Suspendisse egestas convallis turpis vitae convallis. Sed ac erat iaculis, blandit sem vel, iaculis massa. Aenean eu dui.</p>
			</div>

			<div class="controle-produto">
			    <div class="panel panel-default">
					<div class="panel-body">
					  	<p class="text-center text-danger texto-preco">por R$ <strong class="text-strong"><%= produto.getPreco() %></strong></p>

					  	<form action="Carrinho" method="post">
					  		<input type="hidden" name="id" id="id" value="<%= produto.getId() %>">
							<button type="submit" class="btn btn-danger btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Adicionar ao Carrinho</button>
							<a href="#" class="btn btn-danger btn-block"><span class="glyphicon glyphicon-thumbs-up"></span> Recomendar</a>
						</form>
					</div>
				</div>
			</div>

			<div class="controle-produto">
				<div class="row">
				  
					  <div class="col-xs-6 col-md-4">
					    <a href="#" class="thumbnail">
					      <img src="<%= produto.getFoto() %>" alt="Imagem do produto com zoom">
					    </a>
					  </div>

					  <div class="col-xs-6 col-md-4">
					    <a href="#" class="thumbnail">
					      <img src="<%= produto.getFoto() %>" alt="Imagem do produto com zoom">
					    </a>
					  </div>

					  <div class="col-xs-6 col-md-4">
					    <a href="#" class="thumbnail">
					      <img src="<%= produto.getFoto() %>" alt="Imagem do produto com zoom">
					    </a>
					  </div>
						
				</div>
			</div>
		</div>
	</div>

	<div class="push"></div>
  </div>
  <jsp:include page="footer.jsp"/>

  
</body>
</html>