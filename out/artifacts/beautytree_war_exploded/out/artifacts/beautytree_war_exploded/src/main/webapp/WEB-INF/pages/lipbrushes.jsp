<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 26.10.15
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    }); </script>
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
        <div class="span8 offset2 block">
          <div class="textblock">Кисти для губ</div><br>
          <p>Идеально подходят для нанесения основы, бронзатора или румян.
            <br><br>Подходят как для профессионального так и для домашнего использования.</p><br>
          <p>Простые и удобные в использовании.</p>
        </div>
      </div>
      <c:if test = "${products.size() eq 0}">
        <div class="row">
          <div class="span12"><article class="art-head"><h2>В этом разделе ока нет товаров...</h2></article></div>
          <div class="span3 offset4 cart-link"><a href="/catalog" onclick="history.back()" style="text-decoration: none; color: inherit;">Продолжить покупки &raquo;&raquo; </a></div>
        </div>
      </c:if>
      <div class="row">
        <ul class="thumbnails">
          <c:forEach items="${products}" var="product">
            <li class="span4">
              <div class="thumbnail">
                <a href="/product/${product.id}" style="text-decoration: none"><img
                        src="/resources/${product.smallimage}" width="300" height="200" alt="${product.name}"></a>
                <div class="caption">
                  <h4><b class="lead">${product.name}</b></h4>
                  <h5>Цена: ${product.price} ${product.currency}</h5>
                  <p>${product.description}</p>>
                  <p><a href="/cart" class="btn">Добавить в корзину</a></p>
                  <p><a href="/product" class="btn">Просмотреть</a></p>
                </div>
              </div>
            </li>
          </c:forEach>
        </ul>
      </div>
      </div>


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



    <!-- Up button -->
    <a href="#" class="scrollup">Наверх</a>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
