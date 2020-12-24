<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/14/2020
  Time: 10:38 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title></title>
</head>

<body>
        <h1>Create new relates </h1>
    <g:form action="save" controller="relate" method="post">
    <g:hiddenField id="id" value="${relate?.id}" name="id">
    </g:hiddenField>

    <label for="type">Relate Type :</label>
    <g:select  name="type" value="${relate?.relateType?.id}" from="${Lookups.RelateType.list()}" optionKey="id" optionValue="type"/>


    <fieldset class="form" >
        <li>
            <label for="descriptionText">Description:</label>
            <input type="text" name="descriptionText" id="descriptionText"  size="50" >
        </li><br>

        <li>
            <label for="person">person:</label>
            <g:select name="person" value="${person?.id}" from="${personinfo.Person?.list()}" optionKey="id" optionValue="firstName"/>

        </li>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton id="btn" name="Create"  />
    </fieldset>
</g:form>

</body>
</html>