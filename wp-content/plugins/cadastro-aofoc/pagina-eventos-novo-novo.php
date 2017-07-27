<?php
if (@$_POST['submit'] == 'Adicionar Evento') {
    $registro = array();
    $registro['cat_id'] = $_POST['reg_cat'];
    $registro['nome'] = $_POST['reg_nome'];

    $logo = $_FILES['reg_logo'];
    $upload = wp_handle_upload($logo, array('test_form' => false));
    if ($upload && !isset($upload['error'])) {
        $registro['url_icone'] = $upload['url'];
    } else {
        $registro['url_icone'] = "";
    }
    $img1 = $_FILES['reg_imagem1'];
    $upload = wp_handle_upload($img1, array('test_form' => false));
    if ($upload && !isset($upload['error'])) {
        $registro['url_img1'] = $upload['url'];
    } else {
        $registro['url_img1'] = "";
    }
    $img2 = $_FILES['reg_imagem2'];
    $upload = wp_handle_upload($img2, array('test_form' => false));
    if ($upload && !isset($upload['error'])) {
        $registro['url_img2'] = $upload['url'];
    } else {
        $registro['url_img2'] = "";
    }
    $img3 = $_FILES['reg_imagem3'];
    $upload = wp_handle_upload($img3, array('test_form' => false));
    if ($upload && !isset($upload['error'])) {
        $registro['url_img3'] = $upload['url'];
    } else {
        $registro['url_img3'] = "";
    }
    $img4 = $_FILES['reg_imagem4'];
    $upload = wp_handle_upload($img4, array('test_form' => false));
    if ($upload && !isset($upload['error'])) {
        $registro['url_img4'] = $upload['url'];
    } else {
        $registro['url_img4'] = "";
    }
    $registro['descricao'] = $_POST['reg_desc'];
    $registro['endereco'] = $_POST['reg_end'];
    $registro['dt_inicio'] = $_POST['dt_inicio'];
    $registro['dt_fim'] = $_POST['dt_fim'];
    $registro['hr_inicio'] = $_POST['hr_inicio'];
    $registro['hr_fim'] = $_POST['hr_fim'];
    $registro['valor_entrada'] = $_POST['reg_valor_entrada'];
    $registro['facebook'] = $_POST['reg_facebook'];
    $registro['site'] = $_POST['reg_site'];
    $registro['cidade_id'] = $_POST['reg_cidade'];

    $registro['modalidade'] = 'evento';
    $registro['aprovado'] = true;

    if ($registro['cidade_id'] != '' && $registro['cat_id'] != '-1' && $registro['cat_id'] != '') {

        if ($registro['url_img1'] == '') {
            echo '
                <div id="message" class="error notice is-dismicssible">
                    <p>Não foi possível salvar as imagens: a imagem 1 deve ser selecionada</p>
                    <button type="button" class="notice-dismiss"><span
                            class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            ';
        } else {

            if (add_registro_evento($registro)) {

                echo '
                <div id="message" class="updated notice is-dismissible">
                    <p>Registro adicionado.</p>
                    <button type="button" class="notice-dismiss"><span
                            class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            ';

            } else {

                echo '
                <div id="message" class="error notice is-dismissible">
                    <p>Já existe um evento com este nome, data e cidade.</p>
                    <button type="button" class="notice-dismiss"><span
                            class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            ';
            }
        }

    } else {
        echo '
            <div id="message" class="error notice is-dismissible">
                <p>Selecione uma Cidade e uma Categoria.</p>
                <button type="button" class="notice-dismiss"><span
                        class="screen-reader-text">Dispensar este aviso.</span></button>
            </div>
        ';
    }
}
?>

