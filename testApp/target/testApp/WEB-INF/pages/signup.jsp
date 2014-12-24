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
</head>
<body>

<form action="/account/signup" method="post">
  <input type="text" id="firstName" name="firstName" placeholder="First name"/>
  <input type="text" id="lastName" name="lastName" placeholder="Last name"/>
  <input type="text" id="email" name="email" placeholder="Email"/>
  <input type="text" id="password" name="password" placeholder="Password"/>
  <input type="submit" value="Submit"/>
</form>


</body>
</html>
