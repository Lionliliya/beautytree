<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 25.10.15
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="Упаковать кисти для макияжа, подарок для подруги в Киеве недорого">
    <meta name="keywords" content="подарок, кисть, макияж, упаковка, недорого">
    <meta name="author" content="Liliya Yalovchenko">
    <meta lang="ru">
    <title>BeautyTree | Кисти для макияжа в подарочной упаковке</title>
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

<!--Container-->
<div id="wrap">
    <div class="container" align="middle"
         style="background: url(/resources/bootstrap/img/fur-back3.png) top  no-repeat; background-color: white;">
        <header>
            <br><br>
            <!--<img src="/resources/bootstrap/img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>-->
            <div class="logo-text" style="margin-top: 10px;"><h1>BeautyTree</h1></div>
        </header>
        <div class="row" style="margin-left: 20px;">
            <div class="span2">
                <ul class="thumbnails">
                    <li class="span2">
                        <a href="#" class="thumbnail"><br/>
                            <img src="/resources/bootstrap/img/packaging/package5.png" width="100" height="100"
                                 alt="Упаковать подарок в Киеве"><br/>
                        </a>
                    </li>
                    <li class="span2">
                        <a href="#" class="thumbnail"><br/>
                            <img src="/resources/bootstrap/img/packaging/package6.png" width="100" height="100"
                                 alt="Упаковать подарок в Киеве"><br/>
                        </a>
                    </li>

                </ul>

            </div>
            <div class="span8">

                <!--Body content
                <!--<img src="/resources/bootstrap/img/gift.png" alt="Упаковать подарок киев" width="260" height="260"
                     style="margin: 10px auto;">-->

                <div class="row" style="margin-top: 200px;">
                    <article class="art-head"><h4 style="text-decoration: none;">Подача подарка важна не меньше чем сам
                        подарок. Выбирайте кисти у нас и мы оригинально упакуем их как
                        подарок в красивенную бумагу.
                        Мы вас удивим своей фантазией и экспериментами! А вы удивите дорогих вам людей таким
                        подорочком!</h4></article>
                </div>
                <div class="row">
                    <div class="price span4 offset2"><i class="icon-heart-p"></i>Цена упаковки: 35 грн<i
                            class="icon-heart-p"></i></div>
                    <br>

                  <!--  <form action="/cart" method=post style="margin: 0px auto;">
                        <input type=hidden name="id" value="${product.id}">
                        <input type=hidden name="productCategory" value="${product.productCategory.name}">
                        <input type=hidden name="smallimage" value="${product.smallimage}">
                        <input type=hidden name="name" value="${product.name}">
                        <input type=hidden name="price" value="${product.price}">
                        <input type=hidden name="currency" value="${product.currency}">

                        <div class="price span4 offset2"><i class="icon-heart-p"></i>
                            <button type="submit">Заказать упаковку</button>
                            <i class="icon-heart-p"></i></div>
                        <div class="price span6 offset1"><p style="margin-left: 0px;">Менеджер свяжеться с вами, для
                            уточнения деталей и пожеланий</p></div>

                    </form> -->
                    <br><br>
                </div>

            </div>
            <div class="span2" style="margin-left: 20px;">
                <ul class="thumbnails">
                    <li class="span2">
                        <a href="#" class="thumbnail"><br/>
                            <img src="/resources/bootstrap/img/packaging/package7.png" width="100" height="100"
                                 alt="Упаковать подарок в Киеве"><br/>
                        </a>
                    </li>
                    <li class="span2">
                        <a href="#" class="thumbnail"><br/>
                            <img src="/resources/bootstrap/img/packaging/package8.png" width="100" height="100"
                                 alt="Упаковать подарок в Киеве"><br/>
                        </a>
                    </li>

                </ul>
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
