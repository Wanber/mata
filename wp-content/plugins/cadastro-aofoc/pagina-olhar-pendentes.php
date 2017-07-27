<?php function pagina_olhar_pendentes() { ?>
    <div class="wrap">
    <h1>Aprovações pendentes</h1>
    <br />
    <?php if(is_numeric(@$_GET['excluir'])) {
        if(remover_registro_fotos($_GET['excluir'])) { ?>
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
                <span>&nbsp;&nbsp;&nbsp;ID</span>
            </th>
            <th scope="col" id='tipo' class='manage-column column-categories'>Cidade</th>
            <th scope="col" id='tipo' class='manage-column column-categories'>Local</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Enviado por</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Ação</th>
        </tr>
        </thead>

        <script>
            function deletar(id) {
                if(confirm("Deseja realmente excluir ?"))
                    location.href = "admin.php?page=<?php echo PLUGIN_PREFIX ?>olhar&excluir=" + id;
            }
        </script>

        <tbody id="the-list">
        <?php
        global $wpdb;
        $registros = $wpdb->get_results( "SELECT * FROM ".$wpdb->prefix.PLUGIN_PREFIX."fotos"." WHERE aprovado = '0'" );
        if ($wpdb->num_rows > 0)
            foreach ($registros as $registro) {
                $cidade = $wpdb->get_results("SELECT cidade FROM " . $wpdb->prefix . PLUGIN_PREFIX . "cidades" . " WHERE id = " . $registro->cidade_id . "");
                $cidade = $cidade[0]->cidade;
                ?>
                <tr id="post-1"
                    class="level-0 post-1 type-post status-publish hentry category-sem-categoria">
                    <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                        <strong><a class="row-title"
                                   href="admin.php?page=<?php echo PLUGIN_PREFIX ?>olhar&editar=<?php echo $registro->id ?>"><?php echo $registro->id ?></a></strong>
                    </td>
                    <td class='modalidade column-modalidade'><?php echo $cidade ?></td>
                    <td class='tipo column-tipo'><?php echo $registro->local ?></td>
                    <td class='categories column-categories'><?php echo $registro->nome ?></td>
                    <td class='categories column-categories'
                    ">

                    <?php
                    if($registro->aprovado == '0')
                        echo '<a style="color: #39668f" href="admin.php?page='.PLUGIN_PREFIX.'olhar&editar='.$registro->id.'">REVISAR</a>&nbsp;&nbsp';
                    ?>
                    <a style="color: #e73746" href="javascript: deletar(<?php echo $registro->id ?>)">EXCLUIR</a>

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
                    </tr>
                '; ?>
        </tbody>

        <tfoot>
        <tr>
            <th scope="col" id='title' class='manage-column column-title  sortable desc'>
                <span>&nbsp;&nbsp;&nbsp;ID</span>
            </th>
            <th scope="col" id='modalidade' class='manage-column column-modalidade'>Cidade</th>
            <th scope="col" id='tipo' class='manage-column column-tipo'>Local</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Enviado por</th>
            <th scope="col" id='acao' class='manage-column column-acao'>Ação</th>
        </tr>
        </tfoot>

    </table>
<?php }