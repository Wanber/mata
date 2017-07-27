<?php

add_shortcode(PLUGIN_SLUG, 'exibir_shortcode');
function exibir_shortcode($atts = null)
{
    $atts = shortcode_atts(
        array(
            'modalidade' => '',
            'tipo' => '',
            'cidade' => '',
            'categoria' => '',
            'limite' => '',
            'mes' => '',
            'vencidos' => '',
        ), $atts, PLUGIN_SLUG);

    global $wpdb;

    $tipos = explode(',', $atts['tipo']);
    $tipos_array = array();
    foreach ($tipos as $tipo)
        $tipos_array[] = "'" . $tipo . "'";
    $tipos = implode(",", $tipos_array);

    $modalidades = explode(',', $atts['modalidade']);
    $modalidades_array = array();
    foreach ($modalidades as $modalidade)
        $modalidades_array[] = "'" . $modalidade . "'";
    $modalidades = implode(",", $modalidades_array);

    /*
    if(strstr($modalidades, 'evento')) {
        if($atts['categoria'] != '')
            $atts['categoria'] .= ',0';
        else
            $atts['categoria'] = '0';
    }
    */

    if ($atts['modalidade'] != '')
        $modalidade_query = " AND d.modalidade IN (" . $modalidades . ")";
    if ($atts['tipo'] != '')
        $tipo_query = " AND d.tipo IN (" . $tipos . ")";
    if ($atts['cidade'] != '')
        $cidade_query = " AND c.id IN (" . $atts['cidade'] . ")";
    if ($atts['categoria'] != '')
        $categoria_query = " AND d.cat_id IN (" . $atts['categoria'] . ")";

    $atts['mes'] != '' ? $mes_query = ' AND d.dt_inicio LIKE "%' . $atts['mes'] . '"' : $mes_query = '';

    $atts['limite'] != '' ? $limite = ' LIMIT ' . $atts['limite'] : $limite = '';

    if ($atts['vencidos'] == 'n') {

        $query = "SELECT *, d.id AS id
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados d
        LEFT JOIN " . $wpdb->prefix . PLUGIN_PREFIX . "cidades c
        ON c.id = d.cidade_id
        WHERE aprovado = '1'"
            . $tipo_query . ""
            . $modalidade_query . ""
            . $cidade_query . ""
            . $mes_query . ""
            . $categoria_query . "
        ORDER BY c.cidade,d.tipo,d.cat_id,d.nome";

        $dados = $wpdb->get_results($query);

        //echo "<pre>".var_dump($dados)."</pre>";

        $dados_tmp_array = json_decode(json_encode($dados), true);

        //echo "<pre>".var_dump($dados_tmp_array)."</pre>";

        $dados_new = array();

        foreach ($dados_tmp_array as $dado) {
            $a = strptime($dado['dt_inicio'], '%d/%m/%Y');
            $timestamp = mktime(0, 0, 0, $a['tm_mon'] + 1, $a['tm_mday'], $a['tm_year'] + 1900);

            $new_dado = $dado;
            $new_dado['dt_inicio'] = $timestamp;
            $dados_new[] = $new_dado;
        }

        $timestamps = array();

        foreach ($dados_new as $i => $item) {
            $timestamps[$i] = $item['dt_inicio'];
        }

        array_multisort($timestamps, SORT_ASC, $dados_new);

        //echo "<pre>".var_dump($dados_new)."</pre>";

        foreach ($dados_new as $i => $dado)
            $dados_new[$i]['dt_inicio'] = date("d/m/Y", $dados_new[$i]['dt_inicio']);

        //echo "<pre>".var_dump($dados_new)."</pre>";

        $dia_atual = date("d");
        $mes_atual = date("m");
        $ano_atual = date("Y");

        $dados_filtrados = array();

        foreach ($dados_new as $dado) {

            $data_exp = explode('/', $dado['dt_inicio']);
            $dia = $data_exp[0];
            $mes = $data_exp[1];
            $ano = $data_exp[2];

            if (is_numeric($atts['limite'])) {
                if (count($dados_filtrados) < $atts['limite']) {
                    if ($ano >= $ano_atual)
                        if ($mes >= $mes_atual)
                            if ($dia >= $dia_atual) {
                                $dados_filtrados[] = $dado;
                            }
                }
            } else
                if ($ano >= $ano_atual)
                    if ($mes >= $mes_atual)
                        if ($dia >= $dia_atual) {
                            $dados_filtrados[] = $dado;
                        }
        }

        //echo "<pre>" . var_dump($dados_filtrados) . "</pre>";

        return json_encode($dados_filtrados);

        //return "a";

    } else {
        $query = "SELECT *, d.id AS id
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados d
        LEFT JOIN " . $wpdb->prefix . PLUGIN_PREFIX . "cidades c
        ON c.id = d.cidade_id
        WHERE aprovado = '1'"
            . $tipo_query . ""
            . $modalidade_query . ""
            . $cidade_query . ""
            . $mes_query . ""
            . $categoria_query . "
        ORDER BY c.cidade,d.tipo,d.cat_id,d.nome"
            . $limite;

        $dados = $wpdb->get_results($query);
        return json_encode($dados);
    }
}

