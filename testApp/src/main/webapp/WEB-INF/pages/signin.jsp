

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


    <form action="/account/signin" method="post">
      <input type="text" id="email" name="email" placeholder="Email"/>
      <input type="text" id="password" name="password" placeholder="Password"/>
      <input type="submit" value="Submit"/>
    </form>

    <form class="sign-up">
      <h1 class="sign-up-title">Jweb</h1>
      <%--<input type="text" class="sign-up-input" placeholder="Quel" autofocus>--%>
      <%--<input type="password" class="sign-up-input" placeholder="Choose a password">--%>
      <input type="email" id="email" name="email" placeholder="Email">
      <input type="password" id="password" name="password" placeholder="Password">


      <button type="submit" class="sign-up-button">Sign in</button>


    </form>

  </fieldset>
</form>

</body>
</html>


<style>
  @import url(http://fonts.googleapis.com/css?family=Wellfleet&subset=latin,latin-ext);
  *{
    margin:0;
    padding:0;
  }
  body {
    font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
    color: #404040;
    background-image:url('http://image-7.verycd.com/a4941fff31e4f7e69daba248450ffe871827534/wallpaper-525873.jpg');
  }
  #welcome{
    padding:10px;
    max-width:800px;
    margin-top:2pc;
    font-size:46px;
    font-family:Wellfleet;
    text-shadow: 3px -1px 2px rgba(150, 150, 150, 0.95);
    color:#fff;
  }

  .sign-up {
    position: relative;
    margin: 40px auto;
    width: 280px;
    padding: 33px 25px 29px;
    background: white;
    border-bottom: 1px solid #c4c4c4;
    border-radius: 5px;
    -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
    max-width:500px;
  }

  .sign-up:before, .sign-up:after {
    content: '';
    position: absolute;
    bottom: 1px;
    left: 0;
    right: 0;
    height: 10px;
    background: inherit;
    border-bottom: 1px solid #d2d2d2;
    border-radius: 4px;
  }

  .sign-up:after {
    bottom: 3px;
    border-color: #dcdcdc;
  }

  .sign-up-title {
    margin: -25px -25px 25px;
    padding: 15px 25px;
    line-height: 35px;
    font-size: 26px;
    font-weight: 300;
    color: #aaa;
    text-align: center;
    text-shadow: 0 1px rgba(255, 255, 255, 0.75);
    background: #f7f7f7;
  }

  .sign-up-title:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 8px;
    background: #c4e17f;
    border-radius: 5px 5px 0 0;
    background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
    background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
    background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
    background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  }


  a {
    padding-top: 15px;
    text-decoration: none;
    display: block;
    text-align: center;
    vertical-align: middle;
    font-family: inherit;
    color: inherit;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }

  .sign-up-input {
    width: 100%;
    height: 50px;
    margin-bottom: 25px;
    padding: 0 15px 2px;
    font-size: 17px;
    background: white;
    border: 2px solid #ebebeb;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 -2px #ebebeb;
    box-shadow: inset 0 -2px #ebebeb;
  }

  .sign-up-input:focus {
    border-color: #62c2e4;
    outline: none;
    -webkit-box-shadow: inset 0 -2px #62c2e4;
    box-shadow: inset 0 -2px #62c2e4;
  }

  .lt-ie9 .sign-up-input {
    line-height: 48px;
  }

  .sign-up-button {
    margin-top: 10px;
    position: relative;
    vertical-align: top;
    width: 100%;
    height: 54px;
    padding: 0;
    font-size: 22px;
    color: white;
    text-align: center;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
    background: #f0776c;
    border: 0;
    border-bottom: 2px solid #d76b60;
    border-radius: 5px;
    cursor: pointer;
    -webkit-box-shadow: inset 0 -2px #d76b60;
    box-shadow: inset 0 -2px #d76b60;
  }

  .sign-up-button:active {
    top: 1px;
    outline: none;
    -webkit-box-shadow: none;
    box-shadow: none;
  }

  :-moz-placeholder {
    color: #ccc;
    font-weight: 300;
  }

  ::-moz-placeholder {
    color: #ccc;
    opacity: 1;
    font-weight: 300;
  }

  ::-webkit-input-placeholder {
    color: #ccc;
    font-weight: 300;
  }

  :-ms-input-placeholder {
    color: #ccc;
    font-weight: 300;
  }

  ::-moz-focus-inner {
    border: 0;
    padding: 0;
  }

</style>