<?php

function admin_menu()
{

    $novos = checar_novos_pedidos('empreendimento');
    $novos > 0 ? $plg_txt = $novos : $plg_txt = '';

    add_menu_page(null, 'Empreend. <span class="update-plugins count-2"><span class="plugin-count">' . $plg_txt . '</span></span>', 'administrator', PLUGIN_SLUG, null,
        plugins_url('/imagens/icone_admin.png', __FILE__));

    add_submenu_page(PLUGIN_SLUG, null, 'Aprovados', 'administrator', PLUGIN_SLUG, 'pagina_principal');
    add_submenu_page(PLUGIN_SLUG, null, 'Novo', 'administrator', PLUGIN_PREFIX . 'novo', 'pagina_novo');
    add_submenu_page(PLUGIN_SLUG, null, 'Cidades', 'administrator', PLUGIN_PREFIX . 'cidades', 'pagina_cidades');
    add_submenu_page(PLUGIN_SLUG, null, 'Categorias', 'administrator', PLUGIN_PREFIX . 'categorias', 'pagina_categorias');
    add_submenu_page(PLUGIN_SLUG, null, 'Pendentes <span class="update-plugins count-2"><span class="plugin-count">' . $plg_txt . '</span></span>', 'administrator', PLUGIN_PREFIX . 'pendentes', 'pagina_pendentes');

    $novos = checar_novos_pedidos('evento');
    $novos > 0 ? $plg_txt = $novos : $plg_txt = '';

    add_menu_page(null, 'Eventos <span class="update-plugins count-2"><span class="plugin-count">' . $plg_txt . '</span></span>', 'administrator', PLUGIN_PREFIX . 'eventos', null,
        plugins_url('/imagens/icone_admin2.png', __FILE__));

    add_submenu_page(PLUGIN_PREFIX . 'eventos', null, 'Todos', 'administrator', PLUGIN_PREFIX . 'eventos', 'pagina_eventos_principal');
    add_submenu_page(PLUGIN_PREFIX . 'eventos', null, 'Novo', 'administrator', PLUGIN_PREFIX . 'eventos_novo', 'pagina_eventos_novo');
    add_submenu_page(PLUGIN_PREFIX . 'eventos', null, 'Cidades', 'administrator', PLUGIN_PREFIX . 'eventos_cidades', 'pagina_cidades');
    add_submenu_page(PLUGIN_PREFIX . 'eventos', null, 'Pendentes <span class="update-plugins count-2"><span class="plugin-count">' . $plg_txt . '</span></span>', 'administrator', PLUGIN_PREFIX . 'eventos_pendentes', 'pagina_eventos_pendentes');

    $novos = checar_novos_pedidos('olhar-dos-visitantes');
    $novos > 0 ? $plg_txt = $novos : $plg_txt = '';

    add_menu_page(null, 'Fotos <span class="update-plugins count-2"><span class="plugin-count">' . $plg_txt . '</span></span>', 'administrator', PLUGIN_PREFIX . 'olhar', null,
        plugins_url('/imagens/icone_admin3.png', __FILE__));

    add_submenu_page(PLUGIN_PREFIX . 'olhar', null, 'Todos', 'administrator', PLUGIN_PREFIX . 'olhar', 'pagina_olhar_principal');
    add_submenu_page(PLUGIN_PREFIX . 'olhar', null, 'Pendentes <span class="update-plugins count-2"><span class="plugin-count">' . $plg_txt . '</span></span>', 'administrator', PLUGIN_PREFIX . 'olhar_pendentes', 'pagina_olhar_pendentes');
}

include 'pagina-cidades.php';
include 'pagina-principal.php';
include 'pagina-novo.php';
include 'pagina-pendentes.php';

include 'pagina-eventos-principal.php';
include 'pagina-eventos-novo.php';
include 'pagina-eventos-pendentes.php';

include 'pagina-olhar-principal.php';
include 'pagina-olhar-pendentes.php';

function pagina_categorias() {
    echo '<script>window.location = "'.admin_url('edit-tags.php?taxonomy=category').'";</script>';
}

function checar_novos_pedidos($modalidade)
{
    global $wpdb;

    if($modalidade == 'olhar-dos-visitantes')
        return $wpdb->get_var("SELECT COUNT(*) AS novos FROM `".$wpdb->prefix.PLUGIN_PREFIX."fotos` WHERE aprovado = '0'");
    else
        return $wpdb->get_var("SELECT COUNT(*) AS novos FROM `".$wpdb->prefix.PLUGIN_PREFIX."dados` WHERE aprovado = '0' AND modalidade = '$modalidade'");
}
?>