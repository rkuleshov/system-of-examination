<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title><spring:message code="label.title"/></title>

    <script src="<c:url value="/resources/js/jquery-1.11.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            changeQuestionsByTimer();
        });

    </script>

</head>
<body>

<h3><spring:message code="label.questions"/></h3>

<span id="percentageMessage"></span>

<table class="questions">
    <tr>
        <td id="question">${question.questionDescription}
    </tr>
    <tbody id="answers">
    <c:forEach items="${answers}" var="answer">
        <tr>
            <td><input type="radio" name="answerId"
                       value="${answer.answerId}">${answer.answerDescription}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<input id="isCycleFinished" type="hidden" value="false"/>
<input type="button" value=
<spring:message code="label.next"/> id="buttonNext"/></td>

</body>
</html>