<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 23.01.16
  Time: 22:53
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
  <script type="text/javascript">
    jQuery(function($){
      $("#phone").mask("+38(999) 999-9999");
    });
  </script>
  <script type="text/javascript">
    jQuery(function($){
      $("#phone2").mask("+38(999) 999-9999");
    });
  </script>
  <script>
    function checkPass ()
    {
      with (document)
        getElementById ('info').innerHTML = (getElementById ('pass1').value != getElementById ('pass2').value) ?
                'Пароль повторен неверно!' : 'OK!';
    }
  </script>
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

<!-- Edit of user -->

<div class="container" align="left"><br>
  <header>
    <div class="logo-text"><h1>BeautyTree</h1></div>
    <br>
  </header>
  <h4><i class="icon-heart-p"></i>Редактирование пользователя<i class="icon-heart-p"></i></h4>
  <div class="span10" style="float: none; margin-left: 20px; margin-bottom: 30px;">
    <form class="span10" style="float: none; margin-bottom: 60px;" method="post" action="/admin/parametersr">
      <div class="row"><input type=hidden class="span10" type="text" name="id" value="${admin.id}" readonly required></div>
      <div class="row"><p class="label-form">Статус<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" type="text" name="role" value="${admin.role}" required></div>
      <div class="row"><p class="label-form">Имя пользователя<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" type="text" name="username" value="${admin.username}" required></div>
      <div class="row"><p class="label-form">Пароль<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" id="pass1" type="password" name="password" value="${admin.password}"></div>
      <div class="row"><p class="label-form">Повторите пароль<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" id="pass2" type="password" name="" onchange="checkPass ()"></div>
      <b style="color: red" id="info"></b><br>
      <div class="row"><p class="label-form">Имя сайта<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" type="text" name="domainName" value="${admin.domainName}"></div>
      <div class="row"><p class="label-form">Электронный адрес магазина<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" type="text" name="emailAddress" value="${admin.emailAddress}" required></div>

      <div class="row"><p class="label-form">Номер телефона магазина 1<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" id="phone" type="text" name="phoneNumber1" value="${admin.phoneNumber1}" required></div>
      <div class="row"><p class="label-form">Номер телефона магазина 2<i class="icon-heart-y"></i></p></div>
      <div class="row"><input class="span10" id="phone2" type="text" name="phoneNumber2" value="${admin.phoneNumber2}" required></div>


      <br>
      <div class="span3"><input class="btn btn-xs btn-success btn-block" type="submit" value = "Сохранить"></div>
    </form>
  </div>
</div>
<script src="/resources/bootstrap/js/maskedinput.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>

</body>
</html>
