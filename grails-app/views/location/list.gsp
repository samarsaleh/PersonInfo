<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/8/2020
  Time: 1:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title></title>
</head>

<body>
<h1>List Locations:</h1>
<f:table collection="locationList"/>
%{--<g:each in="${personinfo.Location.list()}" var="location">
    ${location} <br />
</g:each>--}%

<g:link action="create">Create new location</g:link>

</body>
</html>