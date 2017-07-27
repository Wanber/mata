<?php get_header();
/* Template Name: Pagina de Cadastro */
?>

<?php

if (@$_REQUEST['submit'] == 'contato') {
    $registro['nome'] = htmlspecialchars(addslashes($_REQUEST['nome']));
    $registro['email'] = htmlspecialchars(addslashes($_REQUEST['email']));
    $registro['mensagem'] = htmlspecialchars(addslashes($_REQUEST['mensagem']));

    contato($registro['nome'],$registro['email'],'Mensagem enviada pelo formulário de contato',$registro['mensagem']) ? $enviou = true : $enviou = false;
}

?>

    <div class="corpo col-md-12">
        <div class="content row">

            <?php include 'sidebar-toppage.php'; ?>

            <div class="col-md-3" style="color: rgba(0,0,0,0.7); padding: 0 35px 0 35px">

                <div class="page-header">
                    <h1>AVISO</h1>
                </div>
                <p style="font-weight: 100"><?php echo get_setting('texto__contato') ?></p>
            </div>

            <div class="col-md-9 post-content">

                <?php
                if (@$enviou)
                    echo '
                        <div class="alert alert-success alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            Mensagem enviada, obrigado pelo contato.
                        </div>
                    ';

                if (isset($enviou) && !$enviou)
                    echo '
                        <div class="alert alert-warning alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            Não foi possível enviar sua mensagem, verifique todos os campos.
                        </div>
                    ';
                ?>

                <style>
                    input {
                        height: 50px !important;
                        font-weight: 300;
                    }

                    label {
                        font-weight: 500;
                        color: #000;
                    }

                    textarea {
                        font-weight: 300;
                    }
                </style>

                <div class="page-header">
                    <h1>CONTATO</h1>
                </div>

                <form action="<?php echo get_site_url() ?>/contato" method="post">

                    <div class="form-group">
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" class="form-control" id="nome" required
                               placeholder="Informe seu nome" value="<?php echo @$registro['nome'] ?>">
                    </div>

                    <div class="form-group">
                        <label for="nome">Email</label>
                        <input type="email" name="email" class="form-control" id="email" required
                               placeholder="Informe seu email" value="<?php echo @$registro['email'] ?>">
                    </div>

                    <div class="form-group">
                        <label for="mensagem">Mensagem</label>
                            <textarea name="mensagem" class="form-control" id="mensagem" rows="5"
                                      placeholder="Descreva em até 800 caracteres sua mensagem"
                                      required><?php echo @$registro['mensagem'] ?></textarea>
                    </div>

                    <div class="form-group" style="text-align: right; padding-right: 0; margin-right: 0">
                        <button type="submit" name="submit" value="contato" class="btn btn-fotos"
                                style="padding: 10px 20px 10px 20px;">ENVIAR MENSAGEM
                        </button>
                    </div>
                </form>

            </div>

        </div>
    </div>


<?php get_footer(); ?>