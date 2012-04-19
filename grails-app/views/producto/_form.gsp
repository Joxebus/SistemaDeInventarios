<%@ page import="sistemadeinventarios.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} required">
    <label for="categoria">
        <g:message code="producto.categoria.label" default="Categoria"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="categoria" name="categoria.id" from="${sistemadeinventarios.Categoria.list()}" optionKey="id"
              required="" value="${productoInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'codigoBarras', 'error')} required">
    <label for="codigoBarras">
        <g:message code="producto.codigoBarras.label" default="Codigo Barras"/>
        <span class="required-indicator">*</span>
    </label>
    <input type="file" id="codigoBarras" name="codigoBarras"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'existencia', 'error')} required">
    <label for="existencia">
        <g:message code="producto.existencia.label" default="Existencia"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="existencia" required=""
             value="${fieldValue(bean: productoInstance, field: 'existencia')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'institucion', 'error')} required">
    <label for="institucion">
        <g:message code="producto.institucion.label" default="Institucion"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="institucion" name="institucion.id" from="${sistemadeinventarios.Institucion.list()}" optionKey="id"
              required="" value="${productoInstance?.institucion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} ">
    <label for="nombre">
        <g:message code="producto.nombre.label" default="Nombre"/>

    </label>
    <g:textField name="nombre" value="${productoInstance?.nombre}"/>
</div>

