

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Create Relate Types </title>
</head>

<body>
<h1>Create new relate type</h1>
        <div>
            <g:form action="save" controller="relateType" method="post">
                <g:hiddenField   id="id" value="${relateType?.id}" name="id">
                </g:hiddenField>
                <fieldset>
                <div>
%{--                    <li>--}%
%{--                    <label for="type">relate type:</label>--}%
%{--                        <g:select  name="type" id="type" value="${contactInfoType?.id}" from="${Lookups.ContactInfoType.list()}" optionKey="type" optionValue="type"/>--}%
%{--                        <g:select  name="type" id="type" value="${relateType?.id}" from="${Lookups.RelateType?.list()}" optionKey="type" optionValue="type"/>--}%
%{--                    </li><br>--}%
                    <select id="type" name="type"> relate type
                        <option value="Father">Father</option>
                    <option value="Mother">Mother</option>
                    <option value="Son">Son</option>
                    <option value="wife">wife</option>
                    <option value="Daughter">Daughter</option>
                    </select>

                </div>
                </fieldset>
                    <fieldset class="buttons">
                        <g:actionSubmit value="Save"  />
                    </fieldset>
            </g:form>
        </div>
</body>
</html>