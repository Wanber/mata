<?php get_header() ?>

<?php

if(@$_REQUEST['submit'] == 'enviar-foto') {
    $registro = array();
    $registro['nome'] = addslashes($_REQUEST['nome']);
    $registro['local'] = addslashes($_REQUEST['local']);
    $registro['cidade_id'] = addslashes($_REQUEST['cidade']);

    $foto = $_FILES['foto'];
    $upload = wp_handle_upload($foto, array('test_form' => false));
    if ($upload && !isset($upload['error'])) {
        $registro['url_foto'] = $upload['url'];
    } else {
        $registro['url_foto'] = "";
    }

    if(add_registro_foto($registro)) {
        echo '
            <div class="alert alert-success alert-dismissible" role="alert" style="margin: 15px 0 10px 0;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                Foto enviada para análise.
            </div>
        ';
    } else {
        echo '
            <div class="alert alert-warning alert-dismissible" role="alert" style="margin: 15px 0 10px 0;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                Não foi possível enviar.
            </div>
        ';
    }
}

global $wpdb;
if (@$_REQUEST['newsletter'] != '') {
    $add = add_newsletter(htmlspecialchars(addslashes($_REQUEST['newsletter'])));
    if ($add == 1)
        echo '
                <div class="alert alert-success alert-dismissible" role="alert" style="margin: 15px 0 10px 0;">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    Você foi inscrito em nossa newsletter.
                </div>
            ';
    elseif ($add == 0)
        echo '
                <div class="alert alert-warning alert-dismissible" role="alert" style="margin: 15px 0 10px 0;">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    Informe um email válido.
                </div>
            ';
    elseif ($add == -1)
        echo '
                <div class="alert alert-warning alert-dismissible" role="alert" style="margin: 15px 0 10px 0;">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    Você já está cadastrado em nossa newsletter.
                </div>
            ';
}
?>

    <div class="corpo col-md-12">
        <div class="content">

            <?php include 'sidebar-toppage.php'; ?>

            <?php //global $wpdb; $wpdb->query('')?>

            <section class="content-slider">

                <div class="owl-carousel">

                    <?php
                    $imgs = obter_imagens_slider(get_setting("slider_id__banner"), true);
                    foreach ($imgs as $img) {
                        echo '
                        <div class="item">
                            <img src="' . $img->image_url . '" class="img-rounded" style="height: 360px">
                            <span class="item-txt">' . $img->description . '</span>
                        </div>
                    ';
                    }
                    ?>

                </div>

            </section>

            <!--
            <section class="nossas-atracoes">
                <h2>Conheça nossas atrações</h2>
                <div class="atracoes-fotos">

                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <a href="#">
                                    <img src="http://lorempixel.com/400/450/?1" />
                                    <p class="atracoes-caption">coronel fabriciano</p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="http://lorempixel.com/400/450/?1" />
                                    <p class="atracoes-caption">timóteo</p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="http://lorempixel.com/400/450/?1" />
                                    <p class="atracoes-caption">ipatinga</p>
                                </a>
                            </li>
                            <a href="#">
                                <li>
                            <a href="#">
                            <img src="http://lorempixel.com/400/450/?1" />
                            <p class="atracoes-caption">santana do paraíso</p>
                            </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </section>

        -->
            <section class="montesua-viagem">
                <h2 class="text-center" style="margin-bottom: 20px; margin-top: 50px">Monte sua viagem</h2>
                <div class="col-md-12">
                    <form class="form-inline text-center" action="<?php echo get_site_url() ?>/parceiros" method="get">
                        <div class="form-group" style="padding-bottom: 30px;">
                            <select name="checkbox-cidade[]" class="form-control input-lg" style="width: 35vw;">
                                <option value="">Escolha aqui a cidade &nbsp;&nbsp;&nbsp;&nbsp;</option>
                                <?php $cidades = json_decode(do_shortcode('[aofoc_cidades]')); ?>
                                <?php foreach ($cidades as $cidade) {
                                    echo '<option value="' . $cidade->id . '">' . $cidade->cidade . '</option>';
                                } ?>
                            </select>
                            <button type="submit" class="btn btn-default input-lg"><span
                                    class="glyphicon glyphicon-search" aria-hidden="true"></span></button>

                        </div>
                        <br/>
                        <div class="form-group">
                            <input type="checkbox" name="checkbox-tipo[]" id="checkboxG1" value="onde_ficar"
                                   class="css-checkbox"/>
                            <label for="checkboxG1" class="css-label">Onde ficar &nbsp;&nbsp;</label>
                            <input type="checkbox" name="checkbox-tipo[]" id="checkboxG2" value="onde_comer"
                                   class="css-checkbox"/>
                            <label for="checkboxG2" class="css-label">Onde comer &nbsp;&nbsp;</label>
                            <input type="checkbox" name="checkbox-tipo[]" id="checkboxG3" value="atrativos"
                                   class="css-checkbox"/>
                            <label for="checkboxG3" class="css-label">Atrativos &nbsp;&nbsp;</label>
                            <input type="checkbox" name="checkbox-tipo[]" id="checkboxG4" value="lazer"
                                   class="css-checkbox"/>
                            <label for="checkboxG4" class="css-label">Lazer &nbsp;&nbsp;</label>
                            <input type="checkbox" name="checkbox-eventos" id="checkboxG5" value="on"
                                   class="css-checkbox"/>
                            <label for="checkboxG5" class="css-label">Eventos &nbsp;&nbsp;</label>
                        </div>
                    </form>
                </div>
            </section>

            <div class="clearfix"></div>

            <section class="newsletter" style="margin-top: 65px">
                <!-- FALTA FAZER O INPUT -->
                <form action="" method="post" class="form">
                    <div class="form-group">
                        <div class="input-group">
                            <input name="newsletter" type="email" class="form-control input-lg"
                                   placeholder="INFORME SEU EMAIL E RECEBA NOVIDADES SOBRE O VALE DO AÇO"/>
                            <span class="input-group-btn">
                            <button type="submit" class="btn btn-success btn-lg">ENVIAR</button>
                            </span>
                        </div>
                    </div>
                </form>
            </section>

            <section class="fotos">
                <h2>Olhar dos visitantes</h2>
                <div class="row">
                    <div id="carousel3" class="flexslider" style="padding-bottom: 30px">
                        <ul class="slides">
                            <li>
                                <a href="#">
                                    <img src="<?php echo get_template_directory_uri() ?>/img/item-exemplo-1.jpg"
                                         style="height: 230px"/>
                                    <p style="width:355px;padding:4px;font-size:1.5rem;font-weight:100;background: rgba(0,0,0,.3);color: #fff;margin-top:0px;position: absolute;margin-top: 178px">
                                        Parque Ipanema - Ipatinga<br/>Enviado por: <i>Wanber</i></p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="<?php echo get_template_directory_uri() ?>/img/item-exemplo-1.jpg"
                                         style="height: 230px"/>
                                    <p style="width:355px;padding:4px;font-size:1.5rem;font-weight:100;background: rgba(0,0,0,.3);color: #fff;margin-top:0px;position: absolute;margin-top: 178px">
                                        Parque Ipanema - Ipatinga<br/>Enviado por: <i>Wanber</i></p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="<?php echo get_template_directory_uri() ?>/img/item-exemplo-1.jpg"
                                         style="height: 230px"/>
                                    <p style="width:355px;padding:4px;font-size:1.5rem;font-weight:100;background: rgba(0,0,0,.3);color: #fff;margin-top:0px;position: absolute;margin-top: 178px">
                                        Parque Ipanema - Ipatinga<br/>Enviado por: <i>Wanber</i></p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="<?php echo get_template_directory_uri() ?>/img/item-exemplo-1.jpg"
                                         style="height: 230px"/>
                                    <p style="width:355px;padding:4px;font-size:1.5rem;font-weight:100;background: rgba(0,0,0,.3);color: #fff;margin-top:0px;position: absolute;margin-top: 178px">
                                        Parque Ipanema - Ipatinga<br/>Enviado por: <i>Wanber</i></p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="<?php echo get_template_directory_uri() ?>/img/item-exemplo-1.jpg"
                                         style="height: 230px"/>
                                    <p style="width:355px;padding:4px;font-size:1.5rem;font-weight:100;background: rgba(0,0,0,.3);color: #fff;margin-top:0px;position: absolute;margin-top: 178px">
                                        Parque Ipanema - Ipatinga<br/>Enviado por: <i>Wanber</i></p>
                                </a>
                            </li>

                        </ul>
                    </div>


                </div>
                <div class="text-right">
                    <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-fotos"
                       style="background: #20DD1C; border: none">Participe! Envie sua foto</a>
                    <a href="<?php echo get_site_url() ?>/olhar-dos-visitantes" class="btn btn-fotos">ver todos</a>
                </div>


                <style>
                    input {
                        height: 50px !important;
                        font-weight: 300;
                    }

                    label {
                        font-weight: 500;
                        color: #000;
                    }

                    textarea {
                        font-weight: 300;
                    }
                </style>

                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Envie sua foto</h4>
                            </div>
                            <form action="" method="post" name="enviar-foto" enctype="multipart/form-data">
                                <div class="modal-body" id="myModalText">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="nome" required placeholder="Seu nome">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" required name="local"
                                               placeholder="Local da foto">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleSelect1">Cidade</label>
                                        <select class="form-control" name="cidade" id="exampleSelect1" required>
                                            <?php $cidades = json_decode(do_shortcode('[aofoc_cidades]')); ?>
                                            <?php foreach ($cidades as $cidade) {

                                                echo '
                                                    <option value="'.$cidade->id.'">'.$cidade->cidade.'</option>
                                                ';
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="file" class="form-control-file" accept="image/*" name="foto" required>
                                    </div>
                                    <small class="text-info">A foto deve ter resolução mínima de 500x400</small>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-fotos" name="submit" value="enviar-foto">Enviar</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-top: 10px">Fechar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>


            <section class="agenda row">
                <h2>Agenda</h2>
                <div class="col-md-12">

                    <div id="carousel2" class="flexslider" style="padding-bottom: 30px">
                        <ul class="slides">

                            <?php
                            $eventos = json_decode(do_shortcode('[aofoc modalidade=evento limite=5]'));
                            foreach ($eventos as $evento) {

                                if($evento->dt_inicio == $evento->dt_fim)
                                    $data = $evento->dt_inicio;
                                else
                                    $data = $evento->dt_inicio.' - '.$evento->dt_fim;

                                if($evento->url_icone != '')
                                    $icone = $evento->url_icone;
                                else
                                    $icone = $evento->url_img1;

                                echo '
                                    <li>
                                        <a href="'.get_site_url().'/parceiro/?id='.$evento->id.'">
                                            <img
                                                src="'.$icone.'"
                                                style="height: 230px"/>
                                            <div
                                                style="position:absolute;background:rgba(0,0,0,0.4);color:white;width:340px;height:100px;margin-top:-100px;padding: 0 6px 0 6px">
                                                <h4>'.stripslashes($evento->nome).'</h4>
                                                <small>Data: '.$data.'</small>
                                                <br/>
                                                <small>Cidade: '.$evento->cidade.'</small>
                                            </div>
                                        </a>
                                    </li>
                                ';
                            }
                            ?>

                        </ul>
                    </div>

                    <div class="text-right">
                        <a href="<?php echo get_site_url() ?>/agenda" class="btn btn-fotos"
                           style="background: #20DD1C; border: none">ver agenda completa</a>
                    </div>

                    <!--
                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center">Agosto, 2016</div>
                            <table class="table table-striped">
                                <tr>
                                    <td>
                                        05. Abertura circuito de Minas Gerais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        11. Apresentação para novos parceiros
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        15. Encontro mensal de turistas na Serra dos Cocais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        15. Encontro mensal de turistas na Serra dos Cocais
                                    </td>
                                </tr>

                            </table>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center">Setembro, 2016</div>
                            <table class="table table-striped">
                                <tr>
                                    <td>
                                        05. Abertura circuito de Minas Gerais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        11. Apresentação para novos parceiros
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        15. Encontro mensal de turistas na Serra dos Cocais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        15. Encontro mensal de turistas na Serra dos Cocais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        15. Encontro mensal de turistas na Serra dos Cocais
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center">Outubro, 2016</div>
                            <table class="table table-striped">
                                <tr>
                                    <td>
                                        05. Abertura circuito de Minas Gerais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        05. Abertura circuito de Minas Gerais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        05. Abertura circuito de Minas Gerais
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        11. Apresentação para novos parceiros
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        15. Encontro mensal de turistas na Serra dos Cocais
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    -->
                </div>

            </section>
        </div>

    </div>
    </div>

    <!--
    <section class="facebook">
    &nbsp;<br>
    <div class="fb-like" data-href="http://www.circuitomataatlantica.com.br/" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
    </section>
    -->


<?php get_footer(); ?>