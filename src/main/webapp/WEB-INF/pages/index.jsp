<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta lang="ru">
	<title>BeautyTree || Интернет магазин кистей для макияжа</title>
	<link rel="apple-touch-icon" sizes="57x57" href="/resources/bootstrap/img/favicons/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="/resources/bootstrap/img/favicons/apple-touch-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/resources/bootstrap/img/favicons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="/resources/bootstrap/img/favicons/apple-touch-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/resources/bootstrap/img/favicons/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="/resources/bootstrap/img/favicons/apple-touch-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="/resources/bootstrap/img/favicons/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="/resources/bootstrap/img/favicons/apple-touch-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="/resources/bootstrap/img/favicons/apple-touch-icon-180x180.png">
	<link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/android-chrome-192x192.png" sizes="192x192">
	<link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/favicon-96x96.png" sizes="96x96">
	<link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/favicon-16x16.png" sizes="16x16">
	<link rel="manifest" href="/resources/bootstrap/img/favicons/manifest.json">
	<link rel="mask-icon" href="/resources/bootstrap/img/favicons/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#7f5e95">
	<meta name="msapplication-TileImage" content="/resources/bootstrap/img/favicons/mstile-144x144.png">
	<meta name="theme-color" content="#7f5e95">
	<meta content="text/html; charset=utf-8" />
	<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

	<link rel="stylesheet" href="/resources/bootstrap/css/ideal-image-slider.css">

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
	<style media="screen">
		#slider {
			max-width: 900px;
			margin: 50px auto;
		}
	</style>
</head>
  <body>

  <!-- Top panel of navigation -->

  <div class="navbar navbar-fixed-top">
	  <nav class="navbar-inner">
		  <ul class="nav">
			  <li><a href="/">Главная</a></li>
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

			  <li><a href="/cart">Корзина(${cartSize})</a></li>

		  </ul>
		  <form class="form-search" action="/search" method="post">
			  <input type="text" class="input-medium search-query" style="height: 20px;" name="pattern"
												placeholder="Поиск"/>
		  </form>

	  </nav>
  </div><br><br>

  <!-- Container -->

	  <div class="container" align="middle">
		  <header>
			  <img src="/resources/bootstrap/img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>
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
		  <br><br>

		  <!-- Carousel with images -->
		  <div id="slider" class="ideal-image-slider iis-effect-slide">
			  <img src="/resources/bootstrap/img/brushset1.png" data-src-2x="/resources/bootstrap/img/brushset1.png" alt="">
			  <img data-src="/resources/bootstrap/img/kabuki.png" data-src-2x="/resources/bootstrap/img/kabuki.png" src="" alt="">
			  <img data-src="/resources/bootstrap/img/image2.png" data-src-2x="/resources/bootstrap/img/image2.png" src="" alt="">
			  <img data-src="/resources/bootstrap/img/image1.png" data-src-2x="/resources/bootstrap/img/image1.png" src="" alt="">
			  <img data-src="/resources/bootstrap/img/puff.png" data-src-2x="/resources/bootstrap/img/puff.png" src="" alt="">
			  <a class="iis-next-nav"></a>
			  <a class="iis-previous-nav"></a>
		  </div>
	  </div>

		  <!-- Up button -->
		  <a href="#" class="scrollup">Наверх</a>

          <!-- Footer -->

  <div id="footer">

	  <div class = "container container-color" align="middle">
		  <div class="row">
			  <div class="span2">
				  <div class="header-list">
					  <ul>
						  <li><a href="/">Главная</a></li>
						  <li><a href="/news">Советы и новости</a></li>
						  <li><a href="/packing">Упаковка</a></li>
						  <li><a href="/deliveryAndPayments">Доставка</a></li>
						  <li><a href="/contacts">Контакты</a></li>
					  </ul>
				  </div>
			  </div>
			  <div class="span8">
				  <script type="text/javascript">(function() {
					  if (window.pluso)if (typeof window.pluso.start == "function") return;
					  if (window.ifpluso==undefined) { window.ifpluso = 1;
						  var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
						  s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
						  s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
						  var h=d[g]('body')[0];
						  h.appendChild(s);
					  }})();</script>
				  <div data-description="Качественные и недорогие кисти для макияжа, а также аксессуары для мейка."
					   data-title="Интернет-магазин BeautyTree" data-url="http://localhost:8080/cart" class="pluso"
					   data-background="transparent" data-options="medium,square,line,horizontal,counter,theme=04"
					   data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,email,print,yazakladki,
                             livejournal,linkedin,googlebookmark" style="margin-top: 5px;"></div><br>
				  <img src="/resources/bootstrap/img/footer-logo.png" width="100px" style="vertical-align: middle;">
			  </div>
			  <div class="span2">
				  <div class="header-list">
					  <ul>
						  <li><a href="/catalog/brushsets">Наборы кистей</a></li>
						  <li><a href="/catalog/facebrushes">Кисти для лица</a></li>
						  <li><a href="/catalog/eyebrushes">Кисти для глаз</a></li>
						  <li><a href="/catalog/lipbrushes">Кисти для губ</a></li>
						  <li><a href="/catalog/accessories">Аксессуары</a></li>
					  </ul>
				  </div>
			  </div>
		  </div>
		  <hr>
		  <div class="row">
			  <div class="span2"></div>
			  <div class="span8" style="font-weight: normal;">BeautyTree.com.ua (c) 2015</div>
			  <div class="span2"></div>
		  </div>
	  </div>

  </div>



  <script src="/resources/bootstrap/js/ideal-image-slider.js"></script>
  <script>
	  var slider = new IdealImageSlider.Slider('#slider');
	  slider.start();
  </script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>
  </body>
</html>
