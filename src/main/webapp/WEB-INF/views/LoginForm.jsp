<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>
    <div align="left">
        <h2>User Information Form</h2>
        <table>
        <form:form method="post" action="login" commandName="userForm">
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name" size="20"/></td>
                    <td><form:errors path="name" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Age: </td>
                    <td><form:input path="age" size="3"/></td>
                    <td><form:errors path="age" cssClass="error"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login"/></td>
                    <td></td>
                </tr>
        </form:form>
        </table>
    </div>
</body>
</html>