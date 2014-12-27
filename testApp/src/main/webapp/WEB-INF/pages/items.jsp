<%--
  Created by IntelliJ IDEA.
  User: remirobert
  Date: 24/12/14
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
  <link rel="import" href="http://www.polymer-project.org/components/paper-ripple/paper-ripple.html">
  <link rel="import" href="http://www.polymer-project.org/components/core-icons/core-icons.html">
  <link rel="import" href="http://www.polymer-project.org/components/font-roboto/roboto.html">
  <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">

  <title></title>
</head>
<body>
<div class="pure-menu pure-menu-open pure-menu-horizontal">
  <ul>
    <li><b>&nbsp;&nbsp;Bonjour ${firstName}</b></li>
    <li class="pure-menu-selected"><a href="items">Produits à vendre</a></li>
    <li><a href="#">Favoris</a></li>
    <li><a href="#">Achats en cours</a></li>
    <li><a href="#" class="red-button">Panier</a></li>
  </ul>
</div>

<c:forEach items="${items}" var="item">
<section>

<div class="dialog">

  <div class="content">
    <div class="title">${item.nameItem}</div><br>
    <div>${item.price} Euros</div>
    <div>il en reste ${item.quantity} en stock</div>

  </div>

  <div class="button label-red">
    <div class="center" fit>PARNIER +</div>
    <paper-ripple fit></paper-ripple>
  </div>

  <div class="button label-blue">
    <div class="center" fit>FAVORIS</div>
    <paper-ripple fit></paper-ripple>
  </div>



</div>

</section>

</c:forEach>


</body>
</html>

<style>


  body {
    background-color: #f9f9f9;
    font-family: RobotoDraft, 'Helvetica Neue', Helvetica, Arial;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-touch-callout: none;
  }

  section {
    padding: 30px 25px;
  }

  section > * {
    margin: 10px
  }

  /* Button */
  .button {
    display: inline-block;
    position: relative;
    width: 120px;
    height: 32px;
    line-height: 32px;
    border-radius: 2px;
    font-size: 0.9em;
    background-color: #fff;
    color: #646464;
  }

  .button > paper-ripple {
    border-radius: 2px;
    overflow: hidden;
  }


  .red-button {
    background: #ff7000;
    color: #fff!important;
  }


  .red-button:hover {
    background: #ff1a00!important;
    color: #fff!important;
  }

  .button.narrow {
    width: 60px;
  }

  .button.grey {
    background-color: #eee;
  }

  .button.blue {
    background-color: #4285f4;
    color: #fff;
  }

  .button.green {
    background-color: #0f9d58;
    color: #fff;
  }

  .button.raised {
    transition: box-shadow 0.2s cubic-bezier(0.4, 0, 0.2, 1);
    transition-delay: 0.2s;
    box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
  }

  .button.raised:active {
    box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
    transition-delay: 0s;
  }

  /* Icon Button */
  .icon-button {
    position: relative;
    display: inline-block;
    width: 56px;
    height: 56px;
  }

  .icon-button > core-icon {
    margin: 16px;
    transition: -webkit-transform 0.2s cubic-bezier(0.4, 0, 0.2, 1);
    transition: transform 0.2s cubic-bezier(0.4, 0, 0.2, 1);
  }

  .icon-button:hover > core-icon {
    -webkit-transform: scale(1.2);
    transform: scale(1.2);
  }

  .icon-button > paper-ripple {
    overflow: hidden;
    color: #646464;
  }

  .icon-button.red > core-icon::shadow path {
    fill: #db4437;
  }

  .icon-button.red > paper-ripple {
    color: #db4437;
  }

  .icon-button.blue > core-icon::shadow path {
    fill: #4285f4;
  }

  .icon-button.blue > paper-ripple {
    color: #4285f4;
  }

  /* FAB */
  .fab {
    position: relative;
    display: inline-block;
    width: 56px;
    height: 56px;
    border-radius: 50%;
    color: #fff;
    overflow: hidden;
    transition: box-shadow 0.2s cubic-bezier(0.4, 0, 0.2, 1);
    transition-delay: 0.2s;
    box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
  }

  .fab.red {
    background-color: #d23f31;
  }

  .fab.blue {
    background-color: #4285f4;
  }

  .fab.green {
    background-color: #0f9d58;
  }

  .fab:active {
    box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
    transition-delay: 0s;
  }

  .fab > core-icon {
    margin: 16px;
  }

  .fab > core-icon::shadow path {
    fill: #fff;
  }

  /* Menu */
  .menu {
    display: inline-block;
    width: 180px;
    background-color: #fff;
    box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
  }

  .item {
    position: relative;
    height: 48px;
    line-height: 48px;
    color: #646464;
    font-size: 0.9em;
  }

  .menu.blue > .item {
    color: #4285f4;
  }

  /* Card, Dialog */
  .card, .dialog {
    position: relative;
    display: inline-block;
    width: 100%;
    height: 240px;
    vertical-align: top;
    background-color: #fff;
    box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24);
  }

  .dialog {
    box-sizing: border-box;
    padding: 16px;
  }

  .dialog > .content {
    height: 170px;
    font-size: 0.9em;
  }

  .dialog > .content > .title {
    font-size: 1.3em;
  }

  .dialog > .button {
    width: 90px;
    float: right;
  }

  .card.image {
    background: url(http://lorempixel.com/300/240/nature/);
    color: #fff;
  }

  /* Misc */
  .center {
    text-align: center;
  }

  .label {
    padding: 0 16px;
  }

  .label-blue {
    color: #0e4df4;
  }

  .label-yellow {
    color: #f4f100;
  }

  .label-red {
    color: #d23f31;
  }

</style>