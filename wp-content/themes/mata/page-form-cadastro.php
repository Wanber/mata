<?php get_header();
/* Template Name: Pagina de Cadastro */
?>

<?php

set_time_limit(120);

$limite_upload_arq = 1048576;// 1MB
$ext_permitidas = array('image/jpg', 'image/jpeg', 'image/png', 'image/bmp');
$min_width = 500;
$min_height = 400;
$min_logo_w = 150;
$min_logo_h = 150;

if (@$_REQUEST['submit'] == 'cadastrar_empreendimento') {
    $registro = array();
    $registro['nome'] = $_REQUEST['nome'];
    $registro['descricao'] = $_REQUEST['descricao'];
    $registro['cidade_id'] = $_REQUEST['cidade'];
    $registro['endereco'] = $_REQUEST['endereco'];
    $registro['resp_contato'] = $_REQUEST['resp_contato'];
    $registro['telefone'] = $_REQUEST['telefone'];
    $registro['whatsapp'] = $_REQUEST['whatsapp'];
    $registro['email'] = $_REQUEST['email'];
    $registro['facebook'] = $_REQUEST['facebook'];
    $registro['site'] = $_REQUEST['site'];
    $registro['modalidade'] = 'empreendimento';
    $registro['aprovado'] = '0';

    $logo = $_FILES['reg_logo'];
    $fz_logo = $_FILES['reg_logo']['size'];
    $ft_logo = $_FILES['reg_logo']['type'];
    $_FILES['reg_logo']['tmp_name'] ? list($logo_w, $logo_h) = getimagesize($_FILES['reg_logo']['tmp_name']) : $logo_w = $logo_h = 0;

    $img1 = $_FILES['reg_imagem1'];
    $fz_1 = $_FILES['reg_imagem1']['size'];
    $ft_1 = $_FILES['reg_imagem1']['type'];
    $_FILES['reg_imagem1']['tmp_name'] ? list($f1_w, $f1_h) = getimagesize($_FILES['reg_imagem1']['tmp_name']) : $f1_w = $f1_h = 0;

    $img2 = $_FILES['reg_imagem2'];
    $fz_2 = $_FILES['reg_imagem2']['size'];
    $ft_2 = $_FILES['reg_imagem2']['type'];
    $_FILES['reg_imagem2']['tmp_name'] ? list($f2_w, $f2_h) = getimagesize($_FILES['reg_imagem2']['tmp_name']) : $f2_w = $f2_h = 0;

    $img3 = $_FILES['reg_imagem3'];
    $fz_3 = $_FILES['reg_imagem3']['size'];
    $ft_3 = $_FILES['reg_imagem3']['type'];
    $_FILES['reg_imagem3']['tmp_name'] ? list($f3_w, $f3_h) = getimagesize($_FILES['reg_imagem3']['tmp_name']) : $f3_w = $f3_h = 0;

    $img4 = $_FILES['reg_imagem4'];
    $fz_4 = $_FILES['reg_imagem4']['size'];
    $ft_4 = $_FILES['reg_imagem4']['type'];
    $_FILES['reg_imagem4']['tmp_name'] ? list($f4_w, $f4_h) = getimagesize($_FILES['reg_imagem4']['tmp_name']) : $f4_w = $f4_h = 0;

    if ($fz_logo > $limite_upload_arq || $fz_1 > $limite_upload_arq || $fz_2 > $limite_upload_arq
        || $fz_3 > $limite_upload_arq || $fz_4 > $limite_upload_arq
    ) {
        $adicionou = '5';//limite tamanho do arquivo
    } else {
        if (($ft_logo != '' && !in_array($ft_logo, $ext_permitidas)) ||
            ($ft_1 != '' && !in_array($ft_1, $ext_permitidas)) ||
            ($ft_2 != '' && !in_array($ft_2, $ext_permitidas)) ||
            ($ft_3 != '' && !in_array($ft_3, $ext_permitidas)) ||
            ($ft_4 != '' && !in_array($ft_4, $ext_permitidas))
        ) {
            $adicionou = '6';//tipo de aruqivo invalido
        } else {

            if (($logo_w != '' && $logo_w != $min_logo_w) || ($logo_h != '' && $logo_h != $min_logo_h))
                $adicionou = '8';//logo nao esta na resoluçao certa

            else {

                if (($f1_w != '' && $f1_w < $min_width) || ($f1_h != '' && $f1_h < $min_height) ||
                    ($f2_w != '' && $f2_w < $min_width) || ($f2_h != '' && $f2_h < $min_height) ||
                    ($f3_w != '' && $f3_w < $min_width) || ($f3_h != '' && $f3_h < $min_height) ||
                    ($f4_w != '' && $f4_w < $min_width) || ($f4_h != '' && $f4_h < $min_height)
                ) {
                    $adicionou = '7';
                } else {

                    $upload = wp_handle_upload($logo, array('test_form' => false));
                    if ($upload && !isset($upload['error'])) {
                        $registro['url_icone'] = $upload['url'];
                    } else {
                        $registro['url_icone'] = "";
                    }


                    if (!$img1['name'] || $img1['name'] == '' || $img1['name'] == null)
                        $adicionou = '0';//nao enviou img obrigatoria
                    else {
                        $upload = wp_handle_upload($img1, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img1'] = $upload['url'];
                        } else {
                            $registro['url_img1'] = "";
                        }

                        $upload = wp_handle_upload($img2, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img2'] = $upload['url'];
                        } else {
                            $registro['url_img2'] = "";
                        }

                        $upload = wp_handle_upload($img3, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img3'] = $upload['url'];
                        } else {
                            $registro['url_img3'] = "";
                        }

                        $upload = wp_handle_upload($img4, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img4'] = $upload['url'];
                        } else {
                            $registro['url_img4'] = "";
                        }

                        if ($registro['url_img1'] == "")
                            $adicionou = '1';//cota de disco
                        else {
                            $add = add_registro($registro);

                            switch ($add) {
                                case '0':
                                    $adicionou = '3';//erro interno
                                    break;
                                case '1':
                                    $adicionou = '2';//sucesso
                                    break;
                                case '2':
                                    $adicionou = '4';//ja existe
                                    break;
                            }
                        }
                    }
                }
            }
        }
    }
}

