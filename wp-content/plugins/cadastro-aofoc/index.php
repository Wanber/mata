<?php
/*
Plugin Name: Parceiros
Plugin URI: http://wordpress.org
Description: Cadastro personalizado Destino Turístico Vale do Aço
Version: 1.0
Author: Wanber
Author URI: http://wordpress.org
License: GPLv2
*/

//( plugin_dir_path( __FILE__ ).'arquivo.php');//exemplo include
//echo plugins_url( ‘imagens/imagem.png’, __FILE__ );//exemplo de url com http://

define('WP_DEBUG', true);
define('PLUGIN_NAME', 'Empreendimento');
define('PLUGIN_SLUG', 'aofoc');
define('PLUGIN_PREFIX', PLUGIN_SLUG . '_');

if (is_admin()) {
    require('../wp-load.php');
    require(plugin_dir_path(__FILE__) . 'admin-ui.php');
    add_action('admin_menu', 'admin_menu');
    add_action('admin_head', 'admin_header');
    add_action('admin_init', 'registrar_configs');
} else {
    require('wp-load.php');
    require(plugin_dir_path(__FILE__) . 'final-ui.php');
    add_action('wp_head', 'wp_header');
}

function registrar_configs()
{
}

// Registamos a função para correr na ativação do plugin
register_activation_hook(__FILE__, 'setar_configs_padroes');
register_activation_hook(__FILE__, 'criar_tabelas');
register_deactivation_hook(__FILE__, 'deletar_tabelas');
add_action('init', 'iniciar_plugin');

function iniciar_plugin()
{
    wp_insert_term('CATEGORIAS ATRATIVOS', 'category', array(
        'slug' => 'cat_at',
        'parent' => 0 // must be the ID, not name
    ));
    wp_insert_term('CATEGORIAS INFORMAÇÕES ÚTEIS', 'category', array(
        'slug' => 'cat_iu',
        'parent' => 0 // must be the ID, not name
    ));
    wp_insert_term('CATEGORIAS ONDE COMER', 'category', array(
        'slug' => 'cat_oc',
        'parent' => 0 // must be the ID, not name
    ));
    wp_insert_term('CATEGORIAS ONDE FICAR', 'category', array(
        'slug' => 'cat_of',
        'parent' => 0 // must be the ID, not name
    ));
    wp_insert_term('CATEGORIAS LAZER', 'category', array(
        'slug' => 'cat_lz',
        'parent' => 0 // must be the ID, not name
    ));
    wp_insert_term('CATEGORIAS EVENTOS', 'category', array(
    'slug' => 'cat_ev',
    'parent' => 0 // must be the ID, not name
));
}

function setar_configs_padroes()
{
    //update_option(PLUGIN_PREFIX.'ativar_confirmacao', '1');
}

function criar_tabelas()
{
    global $wpdb;
    $tablename = $wpdb->prefix . PLUGIN_PREFIX . 'dados';
    $tablename2 = $wpdb->prefix . PLUGIN_PREFIX . 'cidades';
    $tablename3 = $wpdb->prefix . PLUGIN_PREFIX . 'fotos';

    if ($wpdb->get_var("SHOW TABLES LIKE '$tablename'") != $tablename) {

        $sql = "CREATE TABLE `$tablename` (
            `id` INT( 11 ) NOT NULL AUTO_INCREMENT KEY,
            `modalidade` VARCHAR( 100 ) NOT NULL,
            `cat_id` INT( 11 ) NULL DEFAULT '0',
            `nome` VARCHAR( 100 ) NOT NULL,
            `url_icone` VARCHAR( 100 ) NULL,
            `url_img1` VARCHAR( 100 ) NOT NULL,
            `url_img2` VARCHAR( 100 ) NULL,
            `url_img3` VARCHAR( 100 ) NULL,
            `url_img4` VARCHAR( 100 ) NULL,
            `descricao` VARCHAR( 800 ) NOT NULL,
            `endereco` VARCHAR( 100 ) NOT NULL,
            `cidade_id` int( 11 ) NULL DEFAULT '0',
            `resp_contato` VARCHAR( 100 ) NULL,
            `telefone` VARCHAR( 20 ) NULL,
            `whatsapp` VARCHAR( 20 ) NULL,
            `email` VARCHAR( 100 ) NULL,
            `facebook` VARCHAR( 100 ) NULL,
            `tipo` VARCHAR ( 50 ) NULL,
            `site` VARCHAR( 100 ) NULL,
            `dt_inicio` VARCHAR( 100 ) NULL,
            `dt_fim` VARCHAR( 100 ) NULL,
            `hr_inicio` VARCHAR( 100 ) NULL,
            `hr_fim` VARCHAR( 100 ) NULL,
            `valor_entrada` VARCHAR( 100 ) NULL,
            `aprovado` BOOLEAN NOT NULL);";

        $wpdb->query($sql) or die("Não foi possível criar a tabela '$tablename'");
    }

    if ($wpdb->get_var("SHOW TABLES LIKE '$tablename2'") != $tablename2) {

        $sql2 = "CREATE TABLE `$tablename2` (
            `id` INT( 11 ) NOT NULL AUTO_INCREMENT KEY,
            `cidade` VARCHAR(25) NOT NULL);";

        $wpdb->query($sql2) or die("Não foi possível criar a tabela '$tablename2'");
    }

    if ($wpdb->get_var("SHOW TABLES LIKE '$tablename3'") != $tablename3) {

        $sql3 = "CREATE TABLE `$tablename3` (
            `id` INT( 11 ) NOT NULL AUTO_INCREMENT KEY,
            `nome` VARCHAR(25) NOT NULL,
            `local` VARCHAR(60) NOT NULL,
            `cidade_id` int( 11 ) NULL DEFAULT '0',
            `url_foto` VARCHAR( 100 ) NULL,
            `aprovado` BOOLEAN NOT NULL);";

        $wpdb->query($sql3) or die("Não foi possível criar a tabela '$tablename3'");
    }
}

