<?php get_header('single'); ?>

<article <?php post_class( 'article hentry' ); ?> id="post-<?php the_ID(); ?>" itemscope itemtype="http://schema.org/Article">

<?php
$post_id = $post->ID;
$categoria = get_the_category();
if(empty($tags = get_the_tag_list(null, ", "))) $tags = "sem tags";
has_post_thumbnail($post_id) ? $thumb = get_the_post_thumbnail_url($post_id) : $thumb = get_template_directory_uri()."/img/post-default.png";
?>


<div class="single-container row">
    <div class="col-md-10 col-md-offset-1">
        <div class="row">
            <div class="coluna-esquerda col-md-8">
                <div class="post">
                    <div class="data"><p>terça-feira, 24 de maio de 2016</p></div>
                    <div class="titulo"><h3><?php echo $post->post_title; ?></h3></div>
                    <div class="<?php if($categoria[0]->name == 'depoimentos') echo 'foto'; else echo 'thumb' ?>"><img src="<?php echo $thumb ?>"></div>
                    <?php echo do_shortcode( '[wpusb]' ); ?>
                    <div class="conteudo"><?php echo $post->post_content; ?></div>
                    <div class="categoria">Categorias: <?php echo get_the_category_list(); ?></div>
                    <div class="tags">Tags: <?php echo $tags ?></div>
                    <?php comments_template(); ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="coluna-direita">
                    <!--
                    <div class="autor">
                        <div class="titulo">sobre o autor</div>
                        <div class="imagem"><?php echo get_avatar($post->post_author, 200) ?></div>
                        <div class="sobre">
                            <div class="nome"><h3><?php echo get_the_author_meta('display_name', $post->post_author) ?></h3></div>
                            <div class="txt"><?php echo get_the_author_meta('description', $post->post_author) ?></div>
                            <div class="email"><?php echo get_the_author_meta('user_email', $post->post_author) ?></div>
                        </div>
                    </div>
                    -->
                    <div class="ultimos-posts">
                        <div class="titulo">ultimos posts</div>
                        <?php
                        $posts_recentes = new WP_Query( array('category_name' => 'blog', 'showposts' => 4, 'post__not_in' => array($post_id)) );
                        while ($posts_recentes->have_posts()) : $posts_recentes->the_post();
                            if(get_the_ID() != $post_id)
                                echo '
                                    <div class="item-noticia">
                                        <div class="data">'.get_the_date('d').'<br />'.ucfirst(get_the_date('M')).'<br />'.get_the_date('Y').'<br /></div>
                                        <div class="resumo">
                                            <h3>'.wp_trim_words(get_the_title(), 6).'</h3>
                                            <p class="resumo_txt">'.wp_trim_words(get_the_excerpt(), 16, ' […]').'</p>
                                            <p class="mais"><a href="'.get_the_permalink().'">LER MAIS</a></p>
                                        </div>
                                    </div>
                                ';
                        endwhile;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<?php get_footer(); ?>