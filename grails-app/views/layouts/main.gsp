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

    <div id="sidebar"><div id="sidebar-wrapper"><!-- Sidebar with logo and menu -->

        <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>

        <!-- Logo (221px wide) -->
        <a href="#"><img id="logo" src="images/logo.png" alt="Simpla Admin logo"></a>

        <!-- Sidebar Profile links -->
        <div id="profile-links">
            Hello, <a href="#" title="Edit your profile">John Doe</a>, you have <a href="#messages" rel="modal"
                                                                                   title="3 Messages">3 Messages</a><br>
            <br>
            <a href="#" title="View the Site">View the Site</a> | <a href="#" title="Sign Out">Sign Out</a>
        </div>

        <ul id="main-nav"><!-- Accordion Menu -->
            <li>
                <a class="nav-top-item current no-submenu" href="${createLink(uri: '/')}"><g:message
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

            <li>
                <a href="#" class="nav-top-item">
                    Productos
                </a>
                <ul style="display: none;">
                    <g:if test="${Producto.list()}">
                        <li><g:link action="index" controller="producto">Listar productos</g:link></li>
                    </g:if>
                    <li><g:link class="create" action="create"
                                controller="producto">Agregar Producto</g:link></li>
                </ul>
            </li>

        </ul>

    </div></div> <!-- End #sidebar -->

    <div id="main-content"><!-- Main Content Section with everything -->

        <noscript><!-- Show a notification if the user has disabled javascript -->
            <div class="notification error png_bg">
                <div>
                    Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/"
                                                                                          title="Upgrade to a better browser">upgrade</a> your browser or <a
                        href="http://www.google.com/support/bin/answer.py?answer=23852"
                        title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
                </div>
            </div>
        </noscript>

        <!-- Page Head -->
        <h2>Welcome John</h2>

        <p id="page-intro">What would you like to do?</p>

        <ul class="shortcut-buttons-set">

            <li><a class="shortcut-button" href="#"><span>
                <img src="images/pencil_48.png" alt="icon"><br>
                Write an Article
            </span></a></li>

            <li><a class="shortcut-button" href="#"><span>
                <img src="images/paper_content_pencil_48.png" alt="icon"><br>
                Create a New Page
            </span></a></li>

            <li><a class="shortcut-button" href="#"><span>
                <img src="images/image_add_48.png" alt="icon"><br>
                Upload an Image
            </span></a></li>

            <li><a class="shortcut-button" href="#"><span>
                <img src="images/clock_48.png" alt="icon"><br>
                Add an Event
            </span></a></li>

            <li><a class="shortcut-button" href="#messages" rel="modal"><span>
                <img src="images/comment_48.png" alt="icon"><br>
                Open Modal
            </span></a></li>

        </ul><!-- End .shortcut-buttons-set -->

        <div class="clear"></div> <!-- End .clear -->
        <div class="content-box">
            <g:layoutBody/>
            <g:javascript library="application"/>
            <r:layoutResources/>
        </div>

        <div id="footer">
            <small><!-- Remove this notice or replace it with whatever you want -->
            © Copyright 2009 Your Company | Powered by <a
                    href="http://themeforest.net/item/simpla-admin-flexible-user-friendly-admin-skin/46073">Simpla Admin</a> | <a
                    href="#">Top</a>
            </small>
        </div><!-- End #footer -->

    </div> <!-- End #main-content -->

</div>
</body>
</html>