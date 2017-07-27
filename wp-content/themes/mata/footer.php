<section class="logos row">

    <div class="col-md-4 cadastre-seu-evento">
        <span>CADASTRE AGORA!</span><br/>
        <a class="btn btn-fotos" href="<?php echo get_site_url() ?>/form-cadastro/?evento" style="border: none"
           role="button">Evento</a>
        <a class="btn btn-fotos" href="<?php echo get_site_url() ?>/form-cadastro/?empreendimento"
           style="background: #24CF42; border: none" role="button">Empreendimento</a>
    </div>
    <div class="col-md-8" style="margin: 0">

        <div class="col-md-12 parceiros text-center" style="margin-top: -20px; margin-bottom: 6px">
            <span class="">PARCEIROS</span>
        </div>

        <!--
            <div class="col-md-12 owl-carousel" id="parceiros" style="padding: 10px 10px 50px 10px">
                <?php
        $imgs = obter_imagens_slider(get_setting("slider_id__parceiros"));
        foreach ($imgs as $img) {
            $img->sl_url != '' ? $url = ' href="' . $img->sl_url . '"' : $url = '';

            echo '
                            <a ' . $url . ' target="_blank">
                                <img src="' . $img->image_url . '" style="width:90px; height:38px;">
                            </a>
                        ';
        }
        ?>
            </div>
            -->

        <div class="col-md-12" style="text-align: right;">
            <?php kw_sc_logo_carousel('default'); ?>
        </div>
    </div>


</section>

</div>

<footer class="footer" style="margin-top: 20px">
    <div class="row">

        <div class="col-md-12 item text-center">
            <li style="font-size: 1.4rem;">Vale do Aço Destino Turístico</li>
        </div>
    </div>
</footer>


<script src="<?php echo get_template_directory_uri() ?>/js/jquery.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/bootstrap.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/jquery.flexslider.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/owl.carousel.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/jquery.maskedinput.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/jquery.maskMoney.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/jquery.magnific-popup.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/sweetalert.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/jquery.mmenu.all.min.js"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/scripts.js"></script>


<script>

    $(window).load(function () {

        //$('[data-toggle="tooltip"]').tooltip();

        // The slider being synced must be initialized first
        $('#carousel').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 210,
            itemMargin: 5,
            asNavFor: '#slider'
        });

        $('#slider').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            sync: "#carousel"
        });

        $('#carousel2').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 340,
            itemMargin: 5
        });


    });

    $('#parceiros').owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        navText: ["<i class='fa fa-chevron-left'></i>a", "<i class='fa fa-chevron-right'></i>b"],
        autoplayHoverPause: true,
        autoplay: true,
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    });

    $('#banner').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        navText: ['<img width="30" height="30" src="<?php echo get_template_directory_uri() ?>/img/al.png" />', '<img width="30" height="30" src="<?php echo get_template_directory_uri() ?>/img/ar.png" />'],
        autoplayHoverPause: false,
        autoplay: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    });


    $('#carr_fotos').owlCarousel({
        loop: false,
        margin: 10,
        nav: true,
        //navText: [' '],
        navText: ['<img width="30" height="30" src="<?php echo get_template_directory_uri() ?>/img/al.png" />', '<img width="30" height="30" src="<?php echo get_template_directory_uri() ?>/img/ar.png" />'],
        autoplay: true,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    });

    $('#carr_agenda').owlCarousel({
        loop: false,
        margin: 10,
        nav: true,
        //navText: [' '],
        navText: ['<img width="30" height="30" src="<?php echo get_template_directory_uri() ?>/img/al.png" />', '<img width="30" height="30" src="<?php echo get_template_directory_uri() ?>/img/ar.png" />'],
        autoplay: true,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    });


    $('#carr_fotos').magnificPopup({
        delegate: 'a', // child items selector, by clicking on it popup will open
        type: 'image'
        // other options
    });

    $('.slideshow_fotos').magnificPopup({
        delegate: 'a', // child items selector, by clicking on it popup will open
        type: 'image'
        // other options
    });


    $('.data').mask('99/99/9999');
    $('.hora').mask('99:99');
    $('.rs').maskMoney({
        symbol: 'R$ ', showSymbol: true, thousands: '.', decimal: ',', symbolStay: true, allowZero: true
    });

    $('.telefone').focusout(function () {
        var phone, element;
        element = $(this);
        element.unmask();
        phone = element.val().replace(/\D/g, '');
        if (phone.length > 10) {
            element.mask("(99) 99999-999?9");
        } else {
            element.mask("(99) 9999-9999?9");
        }
    }).trigger('focusout');


