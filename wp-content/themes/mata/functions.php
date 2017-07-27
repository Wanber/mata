<?php
//desativa a edição do tema
define('DISALLOW_FILE_EDIT', true);
//remove a barra de admin
add_filter('show_admin_bar', '__return_false');
//remove a tag do generator
remove_action('wp_head', 'wp_generator');
//habilita ediçao de menus
add_theme_support('menus');
//habilita thumb em posts
add_theme_support('post-thumbnails');
//bug do enter ao editar post
add_filter( 'tiny_mce_before_init', 'my_switch_tinymce_p_br' );

function my_switch_tinymce_p_br( $settings ) {
    $settings['forced_root_block'] = false;
    return $settings;
}

require_once ABSPATH . 'wp-admin/includes/media.php';
require_once ABSPATH . 'wp-admin/includes/file.php';
require_once ABSPATH . 'wp-admin/includes/image.php';

//retornar somente texto no excerpt
//add_filter( 'the_excerpt', function($content) { return strip_tags( strip_shortcodes( $content ) ); } );

//limitar excerpt
//add_filter( 'excerpt_length', function( ) {
//    return 100;
//} );

//registrar espaço para widgets
/*
function registrar_espacos_widgets () {

    register_sidebar( array(
        'name' => 'nome do espaço',
        'id' => 'slug_widget',
        'before_widget' => '<div>',
        'after_widget' => '</div>',
        'before_title' => '<h2>',
        'after_title' => '</h2>',
    ) );
}
add_action( 'widgets_init', 'registrar_espacos_widgets' );
*/

//ativar single.php para categorias
add_filter('single_template', 'checar_single_categoria');

function checar_single_categoria( $t ) {
    foreach( (array) get_the_category() as $cat ) {
        if ( file_exists(TEMPLATEPATH . "/single-{$cat->slug}.php") )
            return TEMPLATEPATH . "/single-{$cat->slug}.php";

        if($cat->parent) {
            $cat = get_the_category_by_ID( $cat->parent );

            if ( file_exists(TEMPLATEPATH . "/single-{$cat->slug}.php") )
                return TEMPLATEPATH . "/single-{$cat->slug}.php";
        }
    }
    return $t;
}

//Segurança
remove_action( 'wp_head', 'wlwmanifest_link');
remove_action( 'wp_head', 'rsd_link');
remove_action( 'wp_head', 'wp_shortlink_wp_head', 10, 0);

//funçoes uteis
function pegaMeioStr($inicio, $fim, $str) {
    @$ex = explode($inicio, $str);
    @$ex2 = explode($fim, $ex[1]);
    return $ex2[0];
}
function get_attachment_url_by_slug( $slug ) {
    $args = array(
        'post_type' => 'attachment',
        'name' => sanitize_title($slug),
        'posts_per_page' => 1,
        'post_status' => 'inherit',
    );
    $_header = get_posts( $args );
    $header = $_header ? array_pop($_header) : null;
    return $header ? wp_get_attachment_url($header->ID) : '';
}

function add_newsletter($email) {

    global $wpdb;

    if(is_email($email)) {
        $query = "INSERT INTO " . $wpdb->prefix . "newsletter (email, status) VALUES ('" . $email . "', 'C')";
        $wpdb->get_results($query);
        if(strstr(strtolower($wpdb->last_error), 'duplicate'))
            return '-1';
        else if($wpdb->last_error == '')
            return '1';
        else
            return '0';
    } else
        return '0';
}
/* TRIBULANT
function add_newsletter($email) {
    global $wpdb;

    if(is_email($email)) {
        $query = "INSERT INTO " . $wpdb->prefix . "wpmlsubscribers (email) VALUES ('" . $email . "')";
        $wpdb->get_results($query);
        if(strstr(strtolower($wpdb->last_error), 'duplicate'))
            return -1;
        else if($wpdb->last_error == '')
            return '1';
        else
            return '0';
    } else
        return 0;
}
*/
function contato($nome, $email, $assunto, $mensagem) {
    $headers = 'From: '.$nome.' <'.$email.'>' . "\r\n";
    wp_mail(get_bloginfo("admin_email"), $assunto, $mensagem, $headers);
    return true;
}

