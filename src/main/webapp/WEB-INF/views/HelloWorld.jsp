<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <script src="resources/js/helloworld.js"> </script>

        <title>Spring MVC Example</title>
    </head>
    <body>

    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>


    <div style="text-align:center">Hello World!</div>

        <c:choose>
            <c:when test="${msg==null || msg==''}">
                <c:set var="greeting" value="World" scope="page" />
            </c:when>
            <c:otherwise>
                <c:set var="greeting" value="${msg}" scope="page" />
            </c:otherwise>
        </c:choose>


        <br>

        Say Hello to: <input id="jsTextbox" type="text" />
        <input name="jsSubmit" onclick="sayHello(document.getElementById('jsTextbox').value)" type="button" value="Submit" />
        <label id="jsGreeting"></label>


    <!-- a href="${contextPath}/admin/listPeople">Go to People List</a -->

    <FORM ACTION="${contextPath}/HelloWorld">
            Say Hello to:
            <INPUT TYPE="TEXT" NAME="springmvcTextbox" value="${springmvcTextbox}">
            <INPUT name="springmvcSubmit" TYPE="SUBMIT" VALUE="Submit">
            <label id="springmvcGreeting">${springmvcTextbox}</label>
        </FORM>


        <img src="resources/img/spring.gif" alt="Spring Logo" />

    </body>
</html>
