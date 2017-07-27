<?php get_header();
/* Template Name: Pagina Sobre */
?>


    <div class="corpo col-md-12">
        <div class="content row">

            <?php include 'sidebar-toppage.php'; ?>


            <div class="col-md-12 post-content" style="padding-left: 40px">

                <h1 style="margin: 5px 0 15px 0">Histórico do projeto</h1>

                <?php query_posts('showposts=1&category_name=historio-do-projeto');
                while (have_posts()) : the_post();
                    echo the_content();
                endwhile;
                ?>

            </div>
        </div>

    </div>


<?php get_footer(); ?>