<?php function pagina_eventos_pendentes() { ?>
    <div class="wrap">
    <h1>Aprovações pendentes</h1>
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
            <th scope="col" id='tipo' class='manage-column'>Local</th>
            <th scope="col" id='tipo' class='manage-column column-categories'>Data</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Ação</th>
        </tr>
        </thead>

        <script>
            function deletar(id, nome) {
                if(confirm("Deseja realmente deletar '" + nome + "' ?"))
                    location.href = "admin.php?page=<?php echo PLUGIN_PREFIX ?>eventos_pendentes&excluir=" + id;
            }
        </script>

        <tbody id="the-list">
        <?php
        global $wpdb;
        $registros = $wpdb->get_results( "SELECT * FROM ".$wpdb->prefix.PLUGIN_PREFIX."dados"." WHERE modalidade = 'evento' AND aprovado = '0'" );
        if($wpdb->num_rows > 0)
            foreach ($registros as $registro) { ?>
                <tr id="post-1" class="iedit author-self level-0 post-1 type-post status-publish format-standard hentry category-sem-categoria">
                    <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                        <strong><a class="row-title" href="admin.php?page=<?php echo PLUGIN_PREFIX ?>eventos_novo&editar=<?php echo $registro->id ?>"><?php echo stripslashes($registro->nome) ?></a></strong>
                    </td>
                    <td class='categories'"><?php echo $registro->endereco ?></td>
                    <td class='categories'"><?php echo $registro->dt_inicio.'-'.$registro->dt_fim ?></td>
                    <td class='categories column-categories'">

                    <?php
                    if($registro->aprovado == '0')
                        echo '<a style="color: #39668f" href="admin.php?page='.PLUGIN_PREFIX.'eventos_novo&editar='.$registro->id.'">REVISAR</a>&nbsp;&nbsp';
                    ?>
                    <a style="color: #e73746" href="javascript: deletar(<?php echo $registro->id ?>,'')">EXCLUIR</a>

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
                        <td class=\'categories column-categories\'">-</td>
                    </tr>
                '; ?>
        </tbody>

        <tfoot>
        <tr>
            <th scope="col" id='title' class='manage-column column-title column-primary sortable desc'>
                <span>&nbsp;&nbsp;&nbsp;Título</span>
            </th>
            <th scope="col" id='modalidade' class='manage-column column-modalidade'>Local</th>
            <th scope="col" id='tipo' class='manage-column column-tipo'>Data</th>
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