if (@$_REQUEST['submit'] == 'cadastrar_evento') {
    $registro = array();
    $registro['nome'] = $_REQUEST['nome'];
    $registro['descricao'] = $_REQUEST['descricao'];
    $registro['cidade_id'] = $_REQUEST['cidade'];
    $registro['endereco'] = $_REQUEST['endereco'];
    $registro['dt_inicio'] = $_REQUEST['dt_inicio'];
    $registro['dt_fim'] = $_REQUEST['dt_fim'];
    $registro['hr_inicio'] = $_REQUEST['hr_inicio'];
    $registro['hr_fim'] = $_REQUEST['hr_fim'];
    $registro['valor_entrada'] = $_REQUEST['valor_entrada'];
    $registro['facebook'] = $_REQUEST['facebook'];
    $registro['site'] = $_REQUEST['site'];
    $registro['modalidade'] = 'evento';
    $registro['aprovado'] = '0';

    $logo = $_FILES['reg_logo'];
    $fz_logo = $_FILES['reg_logo']['size'];
    $ft_logo = $_FILES['reg_logo']['type'];
    $_FILES['reg_logo']['tmp_name'] ? list($logo_w, $logo_h) = getimagesize($_FILES['reg_logo']['tmp_name']) : $logo_w = $logo_h = 0;

    $img1 = $_FILES['reg_imagem1'];
    $fz_1 = $_FILES['reg_imagem1']['size'];
    $ft_1 = $_FILES['reg_imagem1']['type'];
    $_FILES['reg_imagem1']['tmp_name'] ? list($f1_w, $f1_h) = getimagesize($_FILES['reg_imagem1']['tmp_name']) : $f1_w = $f1_h = 0;

    $img2 = $_FILES['reg_imagem2'];
    $fz_2 = $_FILES['reg_imagem2']['size'];
    $ft_2 = $_FILES['reg_imagem2']['type'];
    $_FILES['reg_imagem2']['tmp_name'] ? list($f2_w, $f2_h) = getimagesize($_FILES['reg_imagem2']['tmp_name']) : $f2_w = $f2_h = 0;

    $img3 = $_FILES['reg_imagem3'];
    $fz_3 = $_FILES['reg_imagem3']['size'];
    $ft_3 = $_FILES['reg_imagem3']['type'];
    $_FILES['reg_imagem3']['tmp_name'] ? list($f3_w, $f3_h) = getimagesize($_FILES['reg_imagem3']['tmp_name']) : $f3_w = $f3_h = 0;

    $img4 = $_FILES['reg_imagem4'];
    $fz_4 = $_FILES['reg_imagem4']['size'];
    $ft_4 = $_FILES['reg_imagem4']['type'];
    $_FILES['reg_imagem4']['tmp_name'] ? list($f4_w, $f4_h) = getimagesize($_FILES['reg_imagem4']['tmp_name']) : $f4_w = $f4_h = 0;

    if ($fz_logo > $limite_upload_arq || $fz_1 > $limite_upload_arq || $fz_2 > $limite_upload_arq
        || $fz_3 > $limite_upload_arq || $fz_4 > $limite_upload_arq
    ) {
        $adicionou = '5';//limite tamanho do arquivo
    } else {
        if (($ft_logo != '' && !in_array($ft_logo, $ext_permitidas)) ||
            ($ft_1 != '' && !in_array($ft_1, $ext_permitidas)) ||
            ($ft_2 != '' && !in_array($ft_2, $ext_permitidas)) ||
            ($ft_3 != '' && !in_array($ft_3, $ext_permitidas)) ||
            ($ft_4 != '' && !in_array($ft_4, $ext_permitidas))
        ) {
            $adicionou = '6';//tipo de aruqivo invalido
        } else {

            if (($logo_w != '' && $logo_w != $min_logo_w) || ($logo_h != '' && $logo_h != $min_logo_h))
                $adicionou = '8';//logo nao esta na resoluçao certa

            else {

                if (($f1_w != '' && $f1_w < $min_width) || ($f1_h != '' && $f1_h < $min_height) ||
                    ($f2_w != '' && $f2_w < $min_width) || ($f2_h != '' && $f2_h < $min_height) ||
                    ($f3_w != '' && $f3_w < $min_width) || ($f3_h != '' && $f3_h < $min_height) ||
                    ($f4_w != '' && $f4_w < $min_width) || ($f4_h != '' && $f4_h < $min_height)
                ) {
                    $adicionou = '7';
                } else {

                    $upload = wp_handle_upload($logo, array('test_form' => false));
                    if ($upload && !isset($upload['error'])) {
                        $registro['url_icone'] = $upload['url'];
                    } else {
                        $registro['url_icone'] = "";
                    }


                    if (!$img1['name'] || $img1['name'] == '' || $img1['name'] == null)
                        $adicionou = '0';//nao enviou img obrigatoria
                    else {
                        $upload = wp_handle_upload($img1, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img1'] = $upload['url'];
                        } else {
                            $registro['url_img1'] = "";
                        }

                        $upload = wp_handle_upload($img2, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img2'] = $upload['url'];
                        } else {
                            $registro['url_img2'] = "";
                        }

                        $upload = wp_handle_upload($img3, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img3'] = $upload['url'];
                        } else {
                            $registro['url_img3'] = "";
                        }

                        $upload = wp_handle_upload($img4, array('test_form' => false));
                        if ($upload && !isset($upload['error'])) {
                            $registro['url_img4'] = $upload['url'];
                        } else {
                            $registro['url_img4'] = "";
                        }

                        if ($registro['url_img1'] == "")
                            $adicionou = '1';//cota de disco
                        else {
                            $add = add_registro($registro);

                            switch ($add) {
                                case '0':
                                    $adicionou = '3';//erro interno
                                    break;
                                case '1':
                                    $adicionou = '2';//sucesso
                                    break;
                                case '2':
                                    $adicionou = '4';//ja existe
                                    break;
                            }
                        }
                    }
                }
            }
        }
    }
}

