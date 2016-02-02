<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 24.12.15
  Time: 2:25
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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
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

<div class="container" align="middle">
  <header>
    <img src="/resources/bootstrap/img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>
    <div class="row"><div class="span9 offset1 logo-text"><h1>BeautyTree</h1></div></div>
  </header>


  <p align="left"><b class="lead"><i class="icon-heart-y"></i>Рекомендации по использованию нибора кистей для глаз Collector’s Edition Eyelining Set от Real Techniques<i class="icon-heart-y"></i></b></p>
  <hr class="featurette-divider">
  <div class="row">
      <div class="span6"  style="font-size: 24px; background: url(/resources/bootstrap/img/eyelining-set/background-eye.png) no-repeat; height: 200px;">
      <p style="font-size: 24px;">Из отзывов наших клиентов</p>
      </div>
      <p class="span6 feed-back-text" style="float: right; margin-right: 10px; ">
       <br><br>Хочу сразу сказать, я использую эти кисти каждый день для нанисения теней или прорисовки стрелки, а также для
       бровей. Люблю их за удобство и отличное качество. Smudge brush моя любимица, а маленький серебряный чехол -
       отличный бонус!<br> <strong>Алла, 03.01.2016</strong>
      </p>
  </div>
  <hr class="featurette-divider">
  <p class="desc-text-head" style="background-color: #efd658; margin-right: 25px; padding: 15px 30px;">Если вы хотите нарисовать идеальный кошачий глаз или же провести чувственную стрелку, в коллекционное наборе Collector’s Edition Eyelining Set  вы найдете идеальные и необходимые кисти.
  Четыре кисти  идут в комплекте с футляром цвета металлик, для удобного хранения.
  Ниже, представлены советы и приемы для удачного использования каждой кисти.</p>
  <hr class="featurette-divider">
 <div class="container" style="margin-left: auto; margin-right: auto;">
        <h5 class="desc-head">Eyeliner Brush <br> Кисть для подводки век</h5>
        <div class="row">
          <img src="/resources/bootstrap/img/line1.png" width="440" alt="Collector’s Edition Eyelining Set">
        </div>
        <p class="desc-text" style="margin-left: 100px; margin-right: 100px;">
        Уголовой срез кисти идеально подходит для зарисовки бровей, а также для подводки глаз.
        Дизайн прост в использовании и идеально подходит для начинающих.
        Каждая из представленых кистей может быть использована с жидкими или пудровыми текстурами.
        Наберите небольшое количество теней на кончик кисти. Посмотрите в зеркало и использовать ручку кисти, чтобы визуально продлить нижнюю линию ресниц, а затем по намеченой траэктории проресуйте кистью линию от уголка глаза. Затем, от кончика нарисованной линии проведите еще одну линию к веку, создавая небольшой пробел между двумя линиями.
        Возьмите больше теней, и заполните пробел между линиями, рисуя вдоль основания ресниц к внутреннему углу глаза. Проресуйте внешний угол глаза, что бы подчеркнуть форму кошачего глаза.</p>

        <h5 class="desc-head">Precision Liner Brush <br> Кисть для тонкой подводки</h5>
        <div class="row">
        <img src="/resources/bootstrap/img/line2.png" width="440" alt="Collector’s Edition Eyelining Set">
        </div>
          <p class="desc-text" style="margin-left: 100px; margin-right: 100px;">
        У кисти очень тонкие ворсинки, для создания четкой линии.
        Нанесите гелевую подводку на кисть и проведите тонкую линию у осования ресниц. Стрелку можно сделать следую рекомендациям для Eyeliner Brush кисти.</p>

        <h5 class="desc-head">Smudge Brush<br> Кисть для растушевки теней</h5>
        <div class="row">
          <img src="/resources/bootstrap/img/line3.png" width="440" alt="Collector’s Edition Eyelining Set">
        </div>
        <p class="desc-text" style="margin-left: 100px; margin-right: 100px;">
        Опустите кончик кисти в обычные или рассыпчатые тени (пигмент), легонько стряхните излишки, растушуйте тени по нижней линии ресниц, придавая насыщености взгляду.
        Если вы используйте карандаш, для прорисовки мягкой линии растушуйте ее с помощью Smudge Brush кистью вашу.</p>


        <h5 class="desc-head">Pointed Liner Brush<br>Заостренная кисть для подводки</h5>
        <div class="row">
          <img src="/resources/bootstrap/img/line4.png" width="440" alt="Collector’s Edition Eyelining Set">
        </div>
        <p class="desc-text" style="margin-left: 100px; margin-right: 100px;">
        Плоская коническая головка хорошо подойдет для толстых или тонких линий, также неплохо работает в качестве кисти для губ.
        Крошечная и удобная для проработки нижнего века кисть, особенно для маленьких глазк, что бы не переусердствовать с толщиной линий.</p>
        <div class="row">
            <div class="span4"><img src="/resources/bootstrap/img/eyelining-set/eyelining-set-1.png" alt="Collector's Edition Eyelining Set купить киев" width="300" height="300"></div>
            <div class="span4"><img src="/resources/bootstrap/img/eyelining-set/eyelining-set-2.png" alt="Collector's Edition Eyelining Set купить киев" width="300" height="300"></div>
            <div class="span4"><img src="/resources/bootstrap/img/eyelining-set/eyelining-set-3.png" alt="Collector's Edition Eyelining Set купить киев" width="300" height="300"></div>

        </div>
        <br>
         <div class="row">
             <div class="span4"><img src="/resources/bootstrap/img/eyelining-set/all-ness.png" alt="Collector's Edition Eyelining Set купить киев" width="150" height="150"></div>
             <div class="span4"><img src="/resources/bootstrap/img/eyelining-set/comfort.png" alt="Collector's Edition Eyelining Set купить киев" width="150" height="150"></div>
             <div class="span4"><img src="/resources/bootstrap/img/eyelining-set/design.png" alt="Collector's Edition Eyelining Set купить киев" width="150" height="150"></div>

         </div>
         <br><p class="desc-head">В этом видео вы можете посмотреть какие кисти использовать для различных стилей макияжа глаз.</p>
         <video controls class="span5 offset3" style="margin-bottom: 30px;">
           <source src="/resources/bootstrap/video/Collector's Edition Eyelining Set Tutorial - Real Techniques.mp4" type="video/mp4">
         </video>

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



<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
