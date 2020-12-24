<%--
  Created by IntelliJ IDEA.
  User: ELIFE
  Date: 12/14/2020
  Time: 1:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />

    <title>locationdetails </title>
</head>

<body>
<h1>View location details </h1>

<g:form resource="${this.location}" method="post" role="main" class="content ">

    <fieldset>
        governorate: ${location.governorate}<br />
        town: ${location.town}<br />
        neighborhood: ${location.neighborhood}<br />
        street: ${location.street}<br />
        building: ${location.building}<br />

    </fieldset>

</g:form>

</body>
</html>