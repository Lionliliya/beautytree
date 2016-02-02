<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="Как выбрать кисти для макияжа, кисти для макияжа по скидке, акции">
    <meta name="keywords" content="совет, макияж, кисти, акция, скидка, make-up, brush">
    <meta name="author" content="Liliya Yalovchenko">
    <meta lang="ru">
    <title>BeautyTree | Новости, акции, советы по выбору кистей для макияжа</title>
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
</div>
<br><br>

<!-- Container -->
<div id="wrap">
    <div class="container" align="middle">
        <header>
            <img src="/resources/bootstrap/img/logo.png" width="199" height="170"
                 alt="Купить кисти для макияжа недорого киев"/>

            <div class="logo-text"><h1>BeautyTree</h1></div>
        </header>

        <br>

        <div class="row"><a href="/news/sort-desc" class="price span3" style="float: right; font-size: 12px;">сортировать
            по убыванию даты</a></div>
        <div class="row"><a href="/news" class="price span3" style="float: right; font-size: 12px;">сортировать по
            возрастанию даты</a></div>
        <br>
        <!-- News -->
        <div class="row">
            <ul class="thumbnails">
                <c:forEach items="${articles}" var="article">
                    <li class="span4">
                        <div class="thumbnail">
                            <img src="/resources/${article.imagePath}" width="300" height="200" alt="${article.title}">

                            <div class="caption">
                                <h3>${article.title}</h3>

                                <p>${article.shortDescription}</p>

                                <p><a href="/news/${article.id}" class="btn">${article.buttonText}</a></p>

                            </div>
                        </div>
                    </li>
                </c:forEach>
                <!--<li class="span4">
                    <div class="thumbnail">
                        <img src="/resources/bootstrap/img/sales.png" width="300" height="200" alt="Купить кисти для макияжа по скидке">
                        <div class="caption">
                            <h3>Акция!</h3>
                            <p>С 21.10 по 01.11 купите набор кистей для макияжа не дорого, со скидкой 10%</p>
                            <p><a href="/catalog/2" class="btn">Товары,
                                которые учавствуют в акции</a></p>
                        </div>
                    </div>
                </li>
                <li class="span4">
                    <div class="thumbnail">
                        <img src="/resources/bootstrap/img/brushes.png" width="300" height="200" alt="Как выбрать кисти для макияжа">
                        <div class="caption">
                            <h3>Советы по выбору и использованию кистей для макияжа</h3>
                            <p>Узнайте какие кисти выбрать для макияжа, какой ворс подходит вам: натуральный или синтетика. А также подсказки, 				как правильно ухаживать за вашими make-up кистями</p>
                            <p><a href="/news/advice" class="btn">Читать дальше</a></p>
                        </div>
                    </div>
                </li>
                <li class="span4">
                    <div class="thumbnail">
                        <img src="/resources/bootstrap/img/present.png" width="300" height="200" alt="Обернем в подарочную упаковку"></p>
                        <div class="caption">
                            <h3>Подарок для подруги</h3>
                            <p>Хватит искать лучший подарок для любимой подруги или сестры! Загляните сюда!</p>
                            <p><a href="/packing" class="btn">Узнать больше</a></p>
                        </div>
                    </div>
                </li>
                <li class="span4">
                    <div class="thumbnail">
                        <img src="/resources/bootstrap/img/eyeset.png" width="300" height="200" alt="Кисти для глаз Real Techniques"></p>
                        <div class="caption">
                            <h3>Кисти для макияжа глаз Collector’s Edition Eyelining Set</h3>
                            <p>Тут вы найдете рекомендации как быстро и красиво нарисовать стрелку кошачий глаз или тонкую четкую линию.</p>
                            <p><a href="/news/advice-liner-brushes" class="btn">Узнать больше</a></p>
                        </div>
                    </div>
                </li>-->
            </ul>
        </div>
    </div>
    <div id="push"></div>
</div>

<!-- Up button -->

<a href="#" class="scrollup">Наверх</a>

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


<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>