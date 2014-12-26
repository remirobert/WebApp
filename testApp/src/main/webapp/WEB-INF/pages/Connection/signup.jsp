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
    <title>Sign in</title>
  <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
</head>
<body>

<form class="pure-form">
  <fieldset class="pure-group">
    <input type="text" id="firstName" class="pure-input-1-2" placeholder="Username">
    <input type="text" id="lastName" class="pure-input-1-2" placeholder="Password">
    <input type="email" id="email" class="pure-input-1-2" placeholder="Email">
  </fieldset>

  <fieldset class="pure-group">
    <input type="text" id="password" class="pure-input-1-2" placeholder="password">
  </fieldset>

  <button type="submit" class="pure-button pure-input-1-2 pure-button-primary">Sign in</button>
</form>


</body>
</html>
