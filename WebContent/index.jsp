<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
    <%@ include file="menu.jsp" %>

    <!-- CAROUSEL -->
    <div class="container container-fluid">
      <div class="row row-fluid">
        <div id="carousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel" data-slide-to="0" class="active"></li>
            <li data-target="#carousel" data-slide-to="1"></li>
            <li data-target="#carousel" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img src="img/bn_01.jpg" alt="aperto de mão" class="img-responsive">
              <div class="carousel-caption">
                
              </div>
            </div>
            
            <div class="item">
              <img src="img/bn_02.jpg" alt="muro de pedras" class="img-responsive">
              <div class="carousel-caption">
                
              </div>
            </div>
            
            <div class="item">
              <img src="img/bn_03.jpg" alt="campo verde" class="img-responsive">
              <div class="carousel-caption">
                
              </div>
            </div>
          </div>

          <!-- Controls -->
          <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
    <!-- FIM CAROUSEL -->

    <!-- INDEX -->
    <% 
      ProdutoDAO dao = new ProdutoDAO();
      ArrayList<Produto> listaDesc = new ArrayList<Produto>();
      ArrayList<Produto> listaAsc = new ArrayList<Produto>();

      listaDesc = dao.listarProdutos("DESC");
      listaAsc = dao.listarProdutos("ASC");
    %>

    <div class="container container-fluid">
      <div class="panel panel-default">
        <div class="panel-body text-center">
          <span class="text-muted">Mais Procurados</span>
        </div>
      </div>
    </div>

    <div class="container container-fluid">
      <div class="row row-fluid">

    <% for(int i=0; i<4; i++) { %>
          <div class="col-sm-4 col-md-3">
            <div class="thumbnail text-center">
              <a href="produto.jsp?id=<%= listaDesc.get(i).getId() %>"><img class="img-index" src="<%= listaDesc.get(i).getFoto() %>" alt="Imagem do Produto"></a>
              <div class="caption">
                <h4><%= listaDesc.get(i).getNome() %></h4>
                <p class="text-center text-danger texto-preco">por R$ <%= listaAsc.get(i).getPreco() %></p>
              </div>
            </div>
          </div>
    <% } %>

      </div>
    </div>

    <div class="container container-fluid">
      <div class="panel panel-default">
        <div class="panel-body text-center">
          <span class="text-muted">Mais recentes</span>
        </div>
      </div>
    </div>

    <div class="container container-fluid">
      <div class="row row-fluid">

    <% for(int i=0; i<4; i++) { %>
        <div class="col-sm-4 col-md-3">
          <div class="thumbnail text-center">
            <a href="produto.jsp?id=<%= listaAsc.get(i).getId() %>"><img class="img-index" src="<%= listaAsc.get(i).getFoto() %>" alt="Imagem do Produto"></a>
            <div class="caption">
              <h4><%= listaAsc.get(i).getNome() %></h4>
              <p class="text-center text-danger texto-preco">por R$ <%= listaAsc.get(i).getPreco() %></p>
            </div>
          </div>
        </div>
    <% } %>


      </div>
    </div> 
    <!-- FIM INDEX -->

    <div class="push"></div>
  </div> <!-- FIM WRAPPER -->

  <%@ include file="footer.jsp"%>
</body>
</html>