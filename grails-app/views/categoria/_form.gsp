<%@ page import="sistemadeinventarios.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} ">
    <label for="nombre">
        <g:message code="categoria.nombre.label" default="Nombre"/>

    </label>
    <g:textField name="nombre" value="${categoriaInstance?.nombre}"/>
</div>

