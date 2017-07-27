<section class="content-menu">
    <?php
    $atrativos_cats = get_categories(array(
        'parent' => get_category_by_slug('cat_at')->term_id,
        'hide_empty' => false,
        'hierarchical' => 1,
        'number' => 4
    ));

    $cont = 1;

    echo '<div style="text-align: center">';

    foreach ($atrativos_cats as $atrativos_cat) {

        switch ($cont++) {
            case 1:
                $icone = '1.png';
                $cor = '#00BB78';
                break;
            case 2:
                $icone = '2.png';
                $cor = '#FF4B3A';
                break;
            case 3:
                $icone = '3.png';
                $cor = '#B85D4C';
                break;
            case 4:
                $icone = '4.png';
                $cor = '#B85EA8';
                break;
        }

        echo '
            <li><a href="' . get_site_url() . '/parceiros/?checkbox-at[]=' . $atrativos_cat->cat_ID . '" style="color: ' . $cor . ';"><img style="width: 25px; height: 25px" src="'.get_template_directory_uri().'/img/'.$icone.'"/> ' . $atrativos_cat->name . '</a></li>
        ';
    }

    echo '</div>';
    ?>
</section>