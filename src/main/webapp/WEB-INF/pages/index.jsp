<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta lang="ru">
	<title>BeautyTree || Интернет магазин кистей для макияжа</title>
	<link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-touch-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/favicons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="img/favicons/apple-touch-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/favicons/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="img/favicons/apple-touch-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="img/favicons/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="img/favicons/apple-touch-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="img/favicons/apple-touch-icon-180x180.png">
	<link rel="icon" type="image/png" href="img/favicons/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="img/favicons/android-chrome-192x192.png" sizes="192x192">
	<link rel="icon" type="image/png" href="img/favicons/favicon-96x96.png" sizes="96x96">
	<link rel="icon" type="image/png" href="img/favicons/favicon-16x16.png" sizes="16x16">
	<link rel="manifest" href="img/favicons/manifest.json">
	<link rel="mask-icon" href="img/favicons/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#7f5e95">
	<meta name="msapplication-TileImage" content="img/favicons/mstile-144x144.png">
	<meta name="theme-color" content="#7f5e95">
	<meta content="text/html; charset=utf-8" />
	<link href="css/bootstrap.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){

			$(window).scroll(function(){
				if ($(this).scrollTop() > 100) {
					$('.scrollup').fadeIn();
				} else {
					$('.scrollup').fadeOut();
				}
			});

			$('.scrollup').click(function(){
				$("html, body").animate({ scrollTop: 0 }, 600);
				return false;
			});
		});
	</script>
</head>
  <body>

  <!-- Top panel of navigation -->

  <div class="navbar navbar-static-top">
	  <nav class="navbar-inner">
		  <ul class="nav">
			  <li><a href="/index"><i class="icon-home"></i>Главная</a></li>
			  <li><a href="/news">Советы и новости</a></li>
			  <li class="dropdown" position="absolute">
				  <a href="/catalog" class="dropdown-toggle" data-toggle="dropdown">Асортимент<b class="caret"></b></a>
				  <ul class="dropdown-menu">
					  <li><a href="/catalog/brushsets">Наборы кистей</a></li>
					  <li><a href="/catalog/facebrushes">Кисти для лица</a></li>
					  <li><a href="/catalog/eyebrushes">Кисти для глаз</a></li>
					  <li><a href="/catalog/lipbrushes">Кисти для губ</a></li>
					  <li><a href="/catalog/accessories">Дополнительные аксессуары</a></li>
				  </ul>
			  </li>
			  <li><a href="/packing">Подарочная упаковка</a></li>
			  <li><a href="/deliveryAndPayments">Доставка и оплата</a></li>
			  <li><a href="/contacts">Контакты</a></li>

			  <li><a href="/cart"><i class="icon-shopping-cart"></i>Корзина(${cartSize})</a></li>

		  </ul>
		  <form class="navbar-form pull-right" action="/search" method="post">
			  <i class="icon-search"></i><input type="text" class="sapan2 search query" name="pattern"
												placeholder="Введите имя товара" />
		  </form>
	  </nav>
  </div>

  <!-- Container -->

	  <div class="container" align="middle">
		  <header>
			  <img src="img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>
			  <div class="logo-text"><h1>BeautyTree</h1></div>
		  </header>
		  <div class="row">
			  <div class="span4">
				  <h4>Кисти для безупречного макияжа</h4>
				  <p>Удобные make-up кисти, изготовленные из прочного бамбука и высококачественного натурального и синтетического ворса. </p>
				  <p><a class="btn" href="/catalog">Подробнее &raquo;</a></p>
			  </div>
			  <div class="span4">
				  <h4>Подарок для девушки, подруги, мамы, сестры</h4>
				  <p>Если вы не знаете, что подарить дорогой для Вас девушке или женщине, приобретайте кисти для макияжа. Вы не прогадаете! </p>
				  <p><a class="btn" href="/catalog/brushsets">Подробнее &raquo;</a></p>
			  </div>
			  <div class="span4">
				  <h4>Красивая упаковка для вас, наши дорогие клиенты</h4>
				  <p>Наш товар мы пакуем в прелестные пакетики. Кроме того, по Вашему желанию мы сделаем для вас оригинальную упаковку из бумаги и лент.</p>
				  <p><a class="btn" href="/packing">Подробнее &raquo;</a></p>
			  </div>
		  </div>

		<!-- Carousel with images -->

		  <div class="carousel slide" id="myCarousel">
			  <ol class="carousel-indicators">
				  <li class="active" data-target="#myCarousel" data-slide-to="0"></li>
				  <li data-target="#myCarousel" data-slide-to="1"></li>
				  <li data-target="#myCarousel" data-slide-to="2"></li>
			  </ol>
			  <div class=carousel-inner>
				  <div class="item active">
					  <img src="img/image1.png" />
					  <div class="carousel-caption">
						  <h4>Почистить перышки!</h4>
						  <p>Удобная насадка для чистки кистей</p>
					  </div>
				  </div>
				  <div class="item">
					  <img src="img/image2.png" />
					  <div class="carousel-caption">
						  <h4>Если ты хочешь все и сразу</h4>
						  <p>Наборы кистей на любой вкус и цвет</p>
					  </div>
				  </div>
				  <div class="item">
					  <img src="img/image3.png" />
					  <div class="carousel-caption">
						  <h4>Легкий и ровный тон</h4>
						  <p>Яркие спонжи для нанесения тональной основы</p>
					  </div>
				  </div>
			  </div>
			  <a class="carousel-control left" data-slide="prev" href="#myCarousel">&lsaquo;</a>
			  <a class="carousel-control right" data-slide="next" href="#myCarousel">&rsaquo;</a>
		  </div>
	  </div>

  <!-- Footer -->

  <div class="footer">

	  <div class = "row-fluid">
		  <div class="span4"><p style="float:left; margin-left:20px; margin-top:10px">Контакты:<br><br>+38 (063) 490 67 				83<br>+38 (068) 201 33 01</p></div>
		  <div class="span4" align="middle" ><img src="img/footer_element1.png" width="117" height="100"/></div>
		  <div class="span4"><p style="float:right; margin-right:20px; margin-top:10px">Адрес:<br><br>Проспект Тычины Павла 				11 а</p></div>
	  </div>
	  <div class = "row-fluid">
		  <div class="span4 offset4" align="middle">BeautyTree.com.ua (c) 2015</div>
	  </div>
  </div>

  <!-- Up button -->
  	<a href="#" class="scrollup">Наверх</a>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>
  </body>
</html>
