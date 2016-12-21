<%--
  User: liao
  Date: 16-12-20
  Time: 下午1:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/c/login" method="post">
    <input type="text" name="userName"><br>
    <input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
