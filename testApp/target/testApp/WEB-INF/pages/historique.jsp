<%--
  Created by IntelliJ IDEA.
  User: julien
  Date: 28/12/14
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">

  <title></title>
</head>
<body>
<div class="pure-menu pure-menu-open pure-menu-horizontal">
  <ul>
    <li><b>&nbsp;&nbsp;Bonjour ${firstName}</b></li>
    <li><a href="/items">Produits à vendre</a></li>
    <li><a href="/favoris">Favoris</a></li>
    <li class="pure-menu-selected"><a href="/historique">Historique</a></li>
    <li><a href="/curent">Achats en cours</a></li>
    <li><a href="/panier" class="red-button">Panier</a></li>
  </ul>
</div>
</body>
</html>
