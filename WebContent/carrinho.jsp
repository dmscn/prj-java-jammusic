<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>
<%@ page import="modelo.Cliente"%>
<%@ page import="dao.ClienteDAO"%>
<%@ page import="modelo.Produto"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>


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
		<div id="alert-success" class="alert alert-success">
			<strong>Parabéns!</strong> Compra efetuada com sucesso!
		</div>
		
		<% 
			ArrayList<Produto> carrinho = new ArrayList<Produto>();
			carrinho = (ArrayList<Produto>) session.getAttribute("carrinho");
		%>
		<form action="RemoverCarrinho" name="formRemove" id="formRemove" method="post" accept-charset="utf-8">
			<table class="table table-hover table-bordered">
		    	<tr>
		        	<th>Produto</th>
		        	<th>Descrição</th>
		        	<th>Preço</th>
		        	<th>Quantidade</th>
		        	<th>Remover</th>
		        </tr>
		        <%	for(int i=0; i<carrinho.size(); i++) { %>
		        <tr>
		        	<td><%= carrinho.get(i).getNome() %></td>
		        	<td><%= carrinho.get(i).getDescricao() %></td>
		        	<td>R$ <%= carrinho.get(i).getPreco() %></td>
		        	<td><input type="number" name="quantidade" id="quantidade" value="1"></td>
		       		<td class="text-center"><input type="checkbox" name="remove" value="<%= carrinho.get(i).getId() %>"></td>
		        </tr>
		        <%	} %>
			</table>
			<div class="text-center">
				<button class="btn btn-danger" type="submit"><span class="glyphicon glyphicon-remove"></span> Remover</button>
				<button class="btn btn-success" type="button" onclick="$('#alert-success').slideDown();"><span class="glyphicon glyphicon-ok"></span> Comprar</button>
			</div>
		</form>
	</div>

	<div class="push"></div>
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>