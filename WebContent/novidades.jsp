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
		<h2><center>Conheça os principais tipos e modelos de guitarras</center></h2>
		<div>
			<p> Bastante comum que os guitarristas de sucesso tenham diferentes modelos de guitarra em seu set de instrumentos, normalmente cada qual mais bonita ou exótica que a outra, mas provavelmente cada qual sendo de um tipo e específico, tendo características, timbres, efeitos e pegada característicos e únicas de acordo com o tipo.</p>
				
			<p>Quanto ao formato e ao tipo do corpo, as guitarras (agrupando guitarras e violões) podem ser divididas em:
	 			Maciças: Compõe a maioria das guitarras elétricas, tendo modelos como a <strong>“stratocaster”</strong> ou a <strong>“telecaster”</strong>. O corpo é feito de uma peça sólida de madeira, e o som é normalmente captado por pickups, que reproduzem o som usando amplificação externa.
				Semi-Maciças : É um tipo híbrido onde um bloco de madeira atravessa um corpo oco, tendo características tonais de guitarras de corpo maciço e das semi-acústicas.
				Semi-Acústicas: É uma guitarra eléctrica que tem o corpo oco, e pequenas aberturas no corpo que influenciam o timbre e que também herda características das acústicas (violões acústicos).
				Eletro-Acústicas: O conhecido violão-elétrico. É um violão acústico com um equipamento electrónico <strong>“built-in”</strong> que permitir um maior volume sonoro, fazendo uso de amplificação externa.
				Acústicas: Nosso conhecido violão acústico. É um modelo que não dependente de qualquer equipamento externo para amplificar o som. O formato e a ressonância do corpo criam por si só toda a amplificação do som.</p>
			<p class="p1"> Quanto aos modelos de guitarra, as mais conhecidas e usadas são:</p>
	 		<p><strong>Explorer:</strong> Muito usada no rock, como no heavy-metal e suas variantes, não está entre os modelos de guitarra mais vendidos, como os modelos <strong>“lespaul”</strong>, <strong>“stratocaster”</strong> ou <strong>“telecaster”</strong>, mas é sem dúvida uma das guitarras mais cobiçadas, devido entre outros fatores ao seu visual bastante exótico.</p>
			<p><strong>Lespaul:</strong> Junto com a <strong>“stratocaster”</strong> e a <strong>“telecaster”</strong> está entre os modelos mais populares de guitarra. Criada pela parceria entre o musico de jazz “les paul” e a fabricante Gibson, é detentora de um design que agrada até ao mais severo crítico, e possui um timbre mais encorpado e grave. É também um modelo muito versátil, muito usado no rock em geral, como no hard-rock, com bastante uso das chamadas <strong>“power-chords”</strong> com efeitos de distorção, como também é usada em variados estilos além do rock, como o jazz.
			Semi-acusticas: Como dito na parte um do artigo, este tipo de guitarra tem características tanto das guitarras elétricas quanto dos violões, mais o fato de serem maiores que as guitarras maciças ou semi-maciças e terem um som natural bem mais forte. Esse modelo tem a captação e o design que lembram muito as “lespaul”. É um modelo bastante usado em acústicos e em estilos como o country, jazz e blues.</p>
			<p><strong>SG:</strong> Originalmente criada pela <strong>Gibson</strong>. É um modelo de guitarra que nasceu para competir com as <strong>“telecasters”</strong> e <strong>“stratocasters”</strong> da <strong>fender</strong>. Pode-se dizer que é uma mistura da “lespaul” no peso e no timbre com elementos de design das “tele” e “strato”, com o diferencial de ter 2 “cutaways”, que são aquelas curvinhas para encaixar as mãos.</p>
			<p><strong>Stratocaster:</strong> Criada originalmente pela <strong>fender</strong>. Tem um timbre caracteristicamente agudo e com variações dependendo do tipo de madeira usada na fabricação. É também conhecida, assim como as “telecasters” por ter o design bastante criticado, mas apesar disso é conhecida como o modelo mais popular de guitarra que existe e em grande parte isso se deve a modelos imortalizados, como a tão mundialmente cobiçada “fender stratocaster”, guitarra consagrada por ninguém menos que <strong>“Jimi Hendrix”</strong> e ao fato de ser uma guitarra extremamente versátil, podendo ser usada em qualquer estilo musical.</p>
			<p><strong>Telecaster:</strong> Criada originalmente pela <strong>fender</strong>, tem o design bastante criticado. Foi um modelo originalmente feito para produção em larga escala, com facilidade na montagem e baixo custo de produção. É um modelo que agrada a muitos guitarristas pelo seu timbre mais agudo e seco, sendo um dos modelos mais populares. É usada em vários estilos, do blues ao country e passando pelo rock mais clássico.</p>
		 
			<p>Bom pessoal é isso. Procuramos mostrar de forma simples os tipos e modelos mais conhecidos de guitarra. Mas falar sobre Guitarras, seus modelos, estilos, características, efeitos, timbres, etc., é um assunto muito amplo. Nos próximos artigos vamos pontuar alguns desses tópicos e falar um pouco sobre temas como captadores, efeitos na guitarra, pontes, micro-afinação, entre outros. Aguardamos vocês!</p>
		</div>
	</div>
	<div class="push"></div>
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>