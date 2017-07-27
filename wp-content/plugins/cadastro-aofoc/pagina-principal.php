<?php function pagina_principal() { ?>
<div class="wrap">
    <h1>Parceiros <a href="admin.php?page=<?php echo PLUGIN_PREFIX ?>novo" class="page-title-action">Adicionar Novo</a></h1>
    <br />
    <?php if(is_numeric(@$_GET['excluir'])) {
        if(remover_registro($_GET['excluir'])) { ?>
            <div id="message" class="updated notice is-dismissible">
                <p>Registro removido.</p>
                <button type="button" class="notice-dismiss"><span
                        class="screen-reader-text">Dispensar este aviso.</span></button>
            </div>
        <?php } else { ?>
            <div id="message" class="error notice is-dismissible">
                <p>Não foi possível remover o registro.</p>
                <button type="button" class="notice-dismiss"><span
                        class="screen-reader-text">Dispensar este aviso.</span></button>
            </div>
        <?php }
    } ?>
    <table class="wp-list-table widefat fixed striped posts">
        <thead>
        <tr>
            <th scope="col" id='title' class='manage-column column-title column-primary sortable desc'>
                <span>&nbsp;&nbsp;&nbsp;Título</span>
            </th>
            <th scope="col" id='tipo' class='manage-column column-categories'>Modalidade</th>
            <th scope="col" id='tipo' class='manage-column column-categories'>Tipo</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Categoria</th>
            <th scope="col" id='tipo' class='manage-column column-categories'>Cidade</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Ação</th>
        </tr>
        </thead>

        <script>
            function deletar(id, nome) {
                if(confirm("Deseja realmente deletar '" + nome + "' ?"))
                    location.href = "admin.php?page=<?php echo PLUGIN_SLUG ?>&excluir=" + id;
            }
        </script>

        <tbody id="the-list">
        <?php
        global $wpdb;
        $registros = $wpdb->get_results( "SELECT * FROM ".$wpdb->prefix.PLUGIN_PREFIX."dados"." WHERE modalidade = 'empreendimento' AND aprovado = '1'" );
        if($wpdb->num_rows > 0)
            foreach ($registros as $registro) {
                $cidade = $wpdb->get_results( "SELECT cidade FROM ".$wpdb->prefix.PLUGIN_PREFIX."cidades"." WHERE id = ".$registro->cidade_id."" );
                $cidade = $cidade[0]->cidade;
                ?>
                <tr id="post-1" class="iedit author-self level-0 post-1 type-post status-publish format-standard hentry category-sem-categoria">
                    <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                        <strong><a class="row-title" href="admin.php?page=<?php echo PLUGIN_PREFIX ?>novo&editar=<?php echo $registro->id ?>"><?php echo stripslashes($registro->nome) ?></a></strong>
                    </td>
                    <td class='modalidade column-modalidade'"><?php switch ($registro->modalidade) {
                        case 'empreendimento': echo 'Empreendimento'; break;
                        case 'evento': echo 'Evento'; break;
                    } ?></td>
                    <td class='tipo column-tipo'"><?php switch ($registro->tipo) {
                        case 'atrativo': echo 'Atrativo'; break;
                        case 'onde_ficar': echo 'Onde Ficar'; break;
                        case 'onde_comer': echo 'Onde Comer'; break;
                        case 'lazer': echo 'Lazer'; break;
                        case 'info_uteis': echo 'Informações Úteis'; break;
                        case '': echo '-'; break;
                    } ?></td>
                    <td class='categories column-categories'"><a href="edit-tags.php?taxonomy=category"><?php if(get_cat_name($registro->cat_id) != '') echo get_cat_name($registro->cat_id); else echo '-'?></a></td>
                    <td class="manage-column column-author"><a href="admin.php?page=<?php echo PLUGIN_PREFIX ?>cidades"><?php echo $cidade ?></a></td>
                    <td class='categories column-categories'">

                    <a style="color: #3e8f3e" href="admin.php?page=<?php echo PLUGIN_PREFIX ?>novo&editar=<?php echo $registro->id ?>">EDITAR</a>&nbsp;&nbsp;
                    <a style="color: #e73746" href="javascript: deletar(<?php echo $registro->id ?>,'')">EXCLUIR</a>&nbsp;&nbsp;
                    <?php
                    if($registro->aprovado == '0')
                        echo '<a style="color: #39668f" href="admin.php?page='.PLUGIN_PREFIX.'novo&editar='.$registro->id.'">ACEITAR</a>';
                    ?>

                    </td>
                </tr>
                <?php
            } else echo '
                <tr id="post-1" class="iedit author-self level-0 post-1 type-post status-publish format-standard hentry category-sem-categoria">
                        <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                            <strong><a class="row-title" href="#">Nenhum registro</a></strong>
                        </td>
                        <td class=\'modalidade column-modalidade\'">-</td>
                        <td class=\'tipo column-tipo\'">-</td>
                        <td class="manage-column column-author">-</td>
                        <td class=\'categories column-categories\'">-</td>
                        <td class=\'categories column-categories\'">-</td>
                    </tr>
                '; ?>
        </tbody>

        <tfoot>
        <tr>
            <th scope="col" id='title' class='manage-column column-title column-primary sortable desc'>
                <span>&nbsp;&nbsp;&nbsp;Título</span>
            </th>
            <th scope="col" id='modalidade' class='manage-column column-modalidade'>Modalidade</th>
            <th scope="col" id='tipo' class='manage-column column-tipo'>Tipo</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Categoria</th>
            <th scope="col" id='cidade' class='manage-column column-cidade'>Cidade</th>
            <th scope="col" id='acao' class='manage-column column-acao'>Ação</th>
        </tr>
        </tfoot>

    </table>
    <!--
        <h1>Configurações</h1><hr>

        <form method="post" action="options.php">
            <?php settings_fields( PLUGIN_PREFIX.'configs' ); ?>
            <?php do_settings_sections( PLUGIN_PREFIX.'configs' ); ?>
            <table class="form-table">
                <tr valign="top">
                    <th scope="row">Ativar confirmação de um admin antes de publicar</th>
                    <td>
                        <select name="<?php echo PLUGIN_PREFIX.'ativar_confirmacao' ?>">
                            <option value="1" <?php if(esc_attr( get_option(PLUGIN_PREFIX.'ativar_confirmacao') == '1')) echo "selected"; ?>>Sim</option>
                            <option value="0" <?php if(esc_attr( get_option(PLUGIN_PREFIX.'ativar_confirmacao') == '0')) echo "selected"; ?>>Não</option>
                        </select>
                    </td>
                </tr>
            </table>

            <?php submit_button(); ?>

        </form>
        -->
<?php }