<%@ page import="sistemadeinventarios.Institucion" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${institucionInstance?.id}"/>
            <g:link class="edit" action="edit" id="${institucionInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
<a href="#show-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div>
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>

    <g:if test="${flash.message}">
        <div class="notification information png_bg" role="status"><div>${flash.message}</div></div>
    </g:if>

    <br>
    <g:if test="${institucionInstance?.nombre}">
        <h2>
            <g:fieldValue bean="${institucionInstance}" field="nombre"/>
        </h2>
    </g:if>

    <br/><br/>
    <table>
        <thead>
        <tr>
            <th><g:message code="producto.categoria.label" default="Categoria"/></th>
            <g:sortableColumn property="codigoBarras" title="${message(code: 'producto.codigoBarras.label', default: 'Codigo Barras')}"/>
            <g:sortableColumn property="existencia" title="${message(code: 'producto.existencia.label', default: 'Existencia')}"/>
            <th><g:message code="producto.institucion.label" default="Institucion"/></th>
            <g:sortableColumn property="nombre" title="${message(code: 'producto.nombre.label', default: 'Nombre')}"/>
        </tr>
        </thead>
        <tbody>
        <g:each in="${productoInstanceList}" status="i" var="productoInstance">
            <tr class="${(i % 2) == 0 ? 'alt-row' : 'odd'}">
                <td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "categoria")}</g:link></td>
                <td><img src="${createLink(controller: 'producto', action: 'showImage', id:productoInstance?.id)}"/></td>
                <td>${fieldValue(bean: productoInstance, field: "existencia")}</td>
                <td>${fieldValue(bean: productoInstance, field: "institucion")}</td>
                <td>${fieldValue(bean: productoInstance, field: "nombre")}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
