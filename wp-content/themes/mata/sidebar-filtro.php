<?php strstr($_SERVER['REQUEST_URI'], '/olhar-dos-visitantes') ? $olhar_visitantes = true : $olhar_visitantes = false; ?>


<div id="menu_ex" class="col-md-3 hidden-xs hidden-sm">

    <form method="post"
          action="<?php if ($olhar_visitantes) echo get_site_url() . '/olhar-dos-visitantes'; else echo get_site_url() . '/parceiros'; ?>">

        <ul class="list-group lista-cidades">
            <ul class="list-group lista-cidades">
                <h4>Cidades</h4>
                <?php $cidades = json_decode(do_shortcode('[aofoc_cidades]')); ?>
                <?php foreach ($cidades as $cidade) {
                    if (@$_REQUEST['checkbox-cidade'] == $cidade->id || @in_array($cidade->id, @$_REQUEST['checkbox-cidade']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                        <li class="list-group-item">
                            <input type="checkbox" ' . $checked . ' name="checkbox-cidade[]" value="' . $cidade->id . '" id="checkbox-cidade-' . $cidade->id . '" class="css-checkbox" />
                            <label for="checkbox-cidade-' . $cidade->id . '" class="css-label truncate" title="' . $cidade->cidade . '">' . $cidade->cidade . ' <!--<span class="badge">' . $cidade->qtd_itens . '</span>--></label>
                        </li>
                    ';
                } ?>
            </ul>

            <?php if (!$olhar_visitantes) { ?>

                <h4>Onde ficar</h4>
                <?php
                $onde_ficar_cats = get_categories(array(
                    'parent' => get_category_by_slug('cat_of')->term_id,
                    'hide_empty' => false,
                    'hierarchical' => 1
                ));

                foreach ($onde_ficar_cats as $onde_ficar_cat) {

                    if (@$_REQUEST['checkbox-of'] == $onde_ficar_cat->cat_ID || @in_array($onde_ficar_cat->cat_ID, @$_REQUEST['checkbox-of']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                        <li class="list-group-item">
                            <input type="checkbox" ' . $checked . ' name="checkbox-of[]" value="' . $onde_ficar_cat->cat_ID . '" id="checkbox-of-' . $onde_ficar_cat->cat_ID . '" class="css-checkbox" />
                            <label for="checkbox-of-' . $onde_ficar_cat->cat_ID . '" class="css-label truncate" title="' . $onde_ficar_cat->name . '">' . $onde_ficar_cat->name . ' <!--<span class="badge">0</span>--></label>
                        </li>
                    ';
                }
                ?>

                <h4>Onde comer</h4>
                <?php
                $onde_comer_cats = get_categories(array(
                    'parent' => get_category_by_slug('cat_oc')->term_id,
                    'hide_empty' => false,
                    'hierarchical' => 1
                ));

                foreach ($onde_comer_cats as $onde_comer_cat) {

                    if (@$_REQUEST['checkbox-oc'] == $onde_comer_cat->cat_ID || @in_array($onde_comer_cat->cat_ID, @$_REQUEST['checkbox-oc']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                        <li class="list-group-item">
                            <input type="checkbox" ' . $checked . ' name="checkbox-oc[]" value="' . $onde_comer_cat->cat_ID . '" id="checkbox-oc-' . $onde_comer_cat->cat_ID . '" class="css-checkbox" />
                            <label for="checkbox-oc-' . $onde_comer_cat->cat_ID . '" class="css-label truncate" title="' . $onde_comer_cat->name . '">' . $onde_comer_cat->name . ' <!--<span class="badge">0</span>--></label>
                        </li>
                    ';
                }
                ?>

                <h4>Atrativos</h4>
                <?php
                $atrativos_cats = get_categories(array(
                    'parent' => get_category_by_slug('cat_at')->term_id,
                    'hide_empty' => false,
                    'hierarchical' => 1
                ));

                foreach ($atrativos_cats as $atrativos_cat) {

                    if (@$_REQUEST['checkbox-at'] == $atrativos_cat->cat_ID || @in_array($atrativos_cat->cat_ID, @$_REQUEST['checkbox-at']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                        <li class="list-group-item">
                            <input type="checkbox" ' . $checked . ' name="checkbox-at[]" value="' . $atrativos_cat->cat_ID . '" id="checkbox-at-' . $atrativos_cat->cat_ID . '" class="css-checkbox" />
                            <label for="checkbox-at-' . $atrativos_cat->cat_ID . '" class="css-label truncate" title="' . $atrativos_cat->name . '">' . $atrativos_cat->name . ' <!--<span class="badge">0</span>--></label>
                        </li>
                    ';
                }
                ?>

                <h4>Eventos</h4>
                <?php
                $evento_cats = get_categories(array(
                    'parent' => get_category_by_slug('cat_ev')->term_id,
                    'hide_empty' => false,
                    'hierarchical' => 1
                ));

                foreach ($evento_cats as $evento_cat) {

                    if (@$_REQUEST['checkbox-ev'] == $evento_cat->cat_ID || @in_array($evento_cat->cat_ID, @$_REQUEST['checkbox-ev']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                    <li class="list-group-item">
                        <input type="checkbox" ' . $checked . ' name="checkbox-ev[]" value="' . $evento_cat->cat_ID . '" id="checkbox-ev-' . $evento_cat->cat_ID . '" class="css-checkbox" />
                        <label for="checkbox-ev-' . $evento_cat->cat_ID . '" class="css-label truncate" title="' . $evento_cat->name . '">' . $evento_cat->name . ' <!--<span class="badge">0</span>--></label>
                    </li>
                ';
                }
                ?>

                <h4>Lazer</h4>
                <?php
                $lazer_cats = get_categories(array(
                    'parent' => get_category_by_slug('cat_lz')->term_id,
                    'hide_empty' => false,
                    'hierarchical' => 1
                ));

                foreach ($lazer_cats as $lazer_cat) {

                    if (@$_REQUEST['checkbox-lz'] == $lazer_cat->cat_ID || @in_array($lazer_cat->cat_ID, @$_REQUEST['checkbox-lz']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                    <li class="list-group-item">
                        <input type="checkbox" ' . $checked . ' name="checkbox-lz[]" value="' . $lazer_cat->cat_ID . '" id="checkbox-lz-' . $lazer_cat->cat_ID . '" class="css-checkbox" />
                        <label for="checkbox-lz-' . $lazer_cat->cat_ID . '" class="css-label truncate" title="' . $lazer_cat->name . '">' . $lazer_cat->name . ' <!--<span class="badge">0</span>--></label>
                    </li>
                ';
                }
                ?>

                <h4>Informações úteis</h4>
                <?php
                $info_uteis_cats = get_categories(array(
                    'parent' => get_category_by_slug('cat_iu')->term_id,
                    'hide_empty' => false,
                    'hierarchical' => 1
                ));

                foreach ($info_uteis_cats as $info_uteis_cat) {

                    if (@$_REQUEST['checkbox-iu'] == $info_uteis_cat->cat_ID || @in_array($info_uteis_cat->cat_ID, @$_REQUEST['checkbox-iu']))
                        $checked = ' checked';
                    else
                        $checked = '';

                    echo '
                        <li class="list-group-item">
                            <input type="checkbox" ' . $checked . ' name="checkbox-iu[]" value="' . $info_uteis_cat->cat_ID . '" id="checkbox-iu-' . $info_uteis_cat->cat_ID . '" class="css-checkbox" />
                            <label for="checkbox-iu-' . $info_uteis_cat->cat_ID . '" class="css-label truncate" title="' . $info_uteis_cat->name . '">' . $info_uteis_cat->name . ' <!--<span class="badge">0</span>--></label>
                        </li>
                    ';
                }
                ?>

            <?php } ?>


        </ul>

        <button style="padding: 10px" class="btn btn-primary btn-block" type="submit"><span class="glyphicon glyphicon-search"
                                                                      aria-hidden="true"></span> PESQUISAR
        </button>
    </form>

</div>