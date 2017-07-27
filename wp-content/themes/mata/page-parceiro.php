<?php get_header('parceiro');
/* Template Name: Pagina Parceiro */

if (!is_numeric(@$_REQUEST['id']))
    echo '<script>location.href="' . get_site_url() . "/parceiros" . '";</script>';

$parceiro_id = $_REQUEST['id'];
$registros = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados d INNER JOIN " . $wpdb->prefix . PLUGIN_PREFIX . "cidades c WHERE cidade_id = c.id" . " AND d.id = " . $parceiro_id . "");
$parceiro = $registros[0];
?>

    <div class="corpo col-md-12">
        <div class="content row">

            <?php include 'sidebar-toppage.php'; ?>

            <?php include('sidebar-filtro.php') ?>

            <?php if ($parceiro->modalidade == 'empreendimento') { ?>

                <div class="col-md-9">
                    <div class="page-header">
                        <h1><?php echo stripslashes($parceiro->nome) ?>
                            <small><?php echo $parceiro->cidade ?></small>
                        </h1>
                    </div>

                    <ol class="breadcrumb">
                        <li><a href="<?php echo get_site_url() ?>/parceiros">início</a></li>
                        <?php
                        switch ($parceiro->tipo) {
                            case 'atrativo':
                                $tipo = 'Atrativo';
                                $sg = 'at';
                                break;
                            case 'onde_ficar':
                                $tipo = 'Onde Ficar';
                                $sg = 'of';
                                break;
                            case 'onde_comer':
                                $tipo = 'Onde Comer';
                                $sg = 'oc';
                                break;
                            case 'lazer':
                                $tipo = 'Lazer';
                                $sg = 'lz';
                                break;
                            case 'info_uteis':
                                $tipo = 'Informações Úteis';
                                $sg = 'iu';
                                break;
                            case '':
                                echo '-';
                                break;
                        }
                        ?>
                        <li>
                            <a href="<?php echo get_site_url() ?>/parceiros/?checkbox-tipo[]=<?php echo $parceiro->tipo ?>"><?php echo $tipo ?></a>
                        </li>
                        <li><a
                                    href="<?php echo get_site_url() ?>/parceiros/?checkbox-<?php echo $sg ?>[]=<?php echo $parceiro->cat_id ?>"><?php $categoria = get_category($parceiro->cat_id);
                                echo $categoria->name ?></a></li>
                        <li class="active"><?php echo stripslashes($parceiro->nome) ?></li>
                    </ol>


                    <div class="descricao-item">
                        <div class="row">
                            <?php
                            if ($parceiro->url_icone != '')
                                echo '
                                <div class="col-md-3">
                                    <img class="img-responsive" src="' . $parceiro->url_icone . '"
                                         style="width: 100%; height: 150px">
                                </div>
                                <div class="col-md-9">' . stripslashes($parceiro->descricao) . '</div>
                            ';
                            else
                                echo '<div class="col-md-12">' . stripslashes($parceiro->descricao) . '</div>';
                            ?>
                        </div>

                        <div id="slider" class="flexslider" style="margin-top: 30px">
                            <ul class="slides">
                                <?php

                                echo '<li><img src="' . $parceiro->url_img1 . '" style="height: 390px"/></li>';

                                if ($parceiro->url_img2 != '')
                                    echo '<li><img src="' . $parceiro->url_img2 . '" style="height: 390px"/></li>';

                                if ($parceiro->url_img3 != '')
                                    echo '<li><img src="' . $parceiro->url_img3 . '" style="height: 390px"/></li>';

                                if ($parceiro->url_img4 != '')
                                    echo '<li><img src="' . $parceiro->url_img4 . '" style="height: 390px"/></li>';
                                ?>
                            </ul>
                        </div>
                        <div id="carousel" class="flexslider">
                            <ul class="slides">
                                <?php

                                if ($parceiro->url_img2 != '') {
                                    echo '<li><img src="' . $parceiro->url_img1 . '" style="height: 100px"/></li>';

                                    if ($parceiro->url_img2 != '')
                                        echo '<li><img src="' . $parceiro->url_img2 . '" style="height: 100px"/></li>';

                                    if ($parceiro->url_img3 != '')
                                        echo '<li><img src="' . $parceiro->url_img3 . '" style="height: 100px"/></li>';

                                    if ($parceiro->url_img4 != '')
                                        echo '<li><img src="' . $parceiro->url_img4 . '" style="height: 100px"/></li>';
                                }
                                ?>
                            </ul>
                        </div>

                        <hr>

                        <div class="row">

                            <?php
                            if ($parceiro->endereco != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Endereço:</b> ' . $parceiro->endereco . '</p></div>';
                            if ($parceiro->telefone != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Telefone:</b> ' . $parceiro->telefone . '</p></div>';
                            if ($parceiro->resp_contato != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Responsável:</b> ' . $parceiro->resp_contato . '</p></div>';
                            if ($parceiro->whatsapp != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Whatsapp:</b> ' . $parceiro->whatsapp . '</p></div>';
                            if ($parceiro->email != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Email:</b> ' . $parceiro->email . '</p></div>';
                            if ($parceiro->facebook != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Facebook:</b> <a href="' . $parceiro->facebook . '" target="_blank">' . $parceiro->facebook . '</a></p></div>';
                            if ($parceiro->site != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Site:</b> <a href="' . $parceiro->site . '" target="_blank">' . $parceiro->site . '</a></p></div>';
                            ?>

                        </div>

                        <hr>

                        <div class="row mapa-item">
                            <iframe
                                    src="https://www.google.com/maps?q=<?php echo $parceiro->endereco ?>&output=embed"
                                    width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>

                        <div class="col-md-12 visible-xs visible-sm">
                            <a style="margin-bottom: 25px; padding: 10px" href="javascript:togle_menu_mb()"
                               class="btn btn-primary btn-block" type="submit"><span
                                        class="glyphicon glyphicon-search"
                                        aria-hidden="true"></span> NOVA PESQUISA
                            </a>
                        </div>
                    </div>
                </div><!-- /col-md-9 -->

            <?php } elseif ($parceiro->modalidade == 'evento') { ?>

                <div class="col-md-9">
                    <div class="page-header">
                        <h1><?php echo stripslashes($parceiro->nome) ?>
                            <small><?php echo $parceiro->cidade ?></small>
                        </h1>
                    </div>

                    <ol class="breadcrumb">
                        <li><a href="<?php echo get_site_url() ?>/parceiros">início</a></li>
                        <li>
                            <a href="<?php echo get_site_url() ?>/parceiros/?checkbox-eventos=on">Eventos</a>
                        </li>
                        <li>
                            <a href="<?php echo get_site_url() ?>/parceiros/?checkbox-ev[]=<?php echo $parceiro->cat_id ?>"><?php $categoria = get_category($parceiro->cat_id);
                                echo $categoria->name ?></a>
                        </li>
                        <li class="active"><?php echo stripslashes($parceiro->nome) ?></li>
                    </ol>


                    <div class="descricao-item">
                        <div class="row">
                            <?php
                            if ($parceiro->url_icone != '')
                                echo '
                                <div class="col-md-3">
                                    <img class="img-responsive" src="' . $parceiro->url_icone . '?w=150"
                                         style="width: 100%; height: 150px">
                                </div>
                                <div class="col-md-9">' . stripslashes($parceiro->descricao) . '</div>
                            ';
                            else
                                echo '<div class="col-md-12">' . stripslashes($parceiro->descricao) . '</div>';
                            ?>
                        </div>

                        <div id="slider" class="flexslider" style="margin-top: 30px">
                            <ul class="slides">
                                <?php

                                echo '<li><img src="' . $parceiro->url_img1 . '" style="height: 380px"/></li>';

                                if ($parceiro->url_img2 != '')
                                    echo '<li><img src="' . $parceiro->url_img2 . '" style="height: 380px"/></li>';

                                if ($parceiro->url_img3 != '')
                                    echo '<li><img src="' . $parceiro->url_img3 . '" style="height: 380px"/></li>';

                                if ($parceiro->url_img4 != '')
                                    echo '<li><img src="' . $parceiro->url_img4 . '" style="height: 380px"/></li>';
                                ?>
                            </ul>
                        </div>
                        <div id="carousel" class="flexslider">
                            <ul class="slides">
                                <?php

                                if ($parceiro->url_img2 != '') {
                                    echo '<li><img src="' . $parceiro->url_img1 . '" style="height: 100px"/></li>';

                                    if ($parceiro->url_img2 != '')
                                        echo '<li><img src="' . $parceiro->url_img2 . '" style="height: 100px"/></li>';

                                    if ($parceiro->url_img3 != '')
                                        echo '<li><img src="' . $parceiro->url_img3 . '" style="height: 100px"/></li>';

                                    if ($parceiro->url_img4 != '')
                                        echo '<li><img src="' . $parceiro->url_img4 . '" style="height: 100px"/></li>';
                                }
                                ?>
                            </ul>
                        </div>

                        <hr>

                        <div class="row">

                            <?php
                            if ($parceiro->endereco != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Local:</b> ' . $parceiro->endereco . '</p></div>';
                            if ($parceiro->valor_entrada != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Entrada:</b> ' . $parceiro->valor_entrada . '</p></div>';
                            if ($parceiro->dt_inicio != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Data de início:</b> ' . $parceiro->dt_inicio . '</p></div>';
                            if ($parceiro->dt_fim != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Data de término:</b> ' . $parceiro->dt_fim . '</p></div>';
                            if ($parceiro->hr_inicio != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Hora de início:</b> ' . $parceiro->hr_inicio . '</p></div>';
                            if ($parceiro->hr_fim != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Hora de término:</b> ' . $parceiro->hr_fim . '</p></div>';
                            if ($parceiro->site != '')
                                echo '<div class="col-md-6"><p class="item-informacao"><b>Site:</b> <a href="' . $parceiro->site . '" target="_blank">' . $parceiro->site . '</a></p></div>';
                            ?>

                        </div>

                        <hr>

                        <div class="row mapa-item">
                            <iframe
                                    src="https://www.google.com/maps?q=<?php echo $parceiro->endereco ?>&output=embed"
                                    width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>

                        <div class="col-md-12 visible-xs visible-sm">
                            <a style="margin-bottom: 25px; padding: 10px" href="javascript:togle_menu_mb()"
                               class="btn btn-primary btn-block" type="submit"><span
                                        class="glyphicon glyphicon-search"
                                        aria-hidden="true"></span> NOVA PESQUISA
                            </a>
                        </div>
                    </div>
                </div><!-- /col-md-9 -->

            <?php } ?>

        </div><!-- /content -->
    </div>


<?php get_footer(); ?>