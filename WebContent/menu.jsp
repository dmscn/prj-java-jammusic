<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.ClienteDAO" %>
<%@ page import="modelo.Cliente" %>


<!-- HEAD -->
<div class="container container-fluid">
  <div class="col-md-4">
    <img id="logo" src="img/logo.png" alt="logo">
  </div>
  <div class="head-group col-md-8">
    <div class="col-md-10">
      <div class="input-group">
        <input type="text" name="search" class="form-control" placeholder="Procurar">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>
    <div class="col-md-2">
      <a href="carrinho.jsp" class="btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span> Carrinho</a>
    </div>
  </div>
</div>
<!-- FIM HEAD -->

<!-- NAVBAR -->
<nav id="custom-navbar-top" class="navbar navbar-default">
  <div class="container container-fluid">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	<li><a href="index.jsp">HOME</a></li> <!-- link para um servlet -->
        <li><a href="ArrumaInstrumentos">INSTRUMENTOS</a></li>
        <li><a href="novidades.jsp">NOVIDADES</a></li>
        <li><a href="contato.jsp">CONTATO</a></li>
      </ul>
      <% 
        Cliente cliente = (Cliente) session.getAttribute("cliente");
        if(cliente == null) {
      %>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="login.jsp">Login</a></li>
          <li><a href="cadastro.jsp">Cadastre-se</a></li>
        </ul>
      <% } else { %>
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ola, <%= cliente.getNome() %> <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="carrinho.jsp">Ver Carrinho</a></li>
              <li><a href="Logout">Logout</a></li>
              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Configurações</li>
              <li><a href="#">Conta</a></li>
            </ul>
          </li>
        </ul>
      <% } %>  
    </div>
  </div>
</nav>
<!-- FIM NAVBAR -->