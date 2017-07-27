<?php get_header();
/* Template Name: Pagina Olhar dos visitantes */
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

            <div class="col-md-9">
                <div class="page-header">
                    <h1>OLHAR DOS VISITANTES</h1>
                </div>


                <div class="slideshow_fotos">
                    <?php
                    $fotos = json_decode(do_shortcode('[aofoc_fotos]'));

                    foreach ($fotos as $foto) {
                        $cidade = json_decode(do_shortcode('[aofoc_cidade cidade=' . $foto->cidade_id . ']'));
                        echo '
                        <a title="' . stripslashes($foto->local) . '" href="' . $foto->url_foto . '" class="col-md-4">
                            <div class="thumb-item">
                                <div class="thumbnail">
                                    <img src="' . $foto->url_foto . '?w=300" alt=""
                                         style="width:100%;height:160px">
                                    <div class="caption"><h3 style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">' . $foto->local . '</h3>
                                        <small>Cidade: ' . $cidade->cidade . '</small>
                                        <br>
                                        <small>Enviado por: ' . $foto->nome . '</small>
                                    </div>
                                </div>
                            </div>
                        </a>
                        ';
                    }
                    ?>
                </div>

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