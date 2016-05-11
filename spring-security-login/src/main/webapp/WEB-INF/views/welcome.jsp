<%--
  Created by IntelliJ IDEA.
  User: Юлия
  Date: 20.02.2016
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags"%>
<%@ page session="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
      Registration is Successful.
      <br>
      Please Login Here <spring:url value="/signin/" var="signIn" />
      <a href="${signIn}" title="signIn">Go to Login</a>
</body>
</html>
