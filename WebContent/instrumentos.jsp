<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Produto"%>
<%@ page import="dao.ProdutoDAO"%>
<%@ include file="taglibs.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>


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

		<div class="container">
		<%	List<Produto> listaProduto = new ArrayList<Produto>();
			listaProduto = (ArrayList<Produto>) session.getAttribute("listaProduto");
			for(int i=0; i<listaProduto.size(); i++) { %>
			<div class="col-sm-4 col-md-3">
         		<div class="thumbnail text-center">
            		<a href="produto.jsp?id=<%= listaProduto.get(i).getId() %>"><img class="img-index" src="<%= listaProduto.get(i).getFoto() %>" alt="Imagem do Produto"></a>
            		<div class="caption">
              			<h4><%= listaProduto.get(i).getNome() %></h4>
              			<p class="text-center text-danger texto-preco">por R$ <%= listaProduto.get(i).getPreco() %></p>
            		</div>
          		</div>
        	</div>
		<% } %>
		</div>

		<div class="push"></div>
	</div>

	<jsp:include page="footer.jsp"/>
</body>
</html>