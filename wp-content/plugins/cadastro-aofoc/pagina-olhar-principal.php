<?php function pagina_olhar_principal()
{ ?>

    <?php if (isset($_REQUEST['aceitar']) && is_numeric($_REQUEST['aceitar'])) {
    global $wpdb;
    $resultado = $wpdb->get_results("UPDATE " . $wpdb->prefix . PLUGIN_PREFIX . "fotos" . " SET aprovado = '1' WHERE id = '".$_REQUEST['aceitar']."'");
    } ?>

    <?php if (isset($_REQUEST['recusar']) && is_numeric($_REQUEST['recusar'])) {
    global $wpdb;
    $resultado = $wpdb->get_results("DELETE FROM " . $wpdb->prefix . PLUGIN_PREFIX . "fotos" . " WHERE id = '".$_REQUEST['recusar']."'");
    } ?>


    <?php if (isset($_REQUEST['editar']) && is_numeric($_REQUEST['editar'])) {
        global $wpdb;
        $registro = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "fotos" . " WHERE id = '".$_REQUEST['editar']."'");
        $registro = $registro[0];
        echo '<img src="'.$registro->url_foto.'"><br>
        <a style="color: #3e8f3e" href="admin.php?page='.PLUGIN_PREFIX.'olhar&aceitar='.$_REQUEST['editar'].'">ACEITAR</a>&nbsp;&nbsp;&nbsp;
        <a style="color: #e73746" href="admin.php?page='.PLUGIN_PREFIX.'olhar&recusar='.$_REQUEST['editar'].'">RECUSAR</a>';
    } else { ?>
    <div class="wrap">
    <h1>Fotos dos visitantes</a>
    </h1>
    <br/>
    <?php if (is_numeric(@$_GET['excluir'])) {
        if (remover_registro_fotos($_GET['excluir'])) { ?>
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
                if (confirm("Deseja realmente deletar excluir ?"))
                    location.href = "admin.php?page=<?php echo PLUGIN_PREFIX ?>olhar&excluir=" + id;
            }
        </script>

        <tbody id="the-list">
        <?php
        global $wpdb;
        $registros = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "fotos" . " WHERE aprovado = '1'");
        if ($wpdb->num_rows > 0)
            foreach ($registros as $registro) {
                $cidade = $wpdb->get_results("SELECT cidade FROM " . $wpdb->prefix . PLUGIN_PREFIX . "cidades" . " WHERE id = " . $registro->cidade_id . "");
                $cidade = $cidade[0]->cidade;
                ?>
                <tr id="post-1"
                    class="iedit author-self level-0 post-1 type-post status-publish format-standard hentry category-sem-categoria">
                    <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                        <strong><a class="row-title"
                                   href="admin.php?page=<?php echo PLUGIN_PREFIX ?>olhar&editar=<?php echo $registro->id ?>"><?php echo $registro->id ?></a></strong>
                    </td>
                    <td class='modalidade column-modalidade'><?php echo $cidade ?></td>
                    <td class='tipo column-tipo'><?php echo $registro->local ?></td>
                    <td class='categories column-categories'><?php echo $registro->nome ?></td>
                    <td class='categories column-categories'
                    ">

                    <a style="color: #3e8f3e"
                       href="admin.php?page=<?php echo PLUGIN_PREFIX ?>olhar&editar=<?php echo $registro->id ?>">EDITAR</a>&nbsp;&nbsp;
                    <a style="color: #e73746"
                       href="javascript: deletar(<?php echo $registro->id ?>)">EXCLUIR</a>&nbsp;&nbsp;
                    <?php
                    if ($registro->aprovado == '0')
                        echo '<a style="color: #39668f" href="admin.php?page=' . PLUGIN_PREFIX . 'novo&editar=' . $registro->id . '">ACEITAR</a>';
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
                    </tr>
                '; ?>
        </tbody>

        <tfoot>
        <tr>
            <th scope="col" id='title' class='manage-column column-title column-primary sortable desc'>
                <span>&nbsp;&nbsp;&nbsp;ID</span>
            </th>
            <th scope="col" id='modalidade' class='manage-column column-modalidade'>Cidade</th>
            <th scope="col" id='tipo' class='manage-column column-tipo'>Local</th>
            <th scope="col" id='categories' class='manage-column column-categories'>Enviado por</th>
            <th scope="col" id='acao' class='manage-column column-acao'>Ação</th>
        </tr>
        </tfoot>

    </table>

    <?php
}
}

?>