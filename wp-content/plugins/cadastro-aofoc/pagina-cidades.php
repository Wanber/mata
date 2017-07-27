<?php
function pagina_cidades()
{ ?>

    <?php
    if (@$_POST['submit'] == 'Adicionar Cidade') {
        $registro['cidade'] = $_POST['reg_cidade'];
        if (add_cidade($registro)) { ?>
            <div id="message" class="updated notice is-dismissible">
                <p>Registro adicionado.</p>
                <button type="button" class="notice-dismiss"><span
                        class="screen-reader-text">Dispensar este aviso.</span></button>
            </div>
        <?php } else { ?>
            <div id="message" class="error updated notice is-dismissible">
                <p>Não foi possível adicionar o registro.</p>
                <button type="button" class="notice-dismiss"><span
                        class="screen-reader-text">Dispensar este aviso.</span></button>
            </div>
        <?php }
    }
    ?>

    <?php
    if (is_numeric(@$_GET['excluir'])) {
        $registro_id = $_GET['excluir'];

        global $wpdb;
        $registros = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados WHERE cidade_id = ".$registro_id."");
        if(count($registros) > 0)
            echo '
                <div id="message" class="error updated notice is-dismissible">
                    <p>Existem '.count($registros).' registros com esta cidade, exclua ou altere estes registros antes de remover a cidade.</p>
                    <button type="button" class="notice-dismiss"><span
                                class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            ';
        else {
            if (remover_cidade($registro_id)) { ?>
                <div id="message" class="updated notice is-dismissible">
                    <p>Registro Removido.</p>
                    <button type="button" class="notice-dismiss"><span
                                class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            <?php } else { ?>
                <div id="message" class="error updated notice is-dismissible">
                    <p>Não foi possível remover o registro.</p>
                    <button type="button" class="notice-dismiss"><span
                                class="screen-reader-text">Dispensar este aviso.</span></button>
                </div>
            <?php }
        }
    }
    ?>

    <div class="wrap">
        <h1>Cidades</h1><br/>
        <table class="wp-list-table widefat fixed striped posts">
            <thead>
            <tr>
                <th scope="col" id='title' class='manage-column column-title column-primary sortable desc'>
                    <span>&nbsp;&nbsp;&nbsp;Título</span>
                </th>
                <th scope="col" id='tipo' class='manage-column column-categories'>Ação</th>
            </tr>
            </thead>

            <script>
                function deletar(id, nome) {
                    if (confirm("Deseja realmente deletar '" + nome + "' ?"))
                        location.href = "admin.php?page=<?php echo PLUGIN_PREFIX ?>cidades&excluir=" + id;
                }
            </script>

            <tbody id="the-list">
            <?php
            global $wpdb;
            $registros = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . PLUGIN_PREFIX . "cidades" . "");
            if ($wpdb->num_rows > 0)
                foreach ($registros as $registro) { ?>
                    <tr id="post-1"
                        class="iedit author-self level-0 post-1 type-post status-publish format-standard hentry category-sem-categoria">
                        <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                            <strong><a href="#"><?php echo $registro->cidade ?></a></strong>
                        </td>
                        <td class='categories column-categories'
                        "><a style="color: #e73746"
                             href="javascript: deletar(<?php echo $registro->id ?>,'<?php echo $registro->cidade ?>');">DELETAR</a></td>
                    </tr>
                    <?php
                } else echo '
                    <tr id="post-1" class="iedit author-self level-0 post-1 type-post status-publish format-standard hentry category-sem-categoria">
                            <td class="title column-title has-row-actions column-primary page-title" data-colname="Título">
                                <strong><a class="row-title" href="#">Nenhuma Cidade encontrada</a></strong>
                            </td>
                            <td class=\'categories column-categories\'">-</td>
                        </tr>
                    '; ?>
            </tbody>

        </table>

        <div id="poststuff">
            <div id="post-body" class="metabox-holder columns-2">
                <div id="post-body-content">
                    <div id="titlediv">
                        <div id="titlewrap">
                            <form action="admin.php?page=<?php echo PLUGIN_PREFIX ?>cidades" method="post">
                                <h3>Nova Cidade</h3>
                                <input type="text" name="reg_cidade" placeholder="Nome" style="width: 50%" required>
                                <?php submit_button("Adicionar Cidade"); ?>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php }