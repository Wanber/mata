<?php

$parceiro_id = $_GET['editar'];

if (@$_POST['submit'] == 'Alterar Parceiro') {
    $registro_id = $_GET['editar'];
    $registro = array();
    $registro['cat_id'] = $_POST['reg_cat'];
    $registro['nome'] = $_POST['reg_nome'];

    if ($_FILES['reg_logo']['name'] != "") {
        $logo = $_FILES['reg_logo'];
        $upload = wp_handle_upload($logo, array('test_form' => false));
        if ($upload && !isset($upload['error'])) {
            $registro['url_icone'] = $upload['url'];
        }
    }
    if ($_FILES['reg_imagem1']['name'] != "") {
        $img1 = $_FILES['reg_imagem1'];
        $upload = wp_handle_upload($img1, array('test_form' => false));
        if ($upload && !isset($upload['error'])) {
            $registro['url_img1'] = $upload['url'];
        }
    }
    if ($_FILES['reg_imagem2']['name'] != "") {
        $img2 = $_FILES['reg_imagem2'];
        $upload = wp_handle_upload($img2, array('test_form' => false));
        if ($upload && !isset($upload['error'])) {
            $registro['url_img2'] = $upload['url'];
        }
    }
    if ($_FILES['reg_imagem3']['name'] != "") {
        $img3 = $_FILES['reg_imagem3'];
        $upload = wp_handle_upload($img3, array('test_form' => false));
        if ($upload && !isset($upload['error'])) {
            $registro['url_img3'] = $upload['url'];
        }
    }
    if ($_FILES['reg_imagem4']['name'] != "") {
        $img4 = $_FILES['reg_imagem4'];
        $upload = wp_handle_upload($img4, array('test_form' => false));
        if ($upload && !isset($upload['error'])) {
            $registro['url_img4'] = $upload['url'];
        }
    }

    $registro['descricao'] = $_POST['reg_desc'];
    $registro['endereco'] = $_POST['reg_end'];
    $registro['whatsapp'] = $_POST['reg_whatsapp'];
    $registro['cidade_id'] = $_POST['reg_cidade'];
    $registro['resp_contato'] = $_POST['reg_resp_contato'];
    $registro['telefone'] = $_POST['reg_tel'];
    $registro['email'] = $_POST['reg_email'];
    $registro['facebook'] = $_POST['reg_facebook'];
    $registro['tipo'] = $_POST['reg_tipo'];
    $registro['site'] = $_POST['reg_site'];
    $registro['aprovado'] = '1';

    if ($registro['tipo'] != '' && $registro['cidade_id'] != '' && $registro['cat_id'] != '-1' && $registro['cat_id'] != '') {

        if (atualizar_registro($registro_id, $registro)) {

            if ($parceiro->aprovado == '0') {
                $headers = 'From: Destino Turístico Vale do Aço <' . get_bloginfo("admin_email") . '>' . "\r\n";
                wp_mail($parceiro->email, 'Seu empreendimento foi aprovado', 'Boas notícias!<br /><br />Seu empreendimento '.$parceiro->nome.' foi aprovado, obrigado por se cadastrar em nosso site, cadastre-se também em nossa newsletter e fique por dentro das novidades.', $headers);
            }

            echo '
                <div id="message" class="updated notice is-dismissible">
                    <p>Registro alterado.</p>
                    <button type="button" class="notice-dismiss"><span
                            class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            ';

        } else {

            echo '
                <div id="message" class="error notice is-dismissible">
                    <p>Não foi possível alterar o registro ou não houve mudanças.</p>
                    <button type="button" class="notice-dismiss"><span
                            class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            ';
        }

    } else {
        echo '
            <div id="message" class="error notice is-dismissible">
                <p>Selecione um Tipo, Categoria e Cidade.</p>
                <button type="button" class="notice-dismiss"><span
                        class="screen-reader-text">Dispensar este aviso.</span></button>
            </div>
        ';
    }
}

