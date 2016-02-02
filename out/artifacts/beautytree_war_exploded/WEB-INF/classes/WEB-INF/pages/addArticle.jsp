<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 10.01.16
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</div>
<br><br>

<!-- Adding of an article -->

<div class="container" align="left"><br>
  <header>
    <div class="logo-text"><h1>BeautyTree</h1></div>
    <br>
  </header>
  <h4><i class="icon-heart-p"></i>Добаление статьи<i class="icon-heart-p"></i></h4>
  <div class="span10" style="float: none; margin-left: 20px; margin-bottom: 30px;">
    <form class="span10" style="float: none; margin-bottom: 60px;" method="post" action="/admin/articles/save-new-article">

    <div class="row"><p class="label-form">Заголовок<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="title" value="Напишите заголовок новости или статьи" required></div>
    <div class="row"><p class="label-form">Ссылка на фото<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="imagePath"></div>
    <div class="row"><p class="label-form">Короткое описание<i class="icon-heart-y"></i></p></div>
    <div class="row">
      <textarea class="span10" rows="5" type="text" name="shortDescription" required>Не больше 600 символов
      </textarea>
    </div>
    <div class="row"><p class="label-form">Дата публикации в формате дд-мм-гггг<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="dateOfPublication" value="Обязательно в формате дд-мм-гггг" required></div>
      <div class="row"><p class="label-form">Надпись на кнопке для перехода к подробному описанию записи<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="buttonText" value="Не больше 100 символов" required></div>
    <div class="row"><p class="label-form">Содержание статьи<i class="icon-heart-y"></i></p></div>
    <div class="row">
      <textarea class="span10" rows="15" type="text" name="content" required></textarea>
    </div>
    <div class="row"><p class="label-form">Описание для мета-тега description, не больше 160 букв<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="metaDescription" value="" required></div>
    <div class="row"><p class="label-form">Ключевый слова для поиска, 2-4 слова через запятую в ед. числе<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="metaKeyWords" value="" required></div>
    <div class="row"><p class="label-form">Title для мета-тега, не больше 70 букв<i class="icon-heart-y"></i></p></div>
    <div class="row"><input class="span10" type="text" name="metaTitle" value="" required></div>

    <br>
    <div class="span3"><input class="btn btn-xs btn-success btn-block" type="submit" value = "Сохранить"></div>
  </form>
    </div>
</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
