<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    <link href="${contextPath}/web-resources/libs/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/web-resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">
    <c:url value="/j_spring_security_check" var="login" />
    <form  name='loginForm' action="${login}" method="POST" <%--action="${contextPath}/login"--%> class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="j_username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="j_password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>

    </form>

</div>
<!-- /container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<%--<script src="${contextPath}/web-resources/js/jquery-2.1.1.js"></script>--%>
<script src="${contextPath}/web-resources/libs/bootstrap-3.1.1/js/bootstrap.min.js"></script>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script type="text/javascript"
        src='<c:url value="/resources/js/jquery-2.1.1.js"/>'></script>--%>
<%--<script src="${contextPath}/resources/js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript"
        src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>--%>
</body>
</html>
