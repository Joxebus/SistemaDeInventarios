<%@ page import="sistemadeinventarios.Institucion" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>


    <div class="content-box-header">
        <div class="clear"></div>
        <br>
        <b>Registrar nueva Instituci&oacute;n</b>
    </div> <!-- End .content-box-header -->
    <g:if test="${flash.message}">
        <div class="notification information png_bg" role="status">${flash.message}</div>
    </g:if>
    <div class="clear"></div>


    <g:hasErrors bean="${institucionInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${institucionInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>

    <div class="content-box-content">
        <g:form action="save">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>

</body>
</html>
