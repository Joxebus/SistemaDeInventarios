<%@ page import="sistemadeinventarios.*" %>
<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <!--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">       -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'invalid.css')}" type="text/css">


    <!-- jQuery -->
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.js')}"></script>
    <!-- jQuery Configuration -->
    <script type="text/javascript" src="${resource(dir: 'js', file: 'simpla.js')}"></script>
    <!-- Facebox jQuery Plugin -->
    <script type="text/javascript" src="${resource(dir: 'js', file: 'facebox.js')}"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.js')}"></script>
    <!-- jQuery Datepicker Plugin -->
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.xml')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery_002.js')}"></script>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<div id="body-wrapper"><!-- Wrapper for the radial gradient background -->
    <div id="sidebar">
        <div id="sidebar-wrapper">
            <!-- Contenido -->
            <h1 id="sidebar-title">SISINV</h1>
            <ul id="main-nav"><!-- Accordion Menu -->
                <li>
                    <a class="nav-top-item current" href="${createLink(uri: '/')}"><g:message
                            code="default.home.label"/></a>
                </li>

                <li>
                    <a href="#" class="nav-top-item">
                        Categorias
                    </a>
                    <ul style="display: none;">
                        <g:if test="${Categoria.list()}">
                            <li><g:link action="index" controller="categoria">Listar categorias</g:link></li>
                        </g:if>
                        <li><g:link class="create" action="create"
                                    controller="categoria">Agregar categor&iacute;a</g:link></li>
                    </ul>
                </li>

                <li>
                    <a href="#" class="nav-top-item">
                        Instituciones
                    </a>
                    <ul style="display: none;">
                        <g:if test="${Institucion.list()}">
                            <li><g:link action="index" controller="institucion">Listar institicuones</g:link></li>
                        </g:if>
                        <li><g:link class="create" action="create"
                                    controller="institucion">Agregar Instituci&oacute;n</g:link></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>

    <div id="main-content">
        <div class="content-box-content">
            <g:layoutBody/>
            <g:javascript library="application"/>
            <r:layoutResources/>
        </div>
    </div>


</div>
</body>
</html>