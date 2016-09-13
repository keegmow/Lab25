<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <s:url var="formUrl" value="/src/main/java/com.kmowers.lab25/PersonForm.java" />
  <sf:form modelAttribute="subscription" action="${formUrl}">
	<form name="newuser" id="newuser" action="adduser.jsp" method="POST">
	    <table>
	        <tr>
	            <td>Name:</td>
	            <td><input type="text" th:field="*{name}" /></td>
	            <td th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Name Error</td>
	        </tr>
	        <tr>
	            <td>Age:</td>
	            <td><input type="text" th:field="*{age}" /></td>
	            <td th:if="${#fields.hasErrors('age')}" th:errors="*{age}">Age Error</td>
	        </tr>
	        <tr>
	            <td><button type="submit">Submit</button></td>
	        </tr>
	    </table>
	</form>
	    </sf:form>
	
	 <s:url var="formUrl" value="/subscribejsp" />
    <sf:form modelAttribute="subscription" action="${formUrl}">

      <fieldset>

        <div>
          <label for="email"><s:message code="subscription.email" />: </label>
          <sf:input path="email" />
        </div>
        <div>
          <label><s:message code="subscription.type" />: </label>
          <ul>
            <c:forEach var="type" items="${allTypes}" varStatus="typeStatus">
              <li>
                <sf:radiobutton path="subscriptionType" value="${type}" />
                <label for="subscriptionType${typeStatus.count}">
                  <s:message code="subscriptionType.${type}" />
                </label>
              </li>
            </c:forEach>
          </ul>
        </div>

        <div class="submit">
          <button type="submit" name="save"><s:message code="subscription.submit" /></button>
        </div>

      </fieldset>

    </sf:form>
</body>
</html>