<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="true"%>
<html>
<head>
<title>Sign In</title>
</head>
<body>
	<h1>Spring Security - Sign In</h1>

	<%--<div style="color: red">${message}</div>--%>
	<%----%>
	<%--<form class="login-form" action="j_spring_security_check" method="post">--%>
			<%--<label for="j_username">Username: </label>--%>
		 	<%--<input id="j_username" name="j_username" size="20" maxlength="50" type="text" />--%>

			<%--<label for="j_password">Password: </label>--%>
			<%--<input id="j_password" name="j_password" size="20" maxlength="50" type="password" />--%>

			<%--<input type="submit" value="Login" />--%>
	<%--</form>--%>

	<br/>
	<br/>

	<%--<%Object message = session.getAttribute("error");--%>
		<%--if(null != message){%>--%>
	<%--<p align="center" style="color: crimson">${error}</p>--%>
	<%--<%session.removeAttribute("error");%>--%>
	<%--<%}--%>
	<%--%>--%>

	<form method="post" action="j_spring_security_check" class="login-form">
		<center>
			<table border="1" width="30%" cellpadding="3">
				<thead>
				<tr>
					<th colspan="2">Login Here</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>
						<label for="j_username">User Name</label>
					</td>
					<%--<td><input type="text" name="uname" value="" /></td>--%>
					<td>
						<input id="j_username" name="j_username" size="20" maxlength="50" type="text" />
					</td>
				</tr>
				<tr>
					<td>
						<label for="j_password">Password</label>
					</td>
					<%--<td><input type="password" name="pass" value="" /></td>--%>
					<td>
						<input id="j_password" name="j_password" size="20" maxlength="50" type="password" />
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" name="LoginButton"/></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
				<tr>
					<td colspan="2">Not Yet Registered? <spring:url value="/reg" var="reg" />
						<a href="${reg}" title="reg">Register Here</a></td>
				</tr>
				</tbody>
			</table>
		</center>
	</form>
</body>
</html>