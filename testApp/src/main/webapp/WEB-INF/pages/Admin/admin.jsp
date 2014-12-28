<%--
  Created by IntelliJ IDEA.
  User: remirobert
  Date: 26/12/14
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
  <link rel="import" href="http://www.polymer-project.org/components/paper-ripple/paper-ripple.html">
  <link rel="import" href="http://www.polymer-project.org/components/core-icons/core-icons.html">
  <link rel="import" href="http://www.polymer-project.org/components/font-roboto/roboto.html">

</head>

<body>

<h1>Welcolme Administration page</h1>

<div class="pure-g">
  <div class="pure-u-1-3">
    <h1>Users</h1>

      <c:forEach items="${users}" var="currentUser">
        <p>${currentUser.firstName}</p>
      </c:forEach>
  </div>


  <div class="pure-u-1-3">
    <h1>Items</h1>
      <a href="/admin/itemCreation">Add new Item</a>

      <c:forEach items="${items}" var="currentItem">
        <p>${currentItem.nameItem}</p>
      </c:forEach>

  </div>


  <div class="pure-u-1-3">
    <h1>Commands</h1>
  </div>
</div>

</body>
</html>
