<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <script src="resources/js/javascript.js"> </script>
    <title>Spring MVC Example</title>
</head>
<body onload="jsFunction()">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:choose>
    <c:when test="${msg==null || msg==''}">
        <c:set var="greeting" value="World" scope="page" />
    </c:when>
    <c:otherwise>
        <c:set var="greeting" value="${msg}" scope="page" />
    </c:otherwise>
</c:choose>

<div style="text-align:center">Hello ${greeting}!</div>
<br>

<FORM ACTION="${contextPath}/HelloWorld">
    Enter greeting recipient:
    <INPUT NAME="msg" TYPE="TEXT" value="${msg}">
    <p></p>
    <INPUT ID="Submit" TYPE="SUBMIT" VALUE="Submit">
</FORM>

<hr>

<div style="text-align:left">
    <label id="jsGreeting"></label>
</div>
<img src="resources/img/spring.gif" alt="Spring Logo" />

</body>
</html>
