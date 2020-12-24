<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/8/2020
  Time: 2:45 PM
--%>

<%@ page import="personinfo.ContactInfo; personinfo.Location; personinfo.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />

    <title></title>
</head>

<body>

<h1>create new person</h1>
<g:hasErrors bean="${this.person}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.person}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>
<g:form action="save" controller="person" method="post">
    <g:hiddenField   id="id" value="${person?.id}" name="id"></g:hiddenField>

    <fieldset class="form" id="personData">
        <li>
            <label for="firstNameText">firstName</label></li> <li>
            <input type="text" name="firstNameText" id="firstNameText" value="${person?.firstName}" size="50" >
        </li>
        <br>
        <li>
            <label for="middleNameText">middleName</label></li> <li>
            <input type="text" name="middleNameText" id="middleNameText" value="${person?.middleName}" size="50" > </li><br>
        <li>
            <label for="lastNameText">lastName</label></li> <li>
            <input type="text" name="lastNameText" id="lastNameText" value="${person?.lastName}" size="50" >
        </li><br>
        <li>
            <label for="idNumberText">idNumber</label></li> <li>
            <input type="text" name="idNumberText" id="idNumberText" value="${person?.idNumber}" size="50" >
        </li><br>
        <li>
            <label for="dateOfBirth">Date Of Birth</label></li> <li>
            <input type="date" name="dateOfBirth" id="dateOfBirth" value="${person?.birthOfDate}"></li><br>
        <li>
            <label for="gender">gender</label></li> <li>
            <g:select name="gender" from="${Person.getConstrainedProperties().gender.inList}" value="${person?.gender}" />
        </li>
        <br>
        <li>
            <label for="location">Location:</label></li> <li>
            <g:select name="location" value="${person?.location?.id}" noSelection="${['':'Select One...']}" from="${personinfo.Location?.list()}" optionKey="id" optionValue="id"/>
            <g:link url="[action:'create',controller:'location']" params="${params}">add location</g:link>
%{--            //not the whole page ,, loading ajax--}%
        </li>
        <br>
        <li>
            <label for="cont">Contact Info:</label></li> <li>
            <g:select name="cont" value="${person?.contactsInfo?.id}" noSelection="${['':'Select One...']}" from="${personinfo.ContactInfo?.list()}" optionKey="id" optionValue="id"/>
            <g:link url="[action:'create',controller:'contactInfo']" params="${[id:person.id]}">add contact info</g:link>
        </li>
        <br>
        <li>
            <label for="cont">Relates:</label></li> <li>
            <g:select name="relate" value="${person?.relates?.id}" noSelection="${['':'Select One...']}" from="${personinfo.Relate?.list()}" optionKey="id" optionValue="id" />
            <g:link url="[action:'create',controller:'relate']" params="${[id:person.id]}">add relate</g:link>
        </li>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton id="btn" name="save"   />
    </fieldset>
</g:form>
</body>
</html>