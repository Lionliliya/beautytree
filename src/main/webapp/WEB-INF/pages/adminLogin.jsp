<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 19.10.15
  Time: 14:38
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

  <div class="navbar navbar-static-top" align="middle">
    <nav class="navbar-inner">
      <ul class="nav">
        <li><a href="/admin/">Войти</a></li>
        <li><a href="/admin/logout">Выйти</a></li>
        <li><a href="/">Перейти в интернет-магазин</a></li>
      </ul>
    </nav>
  </div>

    <div class="container" align="middle"><br>
      <header>
        <div class="logo-text"><h1>BeautyTree</h1></div>
      </header><br>
      <c:if test= "${notification eq 'Неверный логин или пароль'}">
          <div class="span6 offset2"><p>${notification}</p></div>
      </c:if>
      <div class="span6 offset2"><h4><strong>Введите логин и пароль</strong></h4></div>
      <form class="form-horizontal" method="post" action="/admin/" style="background-color: #E5CCFF; padding: 10px; margin-left: 20%;
      margin-right: 20%; border-radius: 6px; box-shadow: 10px 10px 5px #888888;">
        <div class="control-group">
          <label class="control-label" for="inputEmail"><strong>Логин</strong></label>
          <div class="controls">
            <input type="text" style="background-color: #d4ce6c; opacity: 0.8;" id="inputEmail" name="username" placeholder="Логин">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="inputPassword"><strong>Пароль</strong></label>
          <div class="controls">
            <input type="password" style="background-color: #d4ce6c; opacity: 0.8;" id="inputPassword" name="password" placeholder="Пароль">
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <button type="submit" class="btn btn-warning">Подтвердить</button>
          </div>
        </div>
      </form>
    </div>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
