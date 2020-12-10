<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Online Shopping</title>
</head>
<body>
    ${contextRoot} says - ${greeting}
</body>
</html>
