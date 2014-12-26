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
<body>

<h1>Sign in</h1>

<form action="/account/signin" method="post">
  <input type="text" id="email" name="email" placeholder="Email"/>
  <input type="text" id="password" name="password" placeholder="Password"/>
  <input type="submit" value="Submit"/>
</form>

</body>
</html>
