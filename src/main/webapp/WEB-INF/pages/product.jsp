<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 30.10.15
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <img src="img/logo.png" width="199" height="170" alt="Купить кисти для макияжа недорого киев"/>
        <div class="logo-text"><h1>BeautyTree</h1></div>
      </header>
      <br>
      <div class="product-block">
        <div class="row">
          <div class="span6">
            <c:forEach items="${products}" var="product">
            <div class="ienlarger"><a href="#"><img src="resources/${product.image1}" alt="${product.name}" class="resize_thumb" />
              <span><img src="resources/${product.image1}" alt="${product.name}"/><br/>Фото 1.</span></a>
            </div>
            <div class="ienlarger"><a href="#"><img src="resources/${product.image2}" alt="${product.name}" class="resize_thumb" />
              <span><img src="resources/${product.image2}" alt="${product.name}"/><br/>Фото 2.</span></a>
            </div>
            <div class="ienlarger"><a href="#"><img src="resources/${product.image3}" alt="${product.name}" class="resize_thumb"/>
              <span><img src="resources/${product.image3}" alt="${product.name}"/><br/>Фото 3.</span></a>
            </div>
              <div class="ienlarger"><a href="#"><img src="resources/${product.image4}" alt="${product.name}" class="resize_thumb"/>
              <span><img src="resources/${product.image4}" alt="${product.name}"/><br/>Фото 4.</span></a>
              </div>
            <br style="clear:left"/></div>

          <div class="span6" style="background: #d4ce6c; border-radius: 6px; box-shadow: 10px 10px 5px #888888;"><h4>${product.name}</h4>
            <p>Артикул: ${product.id}</p>
            <p><strong>Оценка ${product.mark} из 5</strong></p>
            <p>Категория: ${product.productCategory.name}</p>
            <p>Количество в упаковке: ${product.amount}</p>
            <p>${product.shortDesc}</p>
            <div class="span6"><a href="#" class="btn btn-warning" type="button">Цена: ${product.price} ${product.currency}</a></div>
            <c:if test="${product.inStock eq 'нет'}">
              <div class="span6"><a href="#" class="btn btn-warning" type="button">Нет в наличии</a></div>
            </c:if>
            <c:if test="${product.inStock eq 'да'}">
              <div class="span6"><a href="/clearcart" class="btn btn-warning" type="button">Добавить в корзину</a>
                <br><br>
              </div>
            </c:if>
          </div>
        </div>
        <div class="product-description">

          <div class="tabbable">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab1" data-toggle="tab">Дополнительное описание</a></li>
              <li><a href="#tab2" data-toggle="tab">Отзывы</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab1">
                <div class="row">
                  <div class="span6">Фото</div>
                  <div class="span6">Информация</div>
                </div>
              </div>
              <!--List of feed-backs-->
              <div class="tab-pane" id="tab2">
                <h4>Отзывы</h4>
                <ul>
                <c:forEach items="${products.feedfeedBackList}" var="feed-back">
                  <div class="row feed-back"><li>${feed-back.client.FirstName}<br><p>Оценка:${feed-back.evaluation}</p>
                    <br><p>${feed-back.feedback}</p></li></div>
                </c:forEach>
                </ul>
                <!--Leave your feedback-->
                <h3>Оставьте свой отзыв. Это ценная информация для улучшения нашего сервиса.</h3>
                <form action="/product/{id}" method="post">
                  <input type="text" placeholder="Имя" name="FirstName" /><br>
                  <input type="email" placeholder="E-mail" name="Email" /><br>
                  <span class="help-inline">Выбирите, пожалуйста, оценку от 1 до 5</span><br>
                  <label class="radio inline">
                    <input type="radio" name="evaluation" id="optionsRadios1" value="option1" checked>1
                  </label>
                  <label class="radio inline">
                    <input type="radio" name="evaluation" id="optionsRadios2" value="option2" >2
                  </label>
                  <label class="radio inline">
                    <input type="radio" name="evaluation" id="optionsRadios3" value="option3" >3
                  </label>
                  <label class="radio inline">
                    <input type="radio" name="evaluation" id="optionsRadios4" value="option4" >4
                  </label>
                  <label class="radio inline">
                    <input type="radio" name="evaluation" id="optionsRadios5" value="option5" >5
                  </label><br><br>
                  <textarea rows="3" name="feedback" placeholder="Оставте отзыв, по желанию"></textarea><br>

                  <input type="submit" value = "Подтвердить" class="btn btn-warning">
                </form>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
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
