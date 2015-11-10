<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 25.10.15
  Time: 22:45
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
          <img src="img/imagelogo.png" width="489" height="232"/>
        </header>

        <address>
            <strong>Интернет-магазин BeautyTree</strong><br>
            проспект Тычины Павла, 11 а<br>
            Киев, Украина 02125<br><br>
            <abbr title="Phone">Телефон:</abbr><br>
            (063) 490-67-83<br>
            (068) 201-33-01
        </address>
        <address>
            <strong>Администатор: Лилия</strong><br>
            <a href="mailto:beauty_tree@ukr.net?subject=feed-back" style="text-decoration: none;">beauty_tree@ukr.net</a>
        </address>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d40664.561680721774!2d30.571923115546596!3d50.
        43113279653765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4c564ec48ae65%3A0x455f4e56e1455d0!2z0L_
        RgNC-0YHQvy4g0J_QsNCy0LvQsCDQotC40YfQuNC90LgsIDEx0JAsIDExQSwg0JrQuNGX0LI!5e0!3m2!1sru!2sua!4v1445806874215"
                width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
        <div class="hero-unit">
            <h4>Пишите нам на почту</h4>
            <p>свои пожелания или рекомендации, которые помогут улучшить нашу работу для Вас! </p>
            <h5>Форма</h5>
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
