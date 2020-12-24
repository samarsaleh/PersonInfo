<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/7/2020
  Time: 1:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Contact Info Types </title>

</head>

<body>
<h1>List contact info type :</h1>
<f:table collection="contactInfoTypeList"/>

    <g:each in="${contactInfoTypes}" var="contactInfoType">
        type:${contactInfoType} <br />
        </g:each>

<g:link action="create">Create new contact</g:link>

</body>
</html>