?>

    <div class="corpo col-md-12">
        <div class="content row">

            <?php include 'sidebar-toppage.php'; ?>

            <?php
            if (isset($_REQUEST['empreendimento'])) { ?>

                <div class="col-md-3" style="color: rgba(0,0,0,0.7); padding: 0 35px 0 35px">

                    <div class="page-header">
                        <h1>AVISO</h1>
                    </div>
                    <p style="font-weight: 100"><?php echo get_setting('texto__cadastro') ?></p>
                </div>

                <div class="col-md-9 post-content">

                    <?php

                    if (isset($adicionou)) {

                        //echo '<code>COODIGO RETORNADO: '.$adicionou.'</code><br><br>';//-------------------------------------------
                        //echo '<code>VAR DUMP REGISTRO: '.var_dump($registro).'</code><br><br>';//-------------------------------------------
                        //echo '<code>VAR DUMP FILES: '.var_dump($_FILES).'</code><br><br>';//-------------------------------------------

                        switch ($adicionou) {
                            case '0':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, envie pelo menos uma imagem.
                                    </div>
                                ';
                                break;
                            case '1':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, cota de disco do servidor esgotada.
                                    </div>
                                ';
                                break;
                            case '2':
                                echo '
                                    <div class="alert alert-success alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Empreendimento enviado, obrigado pela preferência.
                                    </div>
                                ';
                                break;
                            case '3':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, erro interno.
                                    </div>
                                ';
                                break;
                            case '4':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, já existe um empreendimento com este nome nesta cidade.
                                    </div>
                                ';
                                break;
                            case '5':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, um ou mais das imagens enviadas exede o tamanho máximo de 1MB.
                                    </div>
                                ';
                                break;
                            case '6':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, um ou mais das imagens enviadas não está nos formatos ' . implode(",", $ext_permitidas) . '.
                                    </div>
                                ';
                                break;
                            case '7':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, um ou mais das imagens enviadas não atende a resolução mínima ' . $min_width . 'x' . $min_height . '
                                    </div>
                                ';
                                break;
                            case '8':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, a logo não está no formato padrão ' . $min_logo_w . 'x' . $min_logo_h . '
                                    </div>
                                ';
                                break;
                        }
                    }
                    ?>

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

                    <div class="page-header">
                        <h1>CADASTRO DE EMPREENDIMENTO</h1>
                    </div>

                    <form action="<?php echo get_site_url() ?>/form-cadastro/?empreendimento" method="post"
                          enctype="multipart/form-data">

                        <script language="javascript">
                            $(document).ready(function () {
                                $('.data').mask('99/99/9999');

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
                            });
                        </script>

                        <div class="form-group">
                            <label for="nome">Nome do empreendimento
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <input type="text" name="nome" class="form-control" id="nome" required
                                   placeholder="Ex. Point do Açaí"
                                   value='<?php echo @stripslashes($registro['nome']) ?>'>
                        </div>

                        <div class="form-group">
                            <label for="descricao">Descrição
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <textarea name="descricao" class="form-control" id="descricao" rows="3"
                                      placeholder="Descreva em até 800 caracteres o empreendimento"
                                      required><?php echo @stripslashes($registro['descricao']) ?></textarea>
                        </div>

                        <div class="form-group">
                            <label for="cidade">Cidade
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <select name="cidade" required id="cidade" class="form-control input-lg"
                                    style="font-weight: 100; font-size: 14px;">
                                <?php $cidades = json_decode(do_shortcode('[aofoc_cidades]')); ?>
                                <?php foreach ($cidades as $cidade) {
                                    @$registro['cidade_id'] == $cidade->id ? $selected = 'selected' : $selected = '';
                                    echo '<option value="' . $cidade->id . '" ' . $selected . '>' . $cidade->cidade . '</option>';
                                } ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="endereco">Endereço
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <input name="endereco" type="text" class="form-control" id="endereco" required
                                   placeholder="Ex. Rua 1º de Março, 156, Loja 1"
                                   value="<?php echo @$registro['endereco'] ?>">
                        </div>

                        <div class="form-group">
                            <label for="resp_contato">Responsável</label>
                            <input name="resp_contato" type="text" class="form-control" id="resp_contato"
                                   placeholder="Ex. Luciano" value="<?php echo @$registro['resp_contato'] ?>">
                        </div>

                        <div class="form-group">
                            <div class="col-md-6" style="padding-left: 0">
                                <label for="telefone">Telefone
                                    <small style="color: #b40a1c">(*)</small>
                                </label>
                                <input name="telefone" type="text" class="form-control telefone" id="telefone"
                                       required
                                       placeholder="Ex. (31) 9 8888-8888"
                                       value="<?php echo @$registro['telefone'] ?>">
                            </div>
                            <div class="col-md-6" style="padding-left: 0;padding-right: 0">
                                <label for="whatsapp">Whatsapp</label>
                                <input name="whatsapp" type="text" class="form-control telefone" id="whatsapp"
                                       placeholder="Ex. (31) 9 8888-8888"
                                       value="<?php echo @$registro['whatsapp'] ?>">
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input name="email" type="email" class="form-control" id="email"
                                   placeholder="Ex. contato@exemplo.com" value="<?php echo @$registro['email'] ?>">
                        </div>

                        <div class="form-group">
                            <label for="facebook">Rede social</label>
                            <input name="facebook" type="url" class="form-control" id="facebook"
                                   placeholder="Ex. http://facebook.com/4"
                                   value="<?php echo @$registro['facebook'] ?>">
                        </div>

                        <div class="form-group">
                            <label for="site">Site</label>
                            <input name="site" type="url" class="form-control" id="site"
                                   placeholder="Ex. http://exemplosite.com.br"
                                   value="<?php echo @$registro['site'] ?>">
                        </div>

                        <label>
                            <h3>
                                Logo
                                <small style="color: #b40a1c">(formato 150x150)</small>
                            </h3>
                            <input type="file" accept="image/*" name="reg_logo"><br/>
                        </label>
                        <label>
                            <h3>Imagens
                                <small style="color: #b40a1c">(mínimo 1 foto, tamanho máximo: 1MB, resolução mínima:
                                    500x400)
                                </small>
                            </h3>
                            <div class="col-md-6" style="padding-left: 0">
                                <input type="file" accept="image/*" name="reg_imagem1" required="required">
                                <input type="file" accept="image/*" name="reg_imagem2">
                            </div>

                            <div class="col-md-6" style="padding-left: 0">
                                <input type="file" accept="image/*" name="reg_imagem3">
                                <input type="file" accept="image/*" name="reg_imagem4">
                            </div>
                            <div class="clearfix"></div>
                            <br/>
                        </label>

                        <div class="form-group" style="text-align: right; padding-right: 0; margin-right: 0">
                            <button type="submit" name="submit" value="cadastrar_empreendimento"
                                    class="btn btn-fotos"
                                    style="padding: 10px 20px 10px 20px;">CADASTRAR EMPREENDIMENTO
                            </button>
                        </div>
                    </form>

                </div>

            <?php } elseif (isset($_REQUEST['evento'])) { ?>

                <div class="col-md-3" style="color: rgba(0,0,0,0.7); padding: 0 35px 0 35px">

                    <div class="page-header">
                        <h1>AVISO</h1>
                    </div>
                    <p style="font-weight: 100"><?php echo get_setting('texto__cadastro') ?></p>
                </div>

                <div class="col-md-9 post-content">

                    <?php

                    if (isset($adicionou)) {

                        //echo '<code>COODIGO RETORNADO: '.$adicionou.'</code><br><br>';//-------------------------------------------
                        //echo '<code>VAR DUMP REGISTRO: '.var_dump($registro).'</code><br><br>';//-------------------------------------------
                        //echo '<code>VAR DUMP FILES: '.var_dump($_FILES).'</code><br><br>';//-------------------------------------------

                        switch ($adicionou) {
                            case '0':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, envie pelo menos uma imagem.
                                    </div>
                                ';
                                break;
                            case '1':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, cota de disco do servidor esgotada.
                                    </div>
                                ';
                                break;
                            case '2':
                                echo '
                                    <div class="alert alert-success alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Evento enviado, obrigado pela preferência.
                                    </div>
                                ';
                                break;
                            case '3':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, erro interno.
                                    </div>
                                ';
                                break;
                            case '4':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, já existe um evento com este nome nesta cidade.
                                    </div>
                                ';
                                break;
                            case '5':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, um ou mais das imagens enviadas exede o tamanho máximo de 1MB.
                                    </div>
                                ';
                                break;
                            case '6':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, um ou mais das imagens enviadas não está nos formatos ' . implode(", ", $ext_permitidas) . '.
                                    </div>
                                ';
                                break;
                            case '7':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, um ou mais das imagens enviadas não atende a resolução mínima ' . $min_width . 'x' . $min_height . '
                                    </div>
                                ';
                                break;
                            case '8':
                                echo '
                                    <div class="alert alert-warning alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Não foi possível cadastrar, a logo não está no formato padrão ' . $min_logo_w . 'x' . $min_logo_h . '
                                    </div>
                                ';
                                break;
                        }
                    }
                    ?>

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

                    <div class="page-header">
                        <h1>CADASTRO DE EVENTO</h1>
                    </div>

                    <form action="<?php echo get_site_url() ?>/form-cadastro/?evento" method="post"
                          enctype="multipart/form-data">

                        <div class="form-group">
                            <label for="nome">Nome do evento
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <input type="text" name="nome" class="form-control" id="nome" required
                                   placeholder="Ex. 156º Aniversário de Antônio Dias"
                                   value='<?php echo @stripslashes($registro['nome']) ?>'>
                        </div>

                        <div class="form-group">
                            <label for="descricao">Descrição
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <textarea name="descricao" class="form-control" id="descricao" rows="3"
                                      placeholder="Descreva em até 800 caracteres o evento"
                                      required><?php echo @stripslashes($registro['descricao']) ?></textarea>
                        </div>

                        <div class="form-group">
                            <label for="cidade">Cidade
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <select name="cidade" required id="cidade" class="form-control input-lg"
                                    style="font-weight: 100; font-size: 14px;">
                                <?php $cidades = json_decode(do_shortcode('[aofoc_cidades]')); ?>
                                <?php foreach ($cidades as $cidade) {
                                    @$registro['cidade_id'] == $cidade->id ? $selected = 'selected' : $selected = '';
                                    echo '<option value="' . $cidade->id . '" ' . $selected . '>' . $cidade->cidade . '</option>';
                                } ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="endereco">Local
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <input name="endereco" type="text" class="form-control" id="endereco" required
                                   placeholder="Ex. Rua 1º de Março, 156, Galpão 3"
                                   value="<?php echo @$registro['endereco'] ?>">
                        </div>

                        <div class="form-group">
                            <div class="col-md-6" style="padding-left: 0">
                                <label for="dt_inicio">Data de início
                                    <small style="color: #b40a1c">(*)</small>
                                </label>
                                <input name="dt_inicio" type="text" class="form-control data" id="dt_inicio"
                                       required
                                       placeholder="Ex. 20/08/2016" value="<?php echo @$registro['dt_inicio'] ?>">
                            </div>
                            <div class="col-md-6" style="padding-left: 0;padding-right: 0">
                                <label for="dt_fim">Data do término
                                    <small style="color: #b40a1c">(*)</small>
                                </label>
                                <input name="dt_fim" type="text" class="form-control data" id="dt_fim" required
                                       placeholder="Ex. 23/08/2016" value="<?php echo @$registro['dt_fim'] ?>">
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6" style="padding-left: 0">
                                <label for="hr_inicio">De
                                    <small style="color: #b40a1c">(*)</small>
                                </label>
                                <input name="hr_inicio" type="text" class="form-control hora" id="hr_inicio"
                                       required
                                       placeholder="Ex. 20:00" value="<?php echo @$registro['hr_inicio'] ?>">
                            </div>
                            <div class="col-md-6" style="padding-left: 0;padding-right: 0">
                                <label for="hr_fim">Às
                                    <small style="color: #b40a1c">(*)</small>
                                </label>
                                <input name="hr_fim" type="text" class="form-control hora" id="hr_fim" required
                                       placeholder="Ex. 23:00" value="<?php echo @$registro['hr_fim'] ?>">
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="form-group">
                            <label for="valor_entrada">Valor da entrada
                                <small style="color: #b40a1c">(*)</small>
                            </label>
                            <input name="valor_entrada" type="text" class="form-control rs" id="valor_entrada"
                                   required
                                   placeholder="Ex. 20,00" value="<?php echo @$registro['valor_entrada'] ?>">
                        </div>

                        <div class="form-group">
                            <label for="site">Site</label>
                            <input name="site" type="url" class="form-control" id="site"
                                   placeholder="Ex. http://exemplosite.com.br"
                                   value="<?php echo @$registro['site'] ?>">
                        </div>

                        <label>
                            <h3>
                                Logo
                                <small style="color: #b40a1c">(formato 150x150)</small>
                            </h3>
                            <input type="file" accept="image/*" name="reg_logo"><br/>
                        </label>
                        <label>
                            <h3>Imagens
                                <small style="color: #b40a1c">(mínimo 1 foto, tamanho máximo: 1MB, resolução mínima:
                                    500x400)
                                </small>
                            </h3>
                            <div class="col-md-6" style="padding-left: 0">
                                <input type="file" accept="image/*" name="reg_imagem1" required="required">
                                <input type="file" accept="image/*" name="reg_imagem2">
                            </div>

                            <div class="col-md-6" style="padding-left: 0">
                                <input type="file" accept="image/*" name="reg_imagem3">
                                <input type="file" accept="image/*" name="reg_imagem4">
                            </div>
                            <div class="clearfix"></div>
                            <br/>
                        </label>

                        <div class="form-group" style="text-align: right; padding-right: 0; margin-right: 0">
                            <button type="submit" name="submit" value="cadastrar_evento" class="btn btn-fotos"
                                    style="padding: 10px 20px 10px 20px;">CADASTRAR EVENTO
                            </button>
                        </div>
                    </form>

                </div>

            <?php } ?>

        </div>
    </div>


<?php get_footer(); ?>