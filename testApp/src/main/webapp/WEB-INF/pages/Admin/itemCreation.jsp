<%--
  Created by IntelliJ IDEA.
  User: remirobert
  Date: 28/12/14
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
</head>
<body>

<h1>Create new item</h1>

<form class="pure-form" action="/admin/addItem" method="post">
  <fieldset class="pure-group">
    <input type="text" id="nameItem" name="nameItem" class="pure-input-1-2" placeholder="name item">
    <input type="text" id="price" name="price" class="pure-input-1-2" placeholder="price item">
  </fieldset>

  <fieldset class="pure-group">
    <input type="text" id="description" name="description" class="pure-input-1-2" placeholder="desciption">
    <input type="text" id="quantity" name="quantity" class="pure-input-1-2" placeholder="quantity">
  </fieldset>

  <button type="submit" class="pure-button pure-input-1-2 pure-button-primary">Sign in</button>
</form>


</body>
</html>