global $wpdb;
$registros = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados" . " WHERE id = " . $parceiro_id . "");
$parceiro = $registros[0];
$registro = (array)$parceiro;

if ($parceiro->aprovado == '0')
    echo '
        <div id="message" class="notice notice-warning is-dismissible">
            <p>Confira todos os dados, após salvar este registro ele será aprovado automaticamente</p>
            <button type="button" class="notice-dismiss"><span
                    class="screen-reader-text">Dispensar este aviso.</span></button>
        </div>
    ';
?>

<div class="wrap">
    <h1>Editar Parceiro</h1>

    <form action="" method="post" enctype="multipart/form-data">
        <div id="poststuff">
            <div id="post-body" class="metabox-holder columns-2">
                <div id="form-empreendimento" style="position: relative;">
                    <div id="post-body-content">

                        <input type="text" name="reg_nome" spellcheck="true" autocomplete="off" placeholder="Nome"
                               required value='<?php if (isset($registro['nome'])) echo stripslashes($registro['nome']); ?>'/>
                        <textarea name="reg_desc" placeholder="Descrição" spellcheck="true" required
                                  class="form-control" rows="4"
                                  style="width: 100%; margin-left: 8px;border-radius: 5px;padding: 10px"><?php if (isset($registro['descricao'])) echo stripslashes($registro['descricao']); ?></textarea>
                        &nbsp;&nbsp;&nbsp;&nbsp;(max 800 caracteres)
                        <input type="text" name="reg_end" spellcheck="true" autocomplete="off" placeholder="Endereço"
                               required value="<?php if (isset($registro['endereco'])) echo $registro['endereco']; ?>"/>
                        <input type="text" name="reg_resp_contato" spellcheck="true" autocomplete="off"
                               placeholder="Responsável contato"
                               value="<?php if (isset($registro['resp_contato'])) echo $registro['resp_contato']; ?>"/>
                        <div style="width: 100%; margin: 0">
                            <div style="width: 100%; margin: 0">
                                <input type="text" class="telefone" name="reg_tel" spellcheck="true" autocomplete="off"
                                       required
                                       placeholder="Telefone" style="width: 48%; float: left"
                                       value="<?php if (isset($registro['telefone'])) echo $registro['telefone']; ?>"/>
                                <input type="text" name="reg_whatsapp" spellcheck="true" autocomplete="off"
                                       placeholder="Whatsapp" class="telefone"
                                       style="width: 48%; float: right; margin-right: 0"
                                       value="<?php if (isset($registro['whatsapp'])) echo $registro['whatsapp']; ?>"/>
                                <div style="clear: both;"></div>
                            </div>

                            <div style="width: 100%; margin: 0">
                                <input type="email" name="reg_email" spellcheck="true" autocomplete="off"
                                       style="width: 48%; float: left" placeholder="Email"
                                       value="<?php if (isset($registro['email'])) echo $registro['email']; ?>"/>
                                <input type="text" name="reg_facebook" spellcheck="false" autocomplete="off"
                                       style="width: 48%; float: right; margin-right: 0" placeholder="Rede social"
                                       value="<?php if (isset($registro['facebook'])) echo $registro['facebook']; ?>"/>
                                <input type="text" name="reg_site" spellcheck="true" autocomplete="off"
                                       placeholder="Site"
                                       value="<?php if (isset($registro['site'])) echo $registro['site']; ?>"/>
                                <div style="clear: both;"></div>
                            </div>
                            <script>
                                function remover_img(img) {
                                    $("#inpt_img"+img).val("");
                                    $("#src_img"+img).attr('src','');
                                }
                            </script>

                            <h3>Logo</h3>
                            <img id="src_img0" src="<?php echo $parceiro->url_icone; ?>" width="65" height="50">
                            <input id="inpt_img0" type="file" accept="image/*" name="reg_logo"/>
                            <span style="color: red; cursor: pointer;" onclick="remover_img('0')">X</span><br/>

                            <h3>Imagens</h3>
                            <img id="src_img1" src="<?php echo $parceiro->url_img1; ?>" width="65" height="50">
                            <input id="inpt_img1" type="file" accept="image/*" name="reg_imagem1"/>
                            <span style="color: red; cursor: pointer;" onclick="remover_img('1')">X</span>
                            <img id="src_img2" src="<?php echo $parceiro->url_img2; ?>" width="65" height="50">
                            <input id="inpt_img2" type="file" accept="image/*" name="reg_imagem2"/>
                            <span style="color: red; cursor: pointer;" onclick="remover_img('2')">X</span><br/>
                            <img id="src_img3" src="<?php echo $parceiro->url_img3; ?>" width="65" height="50">
                            <input id="inpt_img3" type="file" accept="image/*" name="reg_imagem3"/>
                            <span style="color: red; cursor: pointer;" onclick="remover_img('3')">X</span>
                            <img id="src_img4" src="<?php echo $parceiro->url_img4; ?>" width="65" height="50">
                            <input id="inpt_img4" type="file" accept="image/*" name="reg_imagem4"/>
                            <span style="color: red; cursor: pointer;" onclick="remover_img('4')">X</span><br/><br/>
                        </div><!-- /form-empreendimento -->
                    </div>

                    <div id="postbox-container-1" class="postbox-container">
                        <div id="side-sortables" class="meta-box-sortables ui-sortable">
                            <div id="submitdiv" class="postbox" style="margin-top: 10px">
                                <h2 class="hndle ui-sortable-handle"><span>Configurações</span></h2>
                                <div class="inside">
                                    <div class="submitbox" id="submitpost">

                                        <div id="minor-publishing">
                                            <div class="inside">

                                                <div id="minor-publishing">

                                                    <div id="misc-publishing-actions">

                                                        <div class="misc-pub-section curtime misc-pub-curtime">

                                                            <div id="opt-empreendimento">

                                                                <select name="reg_tipo" onchange="exibir_categorias()"
                                                                        id="select_reg_tipo" required
                                                                        style="margin: 0 20px 10px 0; width: 100%">
                                                                    <option disabled selected>Tipo</option>
                                                                    <option
                                                                        value="lazer" <?php if (isset($registro['tipo']) && $registro['tipo'] == 'lazer') echo 'selected'; ?>>
                                                                        Lazer
                                                                    </option>
                                                                    <option
                                                                        value="atrativo" <?php if (isset($registro['tipo']) && $registro['tipo'] == 'atrativo') echo 'selected'; ?>>
                                                                        Atrativo
                                                                    </option>
                                                                    <option
                                                                        value="onde_ficar" <?php if (isset($registro['tipo']) && $registro['tipo'] == 'onde_ficar') echo 'selected'; ?>>
                                                                        Onde Ficar
                                                                    </option>
                                                                    <option
                                                                        value="onde_comer" <?php if (isset($registro['tipo']) && $registro['tipo'] == 'onde_comer') echo 'selected'; ?>>
                                                                        Onde Comer
                                                                    </option>
                                                                    <option
                                                                        value="info_uteis" <?php if (isset($registro['tipo']) && $registro['tipo'] == 'info_uteis') echo 'selected'; ?>>
                                                                        Informações Úteis
                                                                    </option>

                                                                </select>

                                                                <script>
                                                                    $(document).ready(function () {
                                                                        exibir_categorias();
                                                                    });
                                                                </script>


                                                                <?php
                                                                $dropdown_args = array(
                                                                    'hide_empty' => 0,
                                                                    'selected' => $registro['cat_id'] ? $registro['cat_id'] : 0,
                                                                    'hide_if_empty' => false,
                                                                    'taxonomy' => 'category',
                                                                    'name' => 'reg_cat',
                                                                    'id' => 'reg_cat_cat_of',
                                                                    'child_of' => get_category_by_slug('cat_of')->term_id,
                                                                    'orderby' => 'name',
                                                                    'show_option_none' => 'Categoria',
                                                                    'option_none_value' => '-1',
                                                                    'hierarchical' => true,
                                                                    'echo' => false
                                                                );
                                                                $categorias = wp_dropdown_categories($dropdown_args);
                                                                $categorias = substr_replace($categorias, 'selected disabled', strpos($categorias, 'Categoria') - 1, 0);
                                                                $categorias = substr_replace($categorias, ' style="width: 100%;" ', strpos($categorias, '<select') + 7, 0);
                                                                echo $categorias;
                                                                ?>
                                                                <style>#reg_cat_cat_of {
                                                                        display: none
                                                                    }</style>

                                                                <?php
                                                                $dropdown_args = array(
                                                                    'hide_empty' => 0,
                                                                    'selected' => $registro['cat_id'] ? $registro['cat_id'] : 0,
                                                                    'hide_if_empty' => false,
                                                                    'taxonomy' => 'category',
                                                                    'name' => 'reg_cat',
                                                                    'id' => 'reg_cat_cat_lz',
                                                                    'child_of' => get_category_by_slug('cat_lz')->term_id,
                                                                    'orderby' => 'name',
                                                                    'show_option_none' => 'Categoria',
                                                                    'option_none_value' => '-1',
                                                                    'hierarchical' => true,
                                                                    'echo' => false
                                                                );
                                                                $categorias = wp_dropdown_categories($dropdown_args);
                                                                $categorias = substr_replace($categorias, 'selected disabled', strpos($categorias, 'Categoria') - 1, 0);
                                                                $categorias = substr_replace($categorias, ' style="width: 100%;" ', strpos($categorias, '<select') + 7, 0);
                                                                echo $categorias;
                                                                ?>
                                                                <style>#reg_cat_cat_lz {
                                                                        display: none
                                                                    }</style>

                                                                <?php
                                                                $dropdown_args = array(
                                                                    'hide_empty' => 0,
                                                                    'selected' => $registro['cat_id'] ? $registro['cat_id'] : 0,
                                                                    'hide_if_empty' => false,
                                                                    'taxonomy' => 'category',
                                                                    'name' => 'reg_cat',
                                                                    'id' => 'reg_cat_cat_oc',
                                                                    'child_of' => get_category_by_slug('cat_oc')->term_id,
                                                                    'orderby' => 'name',
                                                                    'show_option_none' => 'Categoria',
                                                                    'option_none_value' => '-1',
                                                                    'hierarchical' => true,
                                                                    'echo' => false
                                                                );
                                                                $categorias = wp_dropdown_categories($dropdown_args);
                                                                $categorias = substr_replace($categorias, 'selected disabled', strpos($categorias, 'Categoria') - 1, 0);
                                                                $categorias = substr_replace($categorias, ' style="width: 100%;" ', strpos($categorias, '<select') + 7, 0);
                                                                echo $categorias;
                                                                ?>
                                                                <style>#reg_cat_cat_oc {
                                                                        display: none
                                                                    }</style>

                                                                <?php
                                                                $dropdown_args = array(
                                                                    'hide_empty' => 0,
                                                                    'selected' => $registro['cat_id'] ? $registro['cat_id'] : 0,
                                                                    'hide_if_empty' => false,
                                                                    'taxonomy' => 'category',
                                                                    'name' => 'reg_cat',
                                                                    'id' => 'reg_cat_cat_at',
                                                                    'child_of' => get_category_by_slug('cat_at')->term_id,
                                                                    'orderby' => 'name',
                                                                    'show_option_none' => 'Categoria',
                                                                    'option_none_value' => '-1',
                                                                    'hierarchical' => true,
                                                                    'echo' => false
                                                                );
                                                                $categorias = wp_dropdown_categories($dropdown_args);
                                                                $categorias = substr_replace($categorias, 'selected disabled', strpos($categorias, 'Categoria') - 1, 0);
                                                                $categorias = substr_replace($categorias, ' style="width: 100%;" ', strpos($categorias, '<select') + 7, 0);
                                                                echo $categorias;
                                                                ?>
                                                                <style>#reg_cat_cat_at {
                                                                        display: none
                                                                    }</style>

                                                                <?php
                                                                $dropdown_args = array(
                                                                    'hide_empty' => 0,
                                                                    'selected' => $registro['cat_id'] ? $registro['cat_id'] : 0,
                                                                    'hide_if_empty' => false,
                                                                    'taxonomy' => 'category',
                                                                    'name' => 'reg_cat',
                                                                    'id' => 'reg_cat_cat_iu',
                                                                    'child_of' => get_category_by_slug('cat_iu')->term_id,
                                                                    'orderby' => 'name',
                                                                    'show_option_none' => 'Categoria',
                                                                    'option_none_value' => '-1',
                                                                    'hierarchical' => true,
                                                                    'echo' => false
                                                                );
                                                                $categorias = wp_dropdown_categories($dropdown_args);
                                                                $categorias = substr_replace($categorias, 'selected disabled', strpos($categorias, 'Categoria') - 1, 0);
                                                                $categorias = substr_replace($categorias, ' style="width: 100%;" ', strpos($categorias, '<select') + 7, 0);
                                                                echo $categorias;
                                                                ?>
                                                                <style>#reg_cat_cat_iu {
                                                                        display: none
                                                                    }</style>

                                                                <script language="javascript">
                                                                    function mudar_ids($tipo) {
                                                                        switch ($tipo) {
                                                                            case 'atrativo':
                                                                                $('#reg_cat_cat_at').attr('name', 'reg_cat');
                                                                                $('#reg_cat_cat_of').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_oc').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_iu').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_lz').attr('name', 'reg_cat_d');
                                                                                break;
                                                                            case 'onde_ficar':
                                                                                $('#reg_cat_cat_of').attr('name', 'reg_cat');
                                                                                $('#reg_cat_cat_at').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_oc').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_iu').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_lz').attr('name', 'reg_cat_d');
                                                                                mudar_ids();
                                                                                break;
                                                                            case 'onde_comer':
                                                                                $('#reg_cat_cat_oc').attr('name', 'reg_cat');
                                                                                $('#reg_cat_cat_of').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_at').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_iu').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_lz').attr('name', 'reg_cat_d');
                                                                                break;
                                                                            case 'info_uteis':
                                                                                $('#reg_cat_cat_iu').attr('name', 'reg_cat');
                                                                                $('#reg_cat_cat_oc').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_of').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_at').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_lz').attr('name', 'reg_cat_d');
                                                                                break;
                                                                            case 'lazer':
                                                                                $('#reg_cat_cat_lz').attr('name', 'reg_cat');
                                                                                $('#reg_cat_cat_iu').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_oc').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_of').attr('name', 'reg_cat_d');
                                                                                $('#reg_cat_cat_at').attr('name', 'reg_cat_d');
                                                                                break;
                                                                        }
                                                                    }

                                                                    function exibir_categorias() {
                                                                        $tipo = $('#select_reg_tipo :selected').val();

                                                                        mudar_ids($tipo);

                                                                        switch ($tipo) {
                                                                            case 'atrativo':
                                                                                $('#reg_cat_cat_at').css('display', 'block');
                                                                                $('#reg_cat_cat_of').css('display', 'none');
                                                                                $('#reg_cat_cat_oc').css('display', 'none');
                                                                                $('#reg_cat_cat_iu').css('display', 'none');
                                                                                $('#reg_cat_cat_lz').css('display', 'none');
                                                                                break;
                                                                            case 'onde_ficar':
                                                                                $('#reg_cat_cat_of').css('display', 'block');
                                                                                $('#reg_cat_cat_at').css('display', 'none');
                                                                                $('#reg_cat_cat_oc').css('display', 'none');
                                                                                $('#reg_cat_cat_iu').css('display', 'none');
                                                                                $('#reg_cat_cat_lz').css('display', 'none');
                                                                                mudar_ids();
                                                                                break;
                                                                            case 'onde_comer':
                                                                                $('#reg_cat_cat_oc').css('display', 'block');
                                                                                $('#reg_cat_cat_of').css('display', 'none');
                                                                                $('#reg_cat_cat_at').css('display', 'none');
                                                                                $('#reg_cat_cat_iu').css('display', 'none');
                                                                                $('#reg_cat_cat_lz').css('display', 'none');
                                                                                break;
                                                                            case 'info_uteis':
                                                                                $('#reg_cat_cat_iu').css('display', 'block');
                                                                                $('#reg_cat_cat_oc').css('display', 'none');
                                                                                $('#reg_cat_cat_of').css('display', 'none');
                                                                                $('#reg_cat_cat_at').css('display', 'none');
                                                                                $('#reg_cat_cat_lz').css('display', 'none');
                                                                                break;
                                                                            case 'lazer':
                                                                                $('#reg_cat_cat_lz').css('display', 'block');
                                                                                $('#reg_cat_cat_iu').css('display', 'none');
                                                                                $('#reg_cat_cat_oc').css('display', 'none');
                                                                                $('#reg_cat_cat_of').css('display', 'none');
                                                                                $('#reg_cat_cat_at').css('display', 'none');
                                                                                break;
                                                                        }
                                                                    }
                                                                </script>

                                                                <div
                                                                    style="width: 100%; text-align: right; margin-bottom: 10px">
                                                                    <a target="_blank"
                                                                       href="edit-tags.php?taxonomy=category">nova
                                                                        categoria</a>
                                                                </div>

                                                            </div>

                                                            <select name="reg_cidade" required style="width: 100%;">
                                                                <option disabled selected>Cidade</option>
                                                                <?php
                                                                global $wpdb;
                                                                $cidades = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "cidades" . "");
                                                                foreach ($cidades as $cidade) { ?>
                                                                    <option
                                                                        value="<?php echo $cidade->id ?>" <?php if ($registro['cidade_id'] == $cidade->id) echo 'selected'; ?>><?php echo $cidade->cidade ?></option>
                                                                <?php } ?>
                                                            </select>
                                                            <div
                                                                style="width: 100%; text-align: right; margin-bottom: 10px">
                                                                <a target="_blank"
                                                                   href="admin.php?page=<?php echo PLUGIN_PREFIX ?>cidades">nova
                                                                    cidade</a>
                                                            </div>
                                                            <?php
                                                            if ($parceiro->aprovado == '0')
                                                                echo '
                                                                    <div style="text-align: center;">
                                                                        <label><input type="checkbox" name="avisar_aprovacao" checked>Enviar email informando aprovação</label>
                                                                    </div>
                                                                ';
                                                            ?>

                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>

                                                <div id="major-publishing-actions">
                                                    <div id="delete-action">
                                                        <a class="submitdelete deletion hidden" href="#"></a>
                                                    </div>

                                                    <div id="publishing-action">
                                                        <span class="spinner"></span>
                                                        <a href="admin.php?page=<?php echo PLUGIN_SLUG ?>"
                                                           style="color: #e73746; margin-right: 10px;">cancelar</a>
                                                        <input name="original_publish" id="original_publish"
                                                               value="Publicar" type="hidden">
                                                        <input name="submit" id="submit-cadastro-empreendimento"
                                                               class="button button-primary button-large"
                                                               value="Alterar Parceiro" type="submit"
                                                               style="float:right;">
                                                        <input name="submit" id="submit-cadastro-evento"
                                                               class="button button-primary button-large"
                                                               value="Adicionar Evento" type="submit"
                                                               style="float:right;display: none">
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <br class="clear">
            </div>
    </form>
</div>