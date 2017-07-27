<?php
/** 
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'bd_cma');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');


define('WP_ALLOW_REPAIR', true);

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'e>KDtbGG@WSR@XkJXDC!5Nb]>Y?d^NE9W7!+r0KuUX6}.7v/K}iRf27~R?YPJZ3Z');
define('SECURE_AUTH_KEY',  'k|IX6h<%qhHpj<g+56D=)=.bvZX:_[N*mli(828N1ilV?{,([;Fa|jOVXX2Qs{|F');
define('LOGGED_IN_KEY',    '-eaqJ7o,o#gF#&106qQ7NliNVo<CIPsmH{IBKZI;+z=nP<GMR?VfPb/(5jVNo+gJ');
define('NONCE_KEY',        ']N9F1~}q.)t^($=}Ak4>mwTa#Aq]w4A?E(G=XJ@{T%VUEEE{$[,i3YAGWD5?km]}');
define('AUTH_SALT',        '{BM(*ur.tJz$n[ nW&)]2VAOpAGRu>Lo`BRbr7+cvv[*;k)JT)xN5qme-~lYe3<8');
define('SECURE_AUTH_SALT', '@1cw7e|T$ jR(5{HlN{*g9NBiG/m0Ytx[bUW-ly!@LXq)&Ea~}y5~G/*rS:ePcH0');
define('LOGGED_IN_SALT',   'I^yz!r:I5Qb 0=Vs11WubJM{ihrNrk*|Wosa*5u5=w2BCwEwP[:sKbWpK9Tci98T');
define('NONCE_SALT',       'T?c/e+m5%xLI_5/.0qV]L7cp2KR`q5.3{NA%rb9 R_E1h`HSS/7u?@gf8A5wkl%#');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';


/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');