//adiciona o css/js do tema ao header
function theme_style() {
    //jquery
    wp_enqueue_script( 'jquery');
    //style.css
    wp_enqueue_style( 'theme-style', get_stylesheet_uri(),false,null,'all');
    //rolar suavemente links
    //add_action( 'wp_footer', 'add_script_scroll' );
    //subir pagina ao carregar
    //add_action( 'wp_footer', 'subir_pagina' );
}
add_action( 'wp_enqueue_scripts', 'theme_style' );

//adiciona o favicon
add_action('wp_head', 'theme_favicon');
function theme_favicon() {
    echo '<link rel="shortcut icon" type="image/x-icon" href="'.get_stylesheet_directory_uri().'/favicon.ico" />';
}

//texto do rodape admin
add_filter('admin_footer_text', 'theme_admin_footer');
function theme_admin_footer() {
    $my_theme = wp_get_theme();
    echo 'Duvidas entre em contato: '.$my_theme->get( 'Author' ).' - Unileste/SebraeTec <a href="mailto:wanber@outlook.com">wanber@outlook.com</a>';
}

//trocar cor do navbar
function add_troca_cor_nav() { ?>
    <script>
        jQuery(document).ready(function($) {
            $(window).scroll(function(event){
                if ($(window).scrollTop() < 80){//80px de navbar
                    $(".navbar").removeClass("scroll");
                } else {
                    $(".navbar").addClass("scroll");
                }
            });
        });
    </script>
    <?php
}
function nav_transparente($classe_nav) {
    add_action( 'wp_footer', 'add_troca_cor_nav' );
}

//script para subir a tela ao carregar a pagina
function subir_pagina() {
    echo '
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".navbar-brand").trigger("click");
            });
        </script>
    ';
}

//script para rolar suavemente links para ID's
function add_script_scroll() {
    echo '
        <!--rolar suavemente -->
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $("a").click(function(event){
                    var url = event.target.baseURI;
                    if(url.indexOf("#") > -1) {
                        //event.preventDefault();
                        $(\'html,body\').animate({scrollTop: $(this.hash).offset().top - 70}, 800);//ajustar aqui
                    }
               });
            });
        </script>
    ';
}

//bootstrap
function add_modal_bootstrap() { ?>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Título</h4>
                    </div>
                    <div class="modal-body" id="myModalText">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <button type="button" class="btn btn-primary btn-lg hidden" id="btn-modal" data-toggle="modal" data-target="#myModal"></button>
<?php
}
function bootstrap($tema = null) {
    wp_enqueue_style( 'bootstrap', get_template_directory_uri().'/bootstrap/css/bootstrap.min.css' ,false,null,'all');
    wp_enqueue_script( 'bootstrap-js', get_template_directory_uri().'/bootstrap/js/bootstrap.min.js', array(),null,true );

    if($tema != null)
        wp_enqueue_style( 'bootstrap-theme', get_template_directory_uri().'/bootstrap/css/'.$tema.'.css' ,false,null,'all');

    add_action( 'wp_footer', 'add_modal_bootstrap' );
}

//incluir fancybox
function fancybox() {
    wp_enqueue_style( 'fancybox', get_template_directory_uri().'/fancybox/source/jquery.fancybox.css',false,null,'all');
    wp_enqueue_script( 'fancybox-js', get_template_directory_uri().'/fancybox/source/jquery.fancybox.pack.js', array(),null,true );
    echo '
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".fancybox").fancybox();
            });
        </script>
    ';
}

//adicionar animate.css + wow
function add_wow() {
    echo '
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                var wow = new WOW({
                    boxClass:     \'wow\',      // animated element css class (default is wow)
                    animateClass: \'animated\', // animation css class (default is animated)
                    offset:       0,          // distance to the element when triggering the animation (default is 0)
                    mobile:       true,       // trigger animations on mobile devices (default is true)
                    live:         true,       // act on asynchronously loaded content (default is true)
                    callback:     function(box) {
                      // the callback is fired every time an animation is started
                      // the argument that is passed in is the DOM node being animated
                    },
                    scrollContainer: null // optional scroll container selector, otherwise use window
                });
                wow.init();
            });
        </script>
    ';
}
function wow() {
    wp_enqueue_script( 'wow', get_template_directory_uri().'/animate.css + wow/wow.min.js', array(),null,true );
    wp_enqueue_style( 'animate.css', get_template_directory_uri().'/animate.css + wow/animate.css',false,null,'all');
    add_action( 'wp_footer', 'add_wow' );
}

