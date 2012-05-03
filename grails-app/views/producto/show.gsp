<%@ page import="sistemadeinventarios.Producto" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-producto" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list producto">

        <g:if test="${productoInstance?.categoria}">
            <li class="fieldcontain">
                <span id="categoria-label" class="property-label"><g:message code="producto.categoria.label"
                                                                             default="Categoria"/></span>

                <span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria"
                                                                                       action="show"
                                                                                       id="${productoInstance?.categoria?.id}">${productoInstance?.categoria?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${productoInstance?.codigoBarras}">
            <li class="fieldcontain">
                <span id="codigoBarras-label" class="property-label"><g:message code="producto.codigoBarras.label"
                                                                                default="Codigo Barras"/></span>
                <img src="${createLink(controller: 'producto', action: 'showImage', id:productoInstance?.id)}"/>

            </li>
        </g:if>

        <g:if test="${productoInstance?.existencia}">
            <li class="fieldcontain">
                <span id="existencia-label" class="property-label"><g:message code="producto.existencia.label"
                                                                              default="Existencia"/></span>

                <span class="property-value" aria-labelledby="existencia-label"><g:fieldValue bean="${productoInstance}"
                                                                                              field="existencia"/></span>

            </li>
        </g:if>

        <g:if test="${productoInstance?.institucion}">
            <li class="fieldcontain">
                <span id="institucion-label" class="property-label"><g:message code="producto.institucion.label"
                                                                               default="Institucion"/></span>

                <span class="property-value" aria-labelledby="institucion-label"><g:link controller="institucion"
                                                                                         action="show"
                                                                                         id="${productoInstance?.institucion?.id}">${productoInstance?.institucion?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${productoInstance?.nombre}">
            <li class="fieldcontain">
                <span id="nombre-label" class="property-label"><g:message code="producto.nombre.label"
                                                                          default="Nombre"/></span>

                <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${productoInstance}"
                                                                                          field="nombre"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${productoInstance?.id}"/>
            <g:link class="edit" action="edit" id="${productoInstance?.id}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
