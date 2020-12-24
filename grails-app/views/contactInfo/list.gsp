<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/8/2020
  Time: 10:55 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<h1>List of Contact Info :</h1>
<f:table collection="contactInfoList"/>
%{--<g:each in="${contactInfos}" var="contactInfo">--}%
%{--    type:${contactInfo} <br />--}%
%{--</g:each>--}%

<g:link action="create" params="${params}">Create new contact</g:link>
</body>
</html>