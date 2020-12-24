<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/7/2020
  Time: 1:45 PM
--%>

<%@ page import="Lookups.ContactInfoType" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Create Contact Info Types </title>
</head>

<body>
<h1>Create new contact info type</h1>
<div>
    <g:form action="save" controller="contactInfoType" method="post">
        <g:hiddenField   id="id" value="${contactInfoType?.id}" name="id">
        </g:hiddenField>

        <div>
            <g:select  name="type" id="type" value="${contactInfoType?.id}" from="${Lookups.ContactInfoType.list()}" optionKey="type" optionValue="type"/>

            <fieldset class="buttons">
            <g:actionSubmit value="Save"  />
             </fieldset>

        </div>

    </g:form>
</div>


</body>
</html>