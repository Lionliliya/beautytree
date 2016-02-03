<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 03.11.15
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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

</head>
<body>

    <!-- Top panel of navigation -->

    <div class="navbar navbar-fixed-top">
      <nav class="navbar-inner">

        <ul class="nav">
          <li><a href="/admin/">Главная</a></li>
          <li><a href="/admin/catalog">Каталог продукции</a></li>
          <li><a href="/admin/clients">Клиенты</a></li>
          <li><a href="/admin/feedbacks">Отзывы</a></li>
          <li><a href="/admin/articles">Статьи и новости</a></li>
          <li><a href="/admin/parameters">Настройки</a></li>
          <li><a href="/">Перейти в интернет-магазин</a></li>
          <li><a href="/admin/login">Выйти</a></li>

        </ul>
      </nav>
    </div><br><br>

    <!-- Container -->
    <br><br>
    <div class="container" align="middle" style="padding: 5px 10px;"><br>
      <div class="logo-text"><h1>BeautyTree</h1></div>
      <c:if test="${products.size() eq 0}"><div class="span12"><article class="art-head"><h2>У вас нет товаров</h2></article></div></c:if>
      <c:if test="${products.size() gt 0}">
          <h4><i class="icon-heart-y"></i>Каталог<i class="icon-heart-y"></i></h4>
          <div class="row">
              <div class="span12" style="float: none;">
                  <ul style="list-style: none; margin-top: 10px; margin-bottom: 20px; font-family: philosopher;">
                      <c:forEach items="${categories}" var="category">
                          <li style="list-style: none; display: inline; padding: 1%; background-color: #B6A1C4;"><a
                                  style="text-decoration: none; color: #000000;" href="/admin/category/${category.name}">${category.name}</a></li>
                      </c:forEach>
                  </ul>
              </div>
          </div>

      <p>Выберите категорию,  что бы просмотреть товары в ней</p>
      <p>Что-бы изменить товар, нажмите на его имя в выпадающем списке категории</p>
      <div class="navbar">
        <nav class="navbar-inner">
          <ul class="nav">
              <c:forEach items="${categories}" var="category">
                <li class="dropdown" position="absolute"><a href="/admin/category/${category.name}"
                                                            class="dropdown-toggle" data-toggle="dropdown">
                      ${category.name}<b class="caret"></b></a>
                          <ul class="dropdown-menu">
                            <c:forEach items="${products}" var="product">
                                  <c:if test="${category.name eq product.productCategory.name}">
                                    <li><a href="/admin/product/edit?id=${product.id}">${product.name}</a></li>
                                  </c:if>
                              </c:forEach>
                          </ul>
                </li>
              </c:forEach>
          </ul>
        </nav>
      </div>
      </c:if>
      <a href="/admin/catalog/addPage" class="btn btn-warning" type="button">Добавить категорию</a><br><br>
      <a href="/admin/catalog/addPage" class="btn btn-warning" type="button">Добавить товар</a><br>
    </div>

 <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
