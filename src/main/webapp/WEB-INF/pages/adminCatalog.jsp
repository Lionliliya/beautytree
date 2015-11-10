<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 03.11.15
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

</head>
<body>

    <!-- Top panel of navigation -->

    <div class="navbar navbar-static-top ">
      <nav class="navbar-inner">

        <ul class="nav">
          <li><a href="/admin/">Главная</a></li>
          <li><a href="admin/catalog">Каталог продукции</a></li>
          <li><a href="admin/clients">Клиенты</a></li>
          <li><a href="admin/feedbacks">Отзывы</a></li>
          <li><a href="/">Перейти в интернет-магазин</a></li>
          <li><a href="admin/login">Выйти</a></li>

        </ul>
      </nav>
    </div>

    <!-- Container -->
    <div class="container" align="middle"><br>
      <div class="logo-text"><h1>BeautyTree</h1></div>
      <div class="navbar">
        <nav class="navbar-inner-admin">
          <ul class="nav">
              <c:forEach items="categories" var="category">
                <li class="dropdown" position="absolute"><a href="/admin/category${category.id}" class="dropdown-toggle" data-toggle="dropdown">
                      ${category.name}<b class="caret"></b></a>
                          <ul class="dropdown-menu">
                            <c:forEach items="products" var="product">
                                  <c:if test="${category.name eq product.category.getCategoryName()}">
                                    <li><a href="/admin/product${product.id}">${product.name}</a></li>
                                  </c:if>
                              </c:forEach>
                          </ul>
                </li>
              </c:forEach>
          </ul>
        </nav>
      </div>
      <a href="/admin/catalog/addPage" class="btn btn-warning" type="button">Добавить категорию</a><br><br>
      <a href="/admin/catalog/addPage" class="btn btn-warning" type="button">Добавить товар</a><br>
    </div>

 <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