</script>

<?php

if (@$_REQUEST['newsletter'] != '') {
    $add = add_newsletter(htmlspecialchars(addslashes($_REQUEST['newsletter'])));

    if ($add == '1')
        echo '
            <script>
                $( document ).ready(function() {
                    swal({
                      title: "Sucesso!",
                      text: "Você foi inscrito em nossa newsletter",
                      type: "success",
                      confirmButtonText: "OK"
                    });
                });
            </script>
        ';
    elseif ($add == '0')
        echo '
            <script>
                $( document ).ready(function() {
                    swal({
                      title: "Erro!",
                      text: "Informe um email válido",
                      type: "error",
                      confirmButtonText: "OK"
                    });
                });
            </script>
        ';
    elseif ($add == '-1')
        echo '
            <script>
                $( document ).ready(function() {
                    swal({
                      title: "Aviso!",
                      text: "Você já foi inscrito anteriormente",
                      type: "warning",
                      confirmButtonText: "OK"
                    });
                });
            </script>
        ';
}

$limite_upload_arq = 1048576;// 1MB
$ext_permitidas = array('image/jpg', 'image/jpeg', 'image/png', 'image/bmp');
$min_width = 500;
$min_height = 400;

if (@$_REQUEST['submit'] == 'enviar-foto') {
    $registro = array();
    $registro['nome'] = addslashes($_REQUEST['nome']);
    $registro['local'] = addslashes($_REQUEST['local']);
    $registro['cidade_id'] = addslashes($_REQUEST['cidade']);

    $foto = $_FILES['foto'];
    $fz = $_FILES['foto']['size'];
    $ft = $_FILES['foto']['type'];

    list($width, $height) = getimagesize($_FILES['foto']['tmp_name']);

    if ($fz > $limite_upload_arq)
        $add_foto = '0';//limite tam arquivo
    else {
        if (!in_array($ft, $ext_permitidas))
            $add_foto = '1';//extensao invalida
        else {
            if ($width < $min_width || $height < $min_height)
                $add_foto = '5';//resoluçao pequena
            else {
                $upload = wp_handle_upload($foto, array('test_form' => false));
                if ($upload && !isset($upload['error'])) {
                    $registro['url_foto'] = $upload['url'];

                    if (add_registro_foto($registro)) {
                        $add_foto = '2';//sucesso
                    } else {
                        $add_foto = '3';//erro interno
                    }
                } else {
                    $registro['url_foto'] = "";
                    $add_foto = '4';//cota de disco
                }
            }
        }
    }

    switch ($add_foto) {
        case '0':
            echo '
                <script>
                    $( document ).ready(function() {
                        swal({
                          title: "Falha ao enviar!",
                          text: "Sua foto não foi enviada, ela exede o limite de 1MB",
                          type: "error",
                          confirmButtonText: "OK"
                        });
                    });
                </script>
            ';
            break;
        case '1':
            echo '
                <script>
                    $( document ).ready(function() {
                        swal({
                          title: "Falha ao enviar!",
                          text: "Sua foto não foi enviada, extensão da imagem invalida",
                          type: "error",
                          confirmButtonText: "OK"
                        });
                    });
                </script>
            ';
            break;
        case '2':
            echo '
                <script>
                    $( document ).ready(function() {
                        swal({
                          title: "Sucesso!",
                          text: "Sua foto foi enviada para análise",
                          type: "success",
                          confirmButtonText: "OK"
                        });
                    });
                </script>
            ';
            break;
        case '3':
            echo '
                <script>
                    $( document ).ready(function() {
                        swal({
                          title: "Falha ao enviar!",
                          text: "Sua foto não foi enviada, erro interno",
                          type: "error",
                          confirmButtonText: "OK"
                        });
                    });
                </script>
            ';
            break;
        case '4':
            echo '
                <script>
                    $( document ).ready(function() {
                        swal({
                          title: "Falha ao enviar!",
                          text: "Sua foto não foi enviada, cota de disco do servidor estourada",
                          type: "error",
                          confirmButtonText: "OK"
                        });
                    });
                </script>
            ';
            break;
        case '5':
            echo '
                <script>
                    $( document ).ready(function() {
                        swal({
                          title: "Falha ao enviar!",
                          text: "Sua foto não foi enviada, ela não atende a resolução mínima de '.$min_width.'x'.$min_height.'",
                          type: "error",
                          confirmButtonText: "OK"
                        });
                    });
                </script>
            ';
            break;
    }
}
?>

<?php wp_footer(); ?>

</body>
</html>