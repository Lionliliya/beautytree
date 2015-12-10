<%--
  Created by IntelliJ IDEA.
  User: lionliliya
  Date: 11.11.15
  Time: 20:26
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
      <li><a href="/">Перейти в интернет-магазин</a></li>
      <li><a href="/admin/logout">Выйти</a></li>
    </ul>
  </nav>
</div><br><br>

<!-- Container - Edit product-->

<div class="container" align="middle"><br>
  <header>
    <div class="logo-text"><h1>BeautyTree</h1></div><br>
  </header>
  <h4>Редактирование товара</h4>
  <form class="form-actions-edit-order" method="post" action="/admin/product/save">
    <table>
      <tr>
        <td><strong>Id товара</strong></td>
        <td><input type="text" name="id" value="${product.id}" readonly></td>
      </tr>
      <tr>
        <td><strong>Имя</strong></td>
        <td><input type="text" name="name" value="${product.name}" required></td>
      </tr>
      <tr>
        <td><strong>Цена</strong></td>
        <td><input type="text" name="price" value="${product.price}" required></td>
      </tr>
      <tr>
        <td><strong>Валюта</strong></td>
        <td><input type="text" name="currency" value="${product.currency}" readonly></td>
      </tr>
      <td><strong>Выберите категорию</strong></td>
      <td>
        <select name="productCategory" required>
          <c:forEach items="${categories}" var="category">
            <option>${category.name}</option>
          </c:forEach>
        </select>
      </td>
      </tr>
      <tr>
        <td><strong>Кол-во в упаковке</strong></td>
        <td><input type="text" name="amount" value="${product.amount}" required></td>
      </tr>
      <tr>
        <td><strong>Наличие(да/нет)</strong></td>
        <td>
          <label class="radio inline">
            <input type="radio" name="inStock" id="optionsRadios1" value="option1" checked>y
          </label>
          <label class="radio inline">
            <input type="radio" name="inStock" id="optionsRadios2" value="option2">n
          </label>
        </td>

      </tr>
      <tr>
      <tr>
        <td><strong>Описание</strong></td>
        <td><textarea class="span4" rows="10" type="text" name="description" required>${product.description}
            </textarea>
        </td>
      </tr>
      <tr>
        <td><strong>Короткое описание</strong></td>
        <td><textarea class="span4" rows="5" type="text" name="shortDesc" required>${product.shortDesc}
            </textarea>
        </td>
      </tr>
      <tr>
        <td><strong>Фото предпросмотр</strong></td>
        <td><input type="text" name="smallimage" value="${product.smallimage}" required></td>
      </tr>
      <tr>
        <td><strong>Фото 1</strong></td>
        <td><input type="text" name="image1" value="${product.image1}" required></td>
      </tr>
      <tr>
        <td><strong>Фото 2</strong></td>
        <td><input type="text" name="image2" value="${product.image2}" required></td>
      </tr>
      <tr>
        <td><strong>Фото 3</strong></td>
        <td><input type="text" name="image3" value="${product.image3}" required></td>
      </tr>
      <tr>
        <td><strong>Фото 4</strong></td>
        <td><input type="text" name="image4" value="${product.image4}" required></td>
      </tr>
      <tr>
        <td></td>
        <td><input class="btn btn-xs btn-success btn-block" type="submit" value = "Сохранить"></td>
      </tr>
    </table>
  </form>
</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/bootstrap/**js/bootstrap.js"></script>
</body>
</html>
