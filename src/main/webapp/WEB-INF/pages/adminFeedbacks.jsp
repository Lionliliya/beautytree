<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 09.11.15
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8">
  <meta lang="ru">
  <title>Administration_BT</title>
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
          <li><a href="/admin/catalog">Каталог продукции</a></li>
          <li><a href="/admin/clients">Клиенты</a></li>
          <li><a href="/admin/feedbacks">Отзывы</a></li>
          <li><a href="/">Перейти в интернет-магазин</a></li>
          <li><a href="/admin/logout">Выйти</a></li>
        </ul>
      </nav>
    </div>

    <!-- Container - All feedbacks -->

    <div class="container-fluid" align="middle"><br>
      <header>
        <div class="logo-text"><h1>BeautyTree</h1></div><br>
      </header>
      <div class="row">
        <div class="span6">
            <form class="form-search" method="post" action="/admin/feedbacks/byClientId" >
              <input type="text" name="id" class="input-medium search-query"><span class="help-block">Показать отзывы по
              ID клиента</span>
              <button type="submit" class="btn">Показать</button>
            </form>
        </div>
        <div class="span6 pull-right">
            <form class="form-search" method="post" action="/admin/feedbacks/byProductId" >
              <input type="text" name="id" class="input-medium search-query"><span class="help-block">Показать отзывы по
              ID товара</span>
              <button type="submit" class="btn">Показать</button>
            </form>
        </div>
      </div><br><br>

      <table class="table table-bordered table-striped" style="font-size: 12px;">
        <thead>
        <tr>
          <th style="font-size: 12px;">Номер отзыва</th>
          <th style="font-size: 12px;">Номер товара</th>
          <th style="font-size: 12px;">Имя товара</th>
          <th style="font-size: 12px;">Дата</th>
          <th style="font-size: 12px;"> Номер клиента</th>
          <th style="font-size: 12px;">Имя клиента</th>
          <th style="font-size: 12px;">Номер телефона клиента</th>
          <th style="font-size: 12px;">Оценка</th>
          <th style="font-size: 12px;">Отзыв</th>
          <th style="font-size: 12px;">Изменить</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="feedbacks" var="feedback">
          <tr>
            <td>${feedback.id}</td>
            <td>${feedback.product.id}</td>
            <td>${feedback.product.name}</td>
            <td>${feedback.data}</td>
            <td>${feedback.client.id}</td>
            <td>${feedback.client.FirstName}</td>
            <td>${feedback.client.PhoneNumber}</td>
            <td>${feedback.evaluation}</td>
            <td>${feedback.feedback}</td>
            <td><a href="/admin/feedbacks/edit?id=${feedback.id}" class="btn btn-warning" type="submit">Редактировать</a>
              <br>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <br>
      <a href="/admin/feedbacks/add" class="btn btn-warning" type="submit">Добавить отзыв</a>
    </div>

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