function deletar_tabelas()
{
    global $wpdb;
    $tablename = $wpdb->prefix . PLUGIN_PREFIX . 'dados';
    $tablename2 = $wpdb->prefix . PLUGIN_PREFIX . 'cidades';
    $tablename3 = $wpdb->prefix . PLUGIN_PREFIX . 'fotos';

    //$sql = "DROP TABLE `" . $tablename . "`, `" . $tablename2 . "`, `" . $tablename3 . "`";
    //$wpdb->query($sql);
}

function wp_header()
{
    echo "
        
    ";
}

function admin_header()
{
    echo "
        <link rel='stylesheet' href='" . plugins_url('/estilo.css', __FILE__) . "' type='text/css' media='all' />
    ";
}

function add_registro($dados)
{
    //echo '<code>VAR DUMP $dados RECEBIDO em add_registro(): '.var_dump($dados).'</code><br><br>';//-------------------------------------------
    global $wpdb;
    //$wpdb->show_errors();
    $dados['tipo'] == '' ? $tipo = '' : $tipo = " AND tipo = '".$dados['tipo']."'";
    $dados['cat_id'] == '' ? $cat = '' : $cat = " AND cat_id = '".$dados['cat_id']."'";

    $query = "SELECT id FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados WHERE nome = '" . $dados['nome'] . "' ".$tipo.$cat." AND cidade_id = '" . $dados['cidade_id'] . "'";
    //echo '<code>QUERY: '.$query.'</code><br><br>';//-------------------------------------------
    $id = $wpdb->get_var($query);
    //echo '<code>CHECK ID: '.var_dump($id).'</code><br><br>';//-------------------------------------------
    if (!$id) {
        //echo '<code>!ID -> insert</code><br><br>';//-------------------------------------------
        if ($wpdb->insert($wpdb->prefix . PLUGIN_PREFIX . "dados", $dados)) {
            //echo '<code>WPDB PRINT_ERROR: '.var_dump($wpdb->print_error()).'</code><br><br>';//-------------------------------------------
            //echo '<code>WPDB LAST_QUERY: '.var_dump($wpdb->last_query).'</code><br><br>';//-------------------------------------------
            return '1';
        }
        else {
            //echo '<code>WPDB PRINT_ERROR: '.var_dump($wpdb->print_error()).'</code><br><br>';//-------------------------------------------
            //echo '<code>WPDB LAST_QUERY: '.var_dump($wpdb->last_query).'</code><br><br>';//-------------------------------------------
            return '0';
        }
    } else {
        //echo '<code>ID -> not insert</code><br><br>';//-------------------------------------------
        return '2';
    }
}

function add_registro_evento($dados)
{
    global $wpdb;
    $id = $wpdb->get_var("SELECT id FROM " . $wpdb->prefix . PLUGIN_PREFIX . "dados WHERE nome = '" . $dados['nome'] . "' AND dt_inicio = '" . $dados['dt_inicio'] . "' AND dt_fim = '" . $dados['dt_fim'] . "' AND cidade_id = '" . $dados['cidade_id'] . "'");

    if (!$id) {
        if ($wpdb->insert($wpdb->prefix . PLUGIN_PREFIX . "dados", $dados)) return true; else return false;
    } else return false;
}

function add_registro_foto($dados)
{
    global $wpdb;
    if($wpdb->insert($wpdb->prefix . PLUGIN_PREFIX . "fotos", $dados)) return true; else return false;
}

function remover_registro($id)
{
    global $wpdb;
    if ($wpdb->delete($wpdb->prefix . PLUGIN_PREFIX . "dados", array('id' => $id))) return true; else return false;
}

function remover_registro_fotos($id)
{
    global $wpdb;
    if ($wpdb->delete($wpdb->prefix . PLUGIN_PREFIX . "fotos", array('id' => $id))) return true; else return false;
}

function atualizar_registro($id, $dados)
{
    global $wpdb;
    if ($wpdb->update($wpdb->prefix . PLUGIN_PREFIX . 'dados', $dados, array('id' => $id))) return true; else return false;
}

function add_cidade($dados)
{
    global $wpdb;
    if ($wpdb->insert($wpdb->prefix . PLUGIN_PREFIX . "cidades", $dados)) return true; else return false;
}

function remover_cidade($id)
{
    global $wpdb;
    if ($wpdb->delete($wpdb->prefix . PLUGIN_PREFIX . "cidades", array('id' => $id))) return true; else return false;
}

?>