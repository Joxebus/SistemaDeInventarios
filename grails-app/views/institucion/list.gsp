<%@ page import="sistemadeinventarios.Institucion" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div>
    <div class="content-box-header">
        <div class="clear"></div>
        <br>
        <b>Listado de Instituciones registradas</b>
    </div> <!-- End .content-box-header -->

    <div class="clear"></div>

    <p id="page-intro">Aquí se muestran las diferentes instituciones que han sido registradas en el sistema</p>

    <g:if test="${flash.message}">
        <div class="notification information png_bg" role="status">${flash.message}</div>
    </g:if>
    <div class="clear"></div>

    <div class="content-box-content">

        <table>
            <thead>
            <tr>

                <g:sortableColumn property="nombre"
                                  title="${message(code: 'institucion.nombre.label', default: 'Nombre')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${institucionInstanceList}" status="i" var="institucionInstance">
                <tr class="${(i % 2) == 0 ? 'alt-row' : 'odd'}">

                    <td><g:link action="show"
                                id="${institucionInstance.id}">${fieldValue(bean: institucionInstance, field: "nombre")}</g:link></td>

                </tr>
            </g:each>
            </tbody>
        </table>


        <div class="pagination">
            <g:paginate total="${institucionInstanceTotal}"/>
        </div>
    </div> <!-- End .content-box-content -->
</div>
</body>
</html>
