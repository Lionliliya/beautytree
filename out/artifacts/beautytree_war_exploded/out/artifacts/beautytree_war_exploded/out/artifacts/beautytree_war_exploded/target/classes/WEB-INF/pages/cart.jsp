<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 27.10.15
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="Liliya Yalovchenko">
    <meta lang="ru">
    <title>Beauty Tree | Корзина ваших покупок</title> // 70 letters
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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
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
    <script type="text/javascript">
        jQuery(function($){
          $("#phone").mask("+38(999) 999-9999");
        });
    </script>
    <meta property="og:title" content="BeautyTree || Интернет магазин кистей для макияжа" />
    <meta property="og:description" content="Качественные и недорогие кисти для макияжа, а также аксессуары для мейка." />
    <meta property="og:url" content="http://localhost:8080/cart" />
    <meta property="og:image" content="/resources/bootstrap/img/footer-logo.png"/>

    <meta name="title" content="BeautyTree || Интернет магазин кистей для макияжа" />
    <meta name="description" content="Качественные и недорогие кисти для макияжа, а также аксессуары для мейка." />
    <link rel="image_src" href="/resources/bootstrap/img/footer-logo.png" />
</head>
<body>

    <!-- Top panel of navigation -->

    <div class="navbar navbar-fixed-top">
      <nav class="navbar-inner">
        <ul class="nav">
          <li><a href="/">Главная</a></li>
          <li><a href="/news">Советы и новости</a></li>
          <li class="dropdown" position="absolute">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Асортимент<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <c:forEach items="${categories}" var="category">
                    <li><a href="/catalog/${category.id}">${category.name}</a></li>
                </c:forEach>
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
    <div id="wrap">
    <div class="container" align="middle">
        <header>
            <img src="/resources/bootstrap/img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>
            <div class="logo-text"><h1>BeautyTree</h1></div>
        </header>
    <!--If cart is empty-->
      <c:if test = "${cartSize eq 0}">
        <div class="row">
          <div class="span12"><article class="art-head"><h2><i class="icon-heart-y"></i> В корзине пока нет товаров...<i class="icon-heart-y"></i></h2></article></div>
          <div class="span3 offset4 cart-link"><a href="/catalog" style="text-decoration: none; color: inherit;">Продолжить покупки &raquo;&raquo; </a></div>
        </div>
      </c:if>
    <!--If cart if not empty-->
      <c:if test = "${cartSize gt 0}">
          <table class="table table-bordered table-striped">
          <caption><h4><i class="icon-heart-y"></i> Корзина<i class="icon-heart-y"></i></h4></caption>
          <thead>
          <tr>
              <th style="background-color: rgba(136, 87, 119, .4);">Фото</th>
              <th style="background-color: rgba(136, 87, 119, .5);">Артикул</th>
              <th style="background-color: rgba(136, 87, 119, .6);">Название товара</th>
              <th style="background-color: rgba(136, 87, 119, .7);">Категория</th>
              <th style="background-color: rgba(136, 87, 119, .8);">Цена, грн</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${ProductsInCart}" var = "product">
          <tr>
              <td><img src="/resources/${product.smallimage}" width="170" height="106" alt="${product.name}"></td>
              <td>${product.product_id.id}</td>
              <td>${product.name}</td>
              <td>${product.category}</td>
              <td>${product.price}</td>
          </tr>
          </c:forEach>
          <tr>
            <td style="border: 0; border-left: 1px solid #dddddd;"></td>
            <td style="border: 0; border-top: 1px solid #dddddd;"></td>
            <td style="border: 0; border-top: 1px solid #dddddd;"></td>
            <td><strong>Всего</strong></td>
            <td><strong>${totalAmount} грн</strong></td>
          </tr>
          </tbody>
          </table>

        <div class="row">
          <div class="span6"><i class="icon-heart-y"></i><a href="/catalog" onclick="history.back()" class="btn btn-warning" type="button">Продолжить покупки</a><i class="icon-heart-y"></i></div>
          <div class="span6"><a href="/cartClearing" class="btn btn-warning" type="button">Очистить корзину</a></div>
        </div>
        <br>
        <div class="row">
          <form data-persist="garlic" method="post" action="/ordering">

            <input type="text" name ="firstName" placeholder="Введите Ваше имя" required pattern="^[A-Za-zА-Яа-яЁё]+$" autofocus><br>

            <input type="text" id="phone" name="phoneNumber" placeholder="Введите ваш телефон"><br>

            <input type="email" name ="email" placeholder="Введите Email" required><br>

            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios1" value="selfdelivery" checked> Самовывоз
            </label>
            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios2" value="newPost">Новая почта
            </label>
            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios3" value="UkrPost">УкрПочта
            </label>
            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios4" value="Carier">Курьер
            </label><br><br>
            <textarea rows="5" class="span4" style="float: none;" name="comments" placeholder="Укажите свой адрес для доставки и оставте коментарий, по желанию"></textarea><br>
            <i class="icon-heart-y"></i>
            <input type="submit" value = "Оформить заказ" class="btn btn-warning">
              <i class="icon-heart-y"></i>
          </form>
        </div>
      </c:if>
    <br>
    </div>
    <div id="push"></div>
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
                            <c:forEach items="${categories}" var="category">
                                <li><a href="/catalog/${category.id}">${category.name}</a></li>
                            </c:forEach>
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
    <script src="/resources/bootstrap/js/maskedinput.js"></script>
    <script src="/resources/bootstrap/js/garlic.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>

</body>
</html>
