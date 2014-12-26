<%--
  Created by IntelliJ IDEA.
  User: remirobert
  Date: 24/12/14
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
<body>

<h1>Sign in</h1>

<form class="pure-form" action="/account/signin" method="post">
  <fieldset>

    <input type="email" id="email" name="email" placeholder="Email">
    <input type="password" id="password" name="password" placeholder="Password">


    <button type="submit" class="pure-button pure-button-primary">Sign in</button>
  </fieldset>
</form>

</body>
</html>
