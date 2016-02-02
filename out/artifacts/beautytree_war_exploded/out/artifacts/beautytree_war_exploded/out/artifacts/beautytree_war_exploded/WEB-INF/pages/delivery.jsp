<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="Качественные кисти для макияжа купить с доставкой в Киеве и по всей Украине недорого! У нас вы найдете
    красивые и стильные кисти и мы доставим их вам в любую точку Украины">
    <meta name="keywords" content="макияж, кисти, купить, недорого, доставка">
    <meta name="author" content="Liliya Yalovchenko">
    <meta lang="ru">
    <title>Beauty Tree | Оплата и доставка</title>
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
    <link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/android-chrome-192x192.png"
          sizes="192x192">
    <link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="/resources/bootstrap/img/favicons/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="/resources/bootstrap/img/favicons/manifest.json">
    <link rel="mask-icon" href="/resources/bootstrap/img/favicons/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#7f5e95">
    <meta name="msapplication-TileImage" content="/resources/bootstrap/img/favicons/mstile-144x144.png">
    <meta name="theme-color" content="#7f5e95">
    <meta content="text/html; charset=utf-8"/>
    <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $('.scrollup').fadeIn();
                } else {
                    $('.scrollup').fadeOut();
                }
            });

            $('.scrollup').click(function () {
                $("html, body").animate({scrollTop: 0}, 600);
                return false;
            });
        });
    </script>
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
</div>
<br><br>

<!-- Container -->
<div id="wrap">
    <div class="container" align="middle">
        <header>
            <!--<img src="/resources/bootstrap/img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>-->
            <br><br>

            <div class="logo-text"><h1>BeautyTree</h1></div>
        </header>
        <div class="row">
            <div class="span2" style="margin-left: 20px;">
                <img src="/resources/bootstrap/img/brush-divider3.png" width="120" height="486">
            </div>
            <div class="span8" style="margin-left: 10px;">
                <!--Body content-->
                <div class="hero-unit">
                    <div class="row">
                        <div class="span1"><i class="icon-heart-p"></i></div>
                        <div class="span6"></div>
                        <div class="span1" style="margin-left: 30px;"><i class="icon-heart-p"></i></div>
                    </div>
                    <div class="row">
                        <div class="span3 offset2 head-block">Доставка<i class="icon-car"></i></div>
                    </div>
                    <br>
                    <table class="table table-bordered table-font" style="border-color: #220022;">
                        <thead style="background-color: #2e1633; border-color: #220022;">
                        <tr>
                            <th style="border-color: #220022;" class="span4">По Украине:</th>
                            <th style="border-color: #220022;" class="span4">По Киеву:</th>
                        </tr>
                        </thead>
                        <tbody style="border-color: #220022;">
                        <tr>
                            <td style="border-color: #220022;">
                                <ul style="list-style: none;">
                                    <li>Новая Почта: 25 грн</li>
                                    <li>УкрПочта: 18 грн</li>
                                </ul>
                            </td>
                            <td style="border-color: #220022;">
                                <ul style="list-style: none;">
                                    <li>Курьером 35 грн</li>
                                    <li>Самовывоз по адресу: пр-т Тычины Павла 11 а</li>
                                    <li>Доставка до м. Левобережная, м. Дружбы Народов бесплатно</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="span3 offset2 head-block">Оплата<i class="icon-pocket-w"></i></div>
                    </div>
                    <p>При получении товара курьером или на складе Новой Почты или в отделении УкрПочты.</p>
                    <strong>Важно!</strong> При оплате на складе Новой Почты взымаеться комиссионный платеж в размере 2
                    % от суммы оплаты.
                    <div class="row">
                        <div class="span1"><i class="icon-heart-p"></i></div>
                        <div class="span6"></div>
                        <div class="span1" style="margin-left: 30px;"><i class="icon-heart-p"></i></div>
                    </div>
                </div>
            </div>

            <div class="span2" style="margin-left: 20px;">
                <img src="/resources/bootstrap/img/brush-divider3.png" width="120" height="486">
            </div>
        </div>
    </div>
    <div id="push"></div>
</div>


<!-- Footer -->

<div id="footer">

    <div class="container container-color" align="middle">
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
                <script type="text/javascript">(function () {
                    if (window.pluso)if (typeof window.pluso.start == "function") return;
                    if (window.ifpluso == undefined) {
                        window.ifpluso = 1;
                        var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                        s.type = 'text/javascript';
                        s.charset = 'UTF-8';
                        s.async = true;
                        s.src = ('https:' == window.location.protocol ? 'https' : 'http') + '://share.pluso.ru/pluso-like.js';
                        var h = d[g]('body')[0];
                        h.appendChild(s);
                    }
                })();</script>
                <div data-description="Качественные и недорогие кисти для макияжа, а также аксессуары для мейка."
                     data-title="Интернет-магазин BeautyTree" data-url="http://localhost:8080/cart" class="pluso"
                     data-background="transparent" data-options="medium,square,line,horizontal,counter,theme=04"
                     data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,email,print,yazakladki,
                             livejournal,linkedin,googlebookmark" style="margin-top: 5px;"></div>
                <br>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>


</body>
</html>