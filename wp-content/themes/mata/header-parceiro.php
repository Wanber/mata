<?php
if (!is_numeric(@$_REQUEST['id']))
    echo '<script>location.href="' . get_site_url() . "/parceiros" . '";</script>';

$parceiro_id = $_REQUEST['id'];
$registros = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados d INNER JOIN " . $wpdb->prefix . PLUGIN_PREFIX . "cidades c WHERE cidade_id = c.id" . " AND d.id = " . $parceiro_id . "");
$parceiro = $registros[0];
?>


<!DOCTYPE html>
<!--[if IE 7]>
<html id="ie7" <?php language_attributes(); ?>><![endif]-->
<!--[if IE 8]>
<html id="ie8" <?php language_attributes(); ?>><![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>><!--<![endif]-->
<head>
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

    <meta charset="<?php bloginfo('charset'); ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="<?php bloginfo('description'); ?>"/>
    <meta name="keywords" content="<?php //echo get_setting("palavras-chave"); ?>"/>
    <meta name="robots" content="index, follow">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>

    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/material-icons.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/magnific-popup.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/sweetalert.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/flexslider.css" type="text/css"
          media="screen"/>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/owl.theme.default.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/style-nav-owl.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/jquery.mmenu.all.css">

    <link href="<?php echo get_template_directory_uri() ?>/css/style.css" rel="stylesheet">

    <link href="<?php echo get_template_directory_uri() ?>/css/material-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/flexslider.css" type="text/css"
          media="screen"/>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/style-nav.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/style-checkbox.css">

    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/css/style.css">

    <title><?php echo $parceiro->nome . ' - ' . get_bloginfo('name'); ?></title>

    <link rel="profile" href="http://gmpg.org/xfn/11"/>
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>"/>

    <?php wp_head(); ?>

</head>

<body class="index" id="home">


<nav class="navbar navbar-default navbar-fixed-top" style="padding-left: 0">
    <header class="header col-md-12" style="padding-bottom: 6px" id="top_header">
        <div class="col-sm-4"><a style="font-size: 1.4rem"><?php echo get_setting('topo__frase') ?></a></div>
        <div class="col-sm-6" style="visibility: hidden;">.<!--nada--></div>
        <div class="col-sm-2 text-right">
            <div class="social" style="width: auto">
                <?php
                if (get_setting('topo__facebook') != '')
                    echo '&nbsp;<a target="_blank" href="' . get_setting('topo__facebook') . '"><img
                        src="' . get_template_directory_uri() . '/img/facebook.png"/></a>';
                if (get_setting('topo__instagram') != '')
                    echo '&nbsp;<a target="_blank" href="' . get_setting('topo__instagram') . '"><img
                        src="' . get_template_directory_uri() . '/img/instagram.png"/></a>';
                if (get_setting('topo__youtube') != '')
                    echo '&nbsp;<a target="_blank" href="' . get_setting('topo__youtube') . '"><img
                        src="' . get_template_directory_uri() . '/img/youtube.png"/></a>';
                ?>
            </div>
        </div>
    </header>

    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" style="margin-left: 15px; margin-right: 40px"
               href="<?php echo get_site_url() ?>"><img class=" brand-img"
                                                        src="<?php echo get_template_directory_uri() ?>/img/logo.png"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->

        <style>
            @media screen and (min-width: 1000px) {
                #menuzes {
                    margin-top: -50px;
                    float: right;
                }

                #menuzes li {
                    padding-left: 0;
                    padding-right: 0;
                }
            }

            @media screen and (min-width: 1062px) {
                #menuzes {
                    margin-top: 0px;
                    float: none;
                }
            }

            @media screen and (max-width: 1144px) {
                #inicio {
                    display: none;
                }
            }

            @media screen and (min-width: 1185px) {
                #menuzes {
                    font-size: 1.6rem !important;
                }
            }

            @media screen and (min-width: 1220px) {
                #menuzes li {
                    padding-left: 0 !important;
                    padding-right: 0 !important;
                }
            }

            @media screen and (min-width: 769px) and (max-width: 1000px) {
                #top_header {
                    display: none;
                }

                .navbar-header {
                    float: none;
                }

                .navbar-left, .navbar-right {
                    float: none !important;
                }

                .navbar-toggle {
                    display: block;
                }

                .navbar-collapse {
                    margin-top: 20px;
                    border-top: 1px solid transparent;
                    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
                }

                .navbar-fixed-top {
                    top: 0;
                    border-width: 0 0 1px;
                }

                .navbar-collapse.collapse {
                    display: none !important;
                }

                .navbar-nav {
                    background: #3498DB !important;
                    float: none !important;
                    margin-top: 7.5px;
                }

                .navbar-nav > li {
                    float: none;
                }

                .navbar-nav > li > a {
                    background: #3498DB !important;
                    padding-top: 10px;
                    padding-bottom: 10px;
                }

                .collapse.in {
                    display: block !important;
                }
            }
        </style>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" style="font-size: 1.5rem;" id="menuzes">
                <li id="inicio"><a href="<?php echo get_site_url() ?>">Início</a></li>
                <li><a href="<?php echo get_site_url() ?>/sobre">Histórico</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Onde ficar </a>
                    <ul class="dropdown-menu" style="visibility: visible">
                        <?php
                        $onde_ficar_cats = get_categories(array(
                            'parent' => get_category_by_slug('cat_of')->term_id,
                            'hide_empty' => false,
                            'hierarchical' => 1
                        ));

                        foreach ($onde_ficar_cats as $onde_ficar_cat) {

                            echo '
                                <li><a href="' . get_site_url() . '/parceiros/?checkbox-of=' . $onde_ficar_cat->cat_ID . '">' . $onde_ficar_cat->name . '</a></li>
                            ';
                        }
                        ?>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Onde comer </a>
                    <ul class="dropdown-menu">
                        <?php
                        $onde_comer_cats = get_categories(array(
                            'parent' => get_category_by_slug('cat_oc')->term_id,
                            'hide_empty' => false,
                            'hierarchical' => 1
                        ));

                        foreach ($onde_comer_cats as $onde_comer_cat) {

                            echo '
                                <li><a href="' . get_site_url() . '/parceiros/?checkbox-oc=' . $onde_comer_cat->cat_ID . '">' . $onde_comer_cat->name . '</a></li>
                            ';
                        }
                        ?>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Curta o Vale do Aço </a>
                    <ul class="dropdown-menu">

                        <li><a href="<?php echo get_site_url() ?>/parceiros/?checkbox-tipo[]=lazer">Lazer</a></li>
                        <li><a href="<?php echo get_site_url() ?>/agenda">Agenda</a></li>
                        <li><a href="<?php echo get_site_url() ?>/parceiros/?checkbox-tipo[]=info_uteis">Informações
                                Úteis</a></li>
                    </ul>
                </li>

                <li><a href="<?php echo get_site_url() ?>/contato">Contato</a></li>

                <li class="dropdown"
                    style="background: rgb(32, 221, 28); border-radius: 2px; margin: 12px 0 0 45px; padding: 0">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Cadastre</a>
                    <ul class="dropdown-menu">
                        <li><a href="<?php echo get_site_url() ?>/form-cadastro/?evento">Evento</a></li>
                        <li><a href="<?php echo get_site_url() ?>/form-cadastro/?empreendimento">Empreendimento</a></li>
                    </ul>
                </li>
            </ul>


        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<script>
    /*
     $(document).ready(function () {
     $('dropdown-toggle').dropdown()
     });
     */
</script>

<div style="width: 100%; height: 100px;"></div>