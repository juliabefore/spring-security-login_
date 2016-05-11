<%--
  Created by IntelliJ IDEA.
  User: Юлия
  Date: 18.02.2016
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags"%>
<%@ page session="true"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="myPackage.PasswordHashing" %>


<%
  String user = request.getParameter("uname");
  String pwd = request.getParameter("pass");
  String fname = request.getParameter("fname");
  String lname = request.getParameter("lname");
  String email = request.getParameter("email");

  PasswordHashing passwordHashing = new PasswordHashing();
  passwordHashing.signUp(user, pwd);

  Connection connection = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost/MavenWebAll", "test_root", "test_root");
    Statement st = connection.createStatement();
    int i = st.executeUpdate("insert into users(first_name, last_name, email, uname, pass, authority, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + passwordHashing.DB.get(user) + "','" + "ROLE_USER" + "', CURDATE())");
    if (i > 0) {
      response.sendRedirect("welcome");
    } else {
      response.sendRedirect("signin");
    }
  }catch (SQLException e){
    e.printStackTrace();
  }finally {
    connection.close();
  }
%>
