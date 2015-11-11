<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="row-fluid">
            <ul class="thumbnails">
                <li class="span3">
                    <a href="#" class="thumbnail"><br/>
                        <img src="img/delivery/delivery1.png" width="260" height="260" alt="Доставка и оплата"><br />
                    </a>
                </li>
                <li class="span3">
                    <a href="#" class="thumbnail"><br />
                        <img src="img/delivery/delivery2.png" width="260" height="260" alt="Доставка и оплата"><br />
                    </a>
                </li>
                <li class="span3">
                    <a href="#" class="thumbnail"><br />
                        <img src="img/delivery/delivery3.png" width="260" height="260" alt="Доставка и оплата"><br />
                    </a>
                </li>
                <li class="span3">
                    <a href="#" class="thumbnail"><br />
                        <img src="img/delivery/delivery4.png" width="260" height="260" alt="Доставка и оплата"><br />
                    </a>
                </li>
            </ul></div>
        <div class="hero-unit">
            <h2>Доставка</h2>
            <div class="row-fluid">
                <div class="span6">
                    <h4>По Украине:</h4>
                    <ul>
                        <li> Новая Почта: 18 грн</li>
                        <li>УкрПочта: 12 грн</li>
                    </ul>
                </div>
                <div class="span6">
                    <h4>По Киеву:</h4>
                    <ul>
                        <li>Курьером 35 грн</li>
                        <li>Самовывоз по адресу: пр-т Тычины Павла 11 а</li>
                    </ul>
                </div>
                <h2>Оплата</h2>
                <p>При получении товара курьером или на складе Новой Почты или в отделении УкрПочты.</p>
                <div class="alert">
                    <button type="button" class="close" data-dismiss="alert">!</button>
                    <strong>Важно!</strong> При оплате на складе Новой Почты взымаеться комиссионный платеж в размере 2 % от суммы оплаты.
                </div>

            </div>
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