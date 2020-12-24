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
<h1>create new location</h1>
<g:form action="save" controller="location" method="post">
    <g:hiddenField   id="id" value="${location?.id}" name="id">
    </g:hiddenField>

    <fieldset class="form" id="locationData">
        <li>
            <label for="governorateText">governorate:</label>
            <input type="text" name="governorateText" id="governorateText" size="30" >
        </li>
        <br>
        <li>
        <label for="townText">town:</label>
         <input type="text" name="townText" id="townText" size="30" ></li><br>
        <li>
        <label for="neighborhoodText">neighborhood:</label>
        <input type="text" name="neighborhoodText" id="neighborhoodText" size="30" ></li><br>
        <li>
        <label for="streetText">street:</label>
         <input type="text" name="streetText" id="streetText" size="30" ></li><br>
        <li>
        <label for="buildingText">building:</label>
        <input type="text" name="buildingText" id="buildingText" size="30" ></li><br>
    </fieldset>


    <fieldset class="buttons">
        <g:submitButton id="btn" name="save"   />
    </fieldset>
</g:form>
</body>
</html>