<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 27.10.15
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
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
</head>
<body>

    <!-- Top panel of navigation -->

    <div class="navbar navbar-static-top">
      <nav class="navbar-inner">
        <ul class="nav">
          <li><a href="/index">Главная</a></li>
          <li><a href="/news">Советы и новости</a></li>
          <li class="dropdown" position="absolute">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Асортимент<b class="caret"></b></a>
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
          <form class="form-search pull-right" action="/search" method="post">
              <input type="text" class="input-small search-query" name="pattern"
                     placeholder="Поиск"/>
          </form>
      </nav>
    </div>

    <!-- Container -->

    <div class="container-fluid" align="middle">
        <header>
            <img src="img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>
            <div class="logo-text"><h1>BeautyTree</h1></div>
        </header>
    <!--If cart is empty-->
      <c:if test = "${cartSize eq 0}">
        <div class="row-fluid">
          <div class="span12"><h1>В корзине пока нет товаров...</h1></div>
          <div class="span12"><a href="/catalog" class="btn btn-warning" type="button">Продолжить покупки</a></div>
        </div>
      </c:if>
    <!--If cart if not empty-->
      <c:if test = "${cartSize gt 0}">
          <table class="table table-bordered table-striped">
          <caption><h4>Корзина</h4></caption>
          <thead>
          <tr>
              <th>Фото</th>
              <th>Артикул</th>
              <th>Название товара</th>
              <th>Категория</th>
              <th>Цена, грн</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${ProductsInCart}" var = "product">
          <tr>
              <td><img src="/resources${product.smallimage}" width="170" height="106" alt="${product.name}"></td>
              <td>${product.id}</td>
              <td>${product.name}</td>
              <td>${product.productCategory}</td>
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

        <div class="row-fluid">
          <div class="span6"><a href="/catalog" class="btn btn-warning" type="button">Продолжить покупки</a></div>
          <div class="span6"><a href="/cartClearing" class="btn btn-warning" type="button">Очистить корзину</a></div>
        </div>
        <br>
        <div class="row-fluid">
          <form data-persist="garlic" method="post" action="/ordering">

            <input type="text" name ="FirstName" placeholder="Введите Ваше имя" required pattern="^[А-Яа-яЁё\s]+$" autofocus><br>

            <input type="text" id="phone" name="PhoneNumber" placeholder="Введите ваш телефон"><br>

            <input type="email" name ="Email" placeholder="Введите Email" required><br>

            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios1" value="option1" checked> Самовывоз
            </label>
            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios2" value="option2" >Новая почта
            </label>
            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios3" value="option3" >УкрПочта
            </label>
            <label class="radio inline">
              <input type="radio" name="delivery" id="optionsRadios4" value="option4" >Курьер
            </label><br><br>
            <textarea rows="3" name="comments" placeholder="Оставте коментарий, по желанию"></textarea><br>

            <input type="submit" value = "Оформить заказ" class="btn btn-warning">
          </form>
        </div>
      </c:if>
    </div>
    <br>

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
    <script src="js/maskedinput.js"></script>
    <script src="js/garlic.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.js"></script>

</body>
</html>
