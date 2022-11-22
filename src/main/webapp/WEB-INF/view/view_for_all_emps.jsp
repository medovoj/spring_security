<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: medovoy
  Date: 22.11.2022
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h3>Information for all Employees</h3>
<br>
<security:authorize access="hasRole('HR')">
    <input type="button" value="salary" onclick="window.location.href = 'hr_info'"><br>
    only for HR staff
</security:authorize>
<br><br>
  <security:authorize access="hasRole('manager')">
<input type="button" value="performance" onclick="window.location.href = 'manager_info'"><br>
only for manager staff
  </security:authorize>
</body>
</html>
