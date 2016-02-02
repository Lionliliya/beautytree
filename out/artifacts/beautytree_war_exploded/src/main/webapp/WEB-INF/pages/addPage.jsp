<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 02.11.15
  Time: 15:37
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
          <li><a href="/admin/articles">Статьи и новости</a></li>
          <li><a href="/admin/parameters">Настройки</a></li>
          <li><a href="/">Перейти в интернет-магазин</a></li>
          <li><a href="/admin/feedbacks">Отзывы</a></li>
          <li><a href="/admin/login">Выйти</a></li>
        </ul>
      </nav>
    </div><br><br>

<!-- Container -->

<div class="container" align="middle"><br>
  <div class="logo-text"><h1>BeautyTree</h1></div>
  <div class="tabbable" style="background-color: #311838; border-radius: 4px;">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#tab1" data-toggle="tab">Добавить товар</a></li>
      <li><a href="#tab2" data-toggle="tab">Добавить категорию</a></li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane active" id="tab1">
        <form class="form-actions-new-product" action="/admin/catalog/addProduct" method="post">
          <h4>Новый товар.</h4>
          <div class="row">
            <div class="span5">
              <input type="text" name="name" placeholder="Имя товара" required><br>
              <input type="text" name="price" placeholder="Цена" required><br>
              <input type="text" name="currency" placeholder="Валюта" required><br>
              <span class="help-inline">Выбирите категорию товара</span><br>
              <select name="productCategory" required>
                <c:forEach items="${categories}" var="category">
                  <option>${category.name}</option>
                </c:forEach>
              </select>
              <input type="text" name="amount" placeholder="Количество в упаковке" required><br>
              <span class="help-inline">Укажите есть ли товар в наличии</span><br>
              <label class="radio inline">
                <input type="radio" name="inStock" id="optionsRadios1" value="yes" checked>yes</label>
              <label class="radio inline">
                <input type="radio" name="inStock" id="optionsRadios2" value="no">no</label><br>
              <input type="text" name="description" placeholder="Полное описание" required><br>
            </div>
            <div class="span5">
              <input type="text" name="shortDesc" placeholder="Короткое описание" required><br>
              <input type="text" name="metaDescription" placeholder="Описание для мета-тега description, не больше 160 букв" required><br>
              <input type="text" name="metaKeyWords" placeholder="Ключевый слова, 2-4 слова через запятую в ед. числе" required><br>
              <input type="text" name="metaTitle" placeholder="Title для мета-тега, не больше 70 букв" required><br>
              <input type="text" name="smallimage" placeholder="Путь у мини-фото" required><br>
              <input type="text" name="image1" placeholder="Ссылка Фото 1" required><br>
              <input type="text" name="image2" placeholder="Ссылка Фото 2" required><br>
              <input type="text" name="image3" placeholder="Ссылка Фото 3" required><br>
              <input type="text" name="image4" placeholder="Ссылка Фото 4" required><br>
              <button type="submit" class="btn btn-warning">Сохранить изменения</button><br><br>
              <a href="admin/catalog/addPage" class="btn btn-warning" type="button">Отмена</a><br>
            </div>
          </div>
        </form>
          </div>
          <div class="tab-pane" id="tab2">
            <form role="form" class="form-actions" action="/admin/catalog/addCategory" method="post">
              <h4>Новая категория</h4>
              <input class="input-xlarge" type="text" name="name" placeholder="Имя категории"><br>
              <input class="input-xlarge" type="text" name="info" placeholder="Описание"><br>
              <button type="submit" class="btn btn-warning">Сохранить изменения</button><br><br>
              <a href="admin/catalog/addPage" class="btn btn-warning" type="button">Отмена</a><br>

            </form>
          </div>
    </div>
  </div>
</div>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>

