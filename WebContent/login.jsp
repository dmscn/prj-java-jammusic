<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
    <form class="form col-md-offset-3 col-md-6" action="Login" method="post" accept-charset="utf-8">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" name="username" placeholder="Username" />
      </div>
      <div class="form-group">
        <label for="senha">Senha:</label>
        <input type="password" class="form-control" name="senha" placeholder="Senha" />
      </div>
      <div class="form-group">
        <input type="submit" class="btn btn-danger form-control" value="Login"/>
        <div class="text-center">
          <a href="esqueci_senha.jsp">Esqueceu a Senha?</a> <!-- TODO aplicar recuperação de senha -->
        </div>
      </div>
    </form>
  </div>

  <div class="push"></div>
  </div>
  <jsp:include page="footer.jsp"/>

  
</body>
</html>