<div class="wrap">
    <h1>Novo Evento</h1>

    <form action="" method="post" enctype="multipart/form-data">
        <div id="poststuff">
            <div id="post-body" class="metabox-holder columns-2">
                <div id="form-empreendimento" style="position: relative;">
                    <div id="post-body-content">

                        <input type="text" name="reg_nome" spellcheck="true" autocomplete="off" placeholder="Nome"
                               required
                               value='<?php if (isset($registro['nome'])) echo stripslashes($registro['nome']); ?>'/>
                        <textarea name="reg_desc" placeholder="Descrição" spellcheck="true" required
                                  class="form-control" rows="4"
                                  style="width: 100%; margin-left: 8px;border-radius: 5px;padding: 10px"><?php if (isset($registro['descricao'])) echo stripslashes($registro['descricao']); ?></textarea>
                        &nbsp;&nbsp;&nbsp;&nbsp;(max 800 caracteres)
                        <input type="text" name="reg_end" spellcheck="true" autocomplete="off" placeholder="Local"
                               required value="<?php if (isset($registro['endereco'])) echo $registro['endereco']; ?>"/>
                        <div style="width: 100%; margin: 0">
                            <input type="text" name="dt_inicio" class="data" spellcheck="true" autocomplete="off"
                                   required
                                   placeholder="Data início" style="width: 48%; float: left"
                                   value="<?php if (isset($registro['dt_inicio'])) echo $registro['dt_inicio']; ?>"/>
                            <input type="text" name="dt_fim" spellcheck="true" autocomplete="off" required
                                   placeholder="Data término" class="data"
                                   style="width: 48%; float: right; margin-right: 0"
                                   value="<?php if (isset($registro['dt_fim'])) echo $registro['dt_fim']; ?>"/>
                            <div style="clear: both;"></div>
                        </div>

                        <div style="width: 100%; margin: 0">
                            <input type="text" name="hr_inicio" class="hora" spellcheck="true" autocomplete="off"
                                   style="width: 48%; float: left" placeholder="Hora inicio" required
                                   value="<?php if (isset($registro['hr_inicio'])) echo $registro['hr_inicio']; ?>"/>
                            <input type="text" name="hr_fim" class="hora" spellcheck="false" autocomplete="off"
                                   style="width: 48%; float: right; margin-right: 0" placeholder="Hora término" required
                                   value="<?php if (isset($registro['hr_fim'])) echo $registro['hr_fim']; ?>"/>
                            <div style="clear: both;"></div>
                        </div>

                        <input type="text" name="reg_valor_entrada" class="rs" spellcheck="true" required
                               autocomplete="off" placeholder="Valor entrada"
                               value="<?php if (isset($registro['valor_entrada'])) echo $registro['valor_entrada']; ?>"/>

                        <input type="text" name="reg_site" spellcheck="true" autocomplete="off" placeholder="Site"
                               value="<?php if (isset($registro['site'])) echo $registro['site']; ?>"/>

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
                        <input id="inpt_img1" type="file" accept="image/*" name="reg_imagem1" required/>
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

                                                <div style="display:none;">
                                                    <p class="submit"><input name="save" id="save" class="button"
                                                                             value="Salvar" type="submit"></p></div>

                                                <div id="misc-publishing-actions">

                                                    <div class="misc-pub-section curtime misc-pub-curtime">

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
                                                               href="admin.php?page=<?php echo PLUGIN_PREFIX ?>eventos_cidades">nova
                                                                cidade</a>
                                                        </div>

                                                        <?php
                                                        $dropdown_args = array(
                                                            'hide_empty' => 0,
                                                            'selected' => $registro['cat_id'] ? $registro['cat_id'] : 0,
                                                            'hide_if_empty' => false,
                                                            'taxonomy' => 'category',
                                                            'name' => 'reg_cat',
                                                            'id' => 'reg_cat',
                                                            'child_of' => get_category_by_slug('cat_ev')->term_id,
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

                                                        <div
                                                                style="width: 100%; text-align: right; margin-bottom: 10px">
                                                            <a target="_blank"
                                                               href="edit-tags.php?taxonomy=category">nova
                                                                categoria</a>
                                                        </div>

                                                    </div>

                                                    <div class="clear"></div>
                                                </div>

                                                <div id="major-publishing-actions">
                                                    <div id="delete-action">
                                                        <a class="submitdelete deletion hidden" href="#"></a></div>

                                                    <div id="publishing-action">
                                                        <span class="spinner"></span>
                                                        <a href="admin.php?page=<?php echo PLUGIN_PREFIX ?>eventos"
                                                           style="color: #e73746; margin-right: 10px;">cancelar</a>
                                                        <input name="original_publish" id="original_publish"
                                                               value="Publicar" type="hidden">
                                                        <input name="submit" id="submit-cadastro-evento"
                                                               class="button button-primary button-large"
                                                               value="Adicionar Evento" type="submit"
                                                               style="float:right;">
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