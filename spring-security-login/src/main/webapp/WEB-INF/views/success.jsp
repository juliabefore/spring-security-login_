<%--
  Created by IntelliJ IDEA.
  User: Юлия
  Date: 20.02.2016
  Time: 15:41
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
<%
  if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<%--<a href='logout.jsp'>Log out</a>--%>

<sec:authorize access="isAuthenticated()">
  <a href="<c:url value="/logout"/>">Logout</a>
</sec:authorize>

<%
  }
%>
</body>
</html>
