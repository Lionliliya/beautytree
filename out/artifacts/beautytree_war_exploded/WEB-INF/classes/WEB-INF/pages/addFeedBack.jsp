<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 09.11.15
  Time: 14:48
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
  <!--<link rel="stylesheet" type="text/css" href="/resources/bootstrap/css/tcal.css" />
  <script type="text/javascript" src="/resources/bootstrap/js/tcal.js"></script>-->
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
          <li><a href="/">Перейти в интернет-магазин</a></li>
          <li><a href="/admin/logout">Выйти</a></li>
        </ul>
      </nav>
    </div>

    <!-- Container - Add FeedBack-->

    <div class="container"><br>
      <header>
        <div class="logo-text"><h1>BeautyTree</h1></div><br>
      </header>
      <h4>Добавление отзыва</h4>
      <form class="form-actions-edit-order" method="post" action="/admin/feedbacks/saveNewFeedback">
        <table>
          <tr>
            <td><strong>Выберите товар, который хотите оценить</strong></td>
            <td>
                <select name="product" required>
                  <c:forEach items="${products}" var="product">
                    <option>${product.id}</option>
                  </c:forEach>
                </select>
            </td>
          </tr>

          <tr>
            <td><strong>Выберите клиента, от которого отзыв будет оставлен</strong></td>
            <td>
                <select name="client" required>
                  <c:forEach items="${clients}" var="client">
                    <option>${client.id}</option>

                  </c:forEach>
                </select>
            </td>
          </tr>
          <tr>
            <td><strong>Оценка от 1 до 5</strong></td>
            <td>
                <label class="radio inline">
                  <input type="radio" name="evaluation" id="optionsRadios1" value="option1">1
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
                    <input type="radio" name="evaluation" id="optionsRadios5" value="option5" checked>5
                </label>
            </td>
          </tr>
          <tr>
            <td><strong>Оставьте отзыв</strong></td>
            <td>
              <textarea class="span4" type="text" rows="10" name="feedback" required></textarea>
            </td>
          </tr>
          <tr>
            <td></td>
            <td><input class="btn btn-xs btn-success btn-block" type="submit" value = "Сохранить"></td>
          </tr>
        </table>
      </form>
    </div>

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>

</body>
</html>