//executar bxslider
/*
function bxslider($id) {
    wp_enqueue_style( 'bxslider', get_template_directory_uri().'/bxslider/jquery.bxslider.css',false,null,'all');
    wp_enqueue_script( 'bxslider-js', get_template_directory_uri().'/bxslider/jquery.bxslider.min.js', array(),null,true );

    global $wpdb;
    $query = "SELECT * FROM ".$wpdb->prefix."huge_itslider_sliders WHERE id = '$id'";
    $slider = $wpdb->get_results($query)[0];

    if($slider->slider_list_effects_s == "fade")
        $efeito = $slider->slider_list_effects_s;
    else if(strstr($slider->slider_list_effects_s, "cubeV"))
        $efeito = "vertical";
    else
        $efeito = "horizontal";

    if($slider->show_thumb == "nonav")
        $navegador = "false";
    else
        $navegador = "true";

    $tempo_troca = $slider->param;
    $tempo_pausa = $slider->description;

    $query = "SELECT name,image_url,description FROM ".$wpdb->prefix."huge_itslider_images WHERE slider_id = '$id' ORDER BY ordering";
    $imgs = $wpdb->get_results($query);

    if($slider->random_images == "on" && $wpdb->num_rows > 1)
        $autoload = "true";
    else
        $autoload = "false";

    if($slider->random_images == "on")
        $random = "true";
    else
        $random = "false";

    if($slider->pause_on_hover == "on")
        $hover_stop = "true";
    else
        $hover_stop = "false";

    if($slider->sl_loading_icon == "on")
        $preload = "true";
    else
        $preload = "false";

    echo '
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".bxslider").bxSlider({
              mode: "'.$efeito.'",
              auto: '.$autoload.',
              pause: '.$tempo_pausa.',
              controls: '.$navegador.',
              speed: '.$tempo_troca.',
              randomStart: '.$random.',
              autoHover: '.$hover_stop.',
              preloadImages: '.$preload.',
              pager: false,
              autoControls: false,
              captions: true
            });
        });
    </script>
    ';

    echo '<ul class="bxslider">';

    foreach ($imgs as $img) {
        if($img->description != "") {$descricao = 'title="'.$img->description.'"';} else {$descricao = "";}
        echo '<li><img style="width: 100%; height: 100vh;" src="'.$img->image_url.'" '.$descricao.' /></li>';
    }

    echo '</ul>';
}
*/

//obter imagens de um slider
function obter_imagens_slider($slider_id, $rand = false, $qtd = 0) {
    global $wpdb;

    $query = "SELECT name,image_url,description,sl_url
    FROM ".$wpdb->prefix."huge_itslider_images
    WHERE slider_id = '$slider_id'
    ";

    if($rand)
        $query .= ' ORDER BY rand()';
    else
        $query .= ' ORDER BY ordering';

    if($qtd > 0)
        $query .= ' LIMIT '.$qtd;

    return $wpdb->get_results($query);
}

//jCider
function jCider_img($classe, $id, $opcoes, $anim = false) {
    wp_enqueue_style('jcider', get_template_directory_uri() . '/jcider/jcider.css', false, null, 'all');
    wp_enqueue_script('jcider-js', get_template_directory_uri() . '/jcider/jcider.min.js', array(), null, true);
    echo "
        <script type=\"text/javascript\">
            jQuery(document).ready(function($) {
                $('#".$id."').jcider({
                    ".$opcoes."
                });
            });
        </script>
    ";

    echo '
        <div class="'.$classe.'" id="'.$id.'">
            <ul class="list-unstyled">
    ';
                foreach (obter_imagens_slider(2) as $cliente) {
                    if($anim)
                        $classe_anim = "wow zoonIn";
                    else
                        $classe_anim = "";

                    echo '<li class="'.$classe_anim.'"><img src="' . $cliente->image_url . '" ><p>' . $cliente->name . '</p></li>';
                }

    echo '          
            </ul>
        </div>
    ';
}

//incluir fontes
function fonte($fonte) {
    if($fonte == "roboto") {
        wp_enqueue_style( "fonte-".$fonte,'https://fonts.googleapis.com/css?family=Roboto:100,300,500,700',false,null,'all');
    } else if($fonte == "lato") {
        wp_enqueue_style( "fonte-".$fonte,'https://fonts.googleapis.com/css?family=Lato:100,300,500,700',false,null,'all');
    }
}