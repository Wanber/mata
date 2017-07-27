<?php get_header();
/* Template Name: Pagina Parceiros */
?>

    <script>
        function filtrar() {
            $(document).ready(function () {
                $filtro = $('#filtro_txt').val();
                $filtro = $filtro.toLowerCase()

                $(".filtro").each(function () {
                    $id = '#filtravel-' + $(this).attr('rel');
                    $filtravel_txt = $($id).html();
                    $filtravel_txt = $filtravel_txt.toLowerCase();

                    if ($filtravel_txt.indexOf($filtro) != -1)
                        $(this).fadeIn(300);
                    else
                        $(this).fadeOut(300);
                });
            });
        }
        ;
    </script>

    <div class="corpo col-md-12">
        <div class="content row">

            <?php include 'sidebar-toppage.php'; ?>


            <?php include('sidebar-filtro.php') ?>

            <?php
            $fil_cidades = @implode(",", $_REQUEST['checkbox-cidade']);
            $fil_cidades != '' ? $fil_cidades = ' cidade=' . $fil_cidades : $fil_cidades = '';

            $fil_cats = @array_merge((array)$_REQUEST['checkbox-of'], (array)$_REQUEST['checkbox-oc'], (array)$_REQUEST['checkbox-at'], (array)$_REQUEST['checkbox-iu'], (array)$_REQUEST['checkbox-lz'], (array)$_REQUEST['checkbox-ev']);
            empty($fil_cats) ? $fil_cats = '' : $fil_cats = @implode(",", $fil_cats);
            $fil_cats != '' ? $fil_cats = ' categoria=' . $fil_cats : $fil_cats = '';

            $fil_tipo = @implode(",", $_REQUEST['checkbox-tipo']);
            $fil_tipo != '' ? $fil_tipo = ' tipo=' . $fil_tipo : $fil_tipo = '';

            empty($_REQUEST['checkbox-ev']) ? $fil_modalidade = ' modalidade=empreendimento' : $fil_modalidade = ' modalidade=empreendimento,evento';
            @$_REQUEST['checkbox-eventos'] == 'on' ? $fil_modalidade = ' modalidade=empreendimento,evento' : $fil_modalidade = ' modalidade=empreendimento';

            $query = '[aofoc' . $fil_cidades . $fil_cats . $fil_modalidade . $fil_tipo . ']';

            $resultados = json_decode(do_shortcode($query));
            $num_resultados = count($resultados);
            ?>

            <div class="col-md-9">
                <div class="page-header">
                    <h1>RESULTADOS DA BUSCA
                        <small><?php echo $num_resultados ?> resultados</small>
                    </h1>
                </div>
                <ol class="breadcrumb">
                    <input id="filtro_txt" type="text" name="pesquisa" placeholder="Filtrar resultados..."
                           style="border: none; padding: 4px; width: 100%; background: transparent"
                           onkeyup="filtrar()">
                </ol>

                <?php
                foreach ($resultados as $resultado) {
                    echo '
                    <a data-toggle="tooltip" title="' . stripslashes($resultado->nome) . '" class="filtro" rel="' . $resultado->id . '" href="' . get_site_url() . '/parceiro/?id=' . $resultado->id . '">
                        <div class="col-md-4 thumb-item">
                            <div class="thumbnail">
                                <img src="' . $resultado->url_img1 . '?w=300" alt="" style="width:100%;height:170px">
                                <div class="caption" ><h3 id="filtravel-' . $resultado->id . '" style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">' . stripslashes($resultado->nome) . '</h3>
                                    <p>ver detalhes</p>
                                </div>
                            </div>
                        </div>
                    </a>
                ';
                }
                ?>

                <div class="col-md-12 visible-xs visible-sm">
                    <a style="margin-bottom: 25px; padding: 10px" href="javascript:togle_menu_mb()"
                       class="btn btn-primary btn-block" type="submit"><span
                                class="glyphicon glyphicon-search"
                                aria-hidden="true"></span> NOVA PESQUISA
                    </a>
                </div>

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