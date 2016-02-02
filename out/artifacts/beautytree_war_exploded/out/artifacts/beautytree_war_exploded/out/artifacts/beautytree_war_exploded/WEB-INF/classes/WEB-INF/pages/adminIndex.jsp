<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 19.10.15
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta lang="ru">
  <title>Administration_BT</title>
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
          <li><a href="/admin/logout">Выйти</a></li>

        </ul>
      </nav>
    </div><br><br>

<!-- Container -->
<br><br>
    <div class="container" align="middle" style="padding: 5px 10px;"><br>
      <header>
        <div class="logo-text"><h1>BeautyTree</h1></div><br>
      </header>

      <c:if test="${orders.size() eq 0}">
        <div class="span12"><article class="art-head"><h2>У вас нет заказов</h2></article></div>
      </c:if>
      <c:if test="${orders.size() gt 0}">
      <table class="table table-bordered table-striped">
        <caption><h4><i class="icon-heart-y"></i> Все заказы<i class="icon-heart-y"></i></h4></caption>
        <thead>
        <tr>
          <th style="background-color: rgba(233, 208, 255, 0.7); color: midnightblue;">Номер заказа</th>
          <th style="background-color: rgba(233, 208, 255, 0.8); color: midnightblue;">Дата</th>
          <th style="background-color: rgba(233, 208, 255, 0.9); color: midnightblue;">Имя клиента</th>
          <th style="background-color: rgba(161, 105, 171, 0.4); color: midnightblue;">Телефон</th>
          <th style="background-color: rgba(161, 105, 171, 0.5); color: midnightblue;">Товары</th>
          <th style="background-color: rgba(161, 105, 171, 0.6); color: midnightblue;">Доставка</th>
          <th style="background-color: rgba(161, 105, 171, 0.6); color: midnightblue;">Коментарии</th>
          <th style="background-color: rgba(161, 105, 171, 0.7); color: midnightblue;">Сумма, грн</th>
          <th style="background-color: rgba(161, 105, 171, 0.8); color: midnightblue;">Изменить</th>
        </tr>
        </thead>
        <tbody style="color: #000000;">
        <c:forEach items="${orders}" var="order">
            <tr>
              <td>${order.id}</td>
              <td>${order.date}</td>
              <td>${order.client.firstName}</td>
              <td>${order.client.phoneNumber}</td>
              <td>
                <ol>
                  <c:forEach items="${order.productsInCart}" var = "product">
                    <li><p>${product.product_id.id} | ${product.name} | ${product.category} | ${product.price} грн<p></li>
                  </c:forEach>
                </ol>
              </td>
              <td>${order.delivery}</td>
              <td>${order.comments}</td>
              <td>${order.totalAmount}</td>
              <td><a href="/admin/orders/edit?id=${order.id}" class="btn btn-warning" type="submit">Редактировать</a>
                <br><br><a href="/admin/orders/delete?id=${order.id}" class="btn btn-xs btn-success btn-block"
                           type="submit">Удалить</a>
              </td>
            </tr>
            </tr>
        </c:forEach>
        </tbody>
      </table>
      </c:if>
    </div>
    <!--добавить список всех заказов-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
