<%@ page import="sistemadeinventarios.Categoria" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-categoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>


<div>
    <div class="content-box-header">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <div class="clear"></div>
    </div> <!-- End .content-box-header -->

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="nombre" title="${message(code: 'categoria.nombre.label', default: 'Nombre')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${categoriaInstance.id}">${fieldValue(bean: categoriaInstance, field: "nombre")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${categoriaInstanceTotal}"/>
    </div>
</div>
</body>
</html>
