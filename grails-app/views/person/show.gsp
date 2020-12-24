<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/13/2020
  Time: 12:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />

    <title>View person data </title>
</head>

<body>
    <h1>View person data </h1>
<g:form resource="${this.person}" method="post" role="main" class="content ">
        <fieldset>
        Name: ${person.firstName}<br />
        Middle Name: ${person.middleName}<br />
        Last Name: ${person.lastName}<br />
        gender: ${person.gender}<br />
            Date of Birth:${person.birthOfDate}<br />
        contact info : ${person.contactsInfo}<br />
        location: ${person.location}<br />
        </fieldset>
    <fieldset class="buttons">
%{--        <g:link action="edit" id="${person.id}">Edit</g:link><br />--}%
%{--        <g:link controller="person" action="mydelete" params="${params}"  onclick="return confirm('sure?');">delete</g:link>--}%
    </fieldset>
</g:form>
</body>
</html>