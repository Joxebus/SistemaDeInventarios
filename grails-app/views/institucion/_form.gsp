<%@ page import="sistemadeinventarios.Institucion" %>



<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'nombre', 'error')} ">
    <label for="nombre">
        <g:message code="institucion.nombre.label" default="Nombre"/>

    </label>
    <g:textField name="nombre" value="${institucionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'productos', 'error')} ">
    <label for="productos">
        <g:message code="institucion.productos.label" default="Productos"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${institucionInstance?.productos?}" var="p">
            <li><g:link controller="producto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="producto" action="create"
                    params="['institucion.id': institucionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'producto.label', default: 'Producto')])}</g:link>
        </li>
    </ul>

</div>