add_shortcode(PLUGIN_PREFIX . 'cont_evt_mes', 'obter_cont_evt');
function obter_cont_evt($atts = null)
{
    global $wpdb;

    $atts = shortcode_atts(
        array(
            'mes' => '',
        ), $atts, PLUGIN_SLUG);

    switch ($atts['mes']) {
        case 'janeiro':
            $data_fil = '/01/';
            break;
        case 'fevereiro':
            $data_fil = '/02/';
            break;
        case 'marco':
            $data_fil = '/03/';
            break;
        case 'abril':
            $data_fil = '/04/';
            break;
        case 'maio':
            $data_fil = '/05/';
            break;
        case 'junho':
            $data_fil = '/06/';
            break;
        case 'julho':
            $data_fil = '/07/';
            break;
        case 'agosto':
            $data_fil = '/08/';
            break;
        case 'setembro':
            $data_fil = '/09/';
            break;
        case 'outubro':
            $data_fil = '/10/';
            break;
        case 'novembro':
            $data_fil = '/11/';
            break;
        case 'dezembro':
            $data_fil = '/12/';
            break;
    }

    $data_fil .= date("Y");

    $query = "SELECT *
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados
        WHERE aprovado = '1'
        AND dt_inicio LIKE '%" . $data_fil . "';
        ";

    $evts = $wpdb->get_results($query);

    return count($evts);
}

add_shortcode(PLUGIN_PREFIX . 'parceiro', 'obter_parceiro');
function obter_parceiro($atts = null)
{
    $atts = shortcode_atts(
        array(
            'id' => ''
        ), $atts, PLUGIN_SLUG);

    global $wpdb;

    $query = "SELECT *
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados d
        INNER JOIN " . $wpdb->prefix . PLUGIN_PREFIX . "cidades c
        WHERE c.id = d.cidade_id
        AND d.id = " . $atts['id'] . "";

    $parceiro = $wpdb->get_results($query);

    return json_encode($parceiro);
}

add_shortcode(PLUGIN_PREFIX . 'cidades', 'obter_cidades');
function obter_cidades()
{
    global $wpdb;

    $query = "SELECT *
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "cidades ORDER BY cidade";

    $cidades = $wpdb->get_results($query);
    $cont = 0;

    foreach ($cidades as $cidade) {
        $capa = obter_capa_cidade($cidade->id);
        $cidade_array = (array)$cidades[$cont];
        $cidade_array['capa'] = $capa->url;

        $query = "SELECT COUNT(*)
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados
        WHERE cidade = $cidade->id
        ";

        $cidade_array['qtd_itens'] = $wpdb->num_rows;
        $cidades[$cont++] = (object)$cidade_array;
    }

    return json_encode($cidades);
}

function obter_capa_cidade($id)
{
    global $wpdb;

    $query = "SELECT url_img1 AS url
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados
        WHERE cidade_id = " . $id . "
        AND tipo = 'atracao'
        ORDER BY rand()
        LIMIT 1";

    return $wpdb->get_results($query);
}

add_shortcode(PLUGIN_PREFIX . 'cidade', 'obter_cidade');
function obter_cidade($atts = null)
{
    global $wpdb;

    $atts = shortcode_atts(
        array(
            'cidade' => '',
        ), $atts, PLUGIN_SLUG);

    $query = "SELECT *
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "cidades
        WHERE id = " . $atts['cidade'] . "";

    $cidade = $wpdb->get_results($query);

    return json_encode($cidade[0]);
}

add_shortcode(PLUGIN_PREFIX . 'fotos', 'obter_fotos');
function obter_fotos()
{
    global $wpdb;

    $query = "SELECT *
        FROM " . $wpdb->prefix . PLUGIN_PREFIX . "fotos WHERE aprovado = '1' ORDER BY id";

    $fotos = $wpdb->get_results($query);

    return json_encode($fotos);
}