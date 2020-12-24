<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/8/2020
  Time: 10:55 AM
--%>

<%@ page import="Lookups.ContactInfoType" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
</head>

<body>
<h1>Create Contact Info  </h1>
<g:hasErrors bean="${this.contactInfo}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.contactInfo}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>
<g:form action="save" controller="contactInfo" method="post">
    <g:hiddenField id="id" value="${contactInfo?.id}" name="id"></g:hiddenField>


    <fieldset class="form" id="loc">
        <li>
        <label for="type">Contact Type :</label>
        <g:select  name="type" value="${contactInfo?.contactInfoType?.id}" from="${Lookups.ContactInfoType.list()}" optionKey="id" optionValue="type"/>
        </li> <br>
        <li>
            <label for="phone">mobile:</label>
            <input type="text" name="phone" id="phone"  size="50" >
        </li>
        <br>
        <li>
            <label for="emailAddress">Email Address:</label>
            <input type="text" name="emailAddress" id="emailAddress"  size="50" >
        </li>
        <br>
        <li>
            <label for="person">Contact Info:</label>
            <g:select name="person" value="${contactInfo?.person?.id}" from="${personinfo.Person?.list()}" optionKey="id" optionValue="firstName"/>

        </li>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton id="btn" name="save"  />
    </fieldset>
</g:form>
</body>
</html>