<%--
  Created by IntelliJ IDEA.
  User: liao
  Date: 16-12-20
  Time: 上午12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/login" method="post">
    <input type="text" name="userName"><br>
    <input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
