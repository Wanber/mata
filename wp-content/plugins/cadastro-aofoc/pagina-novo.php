<?php
function pagina_novo()
{ ?>
    <script type='text/javascript' src='https://code.jquery.com/jquery-3.1.0.slim.min.js'></script>
    <script type='text/javascript' src='<?php echo plugins_url() ?>/cadastro-aofoc/js/jquery.maskedinput.min.js'></script>
    <script type='text/javascript' src='<?php echo plugins_url() ?>/cadastro-aofoc/js/jquery.maskMoney.js'></script>

    <script language="javascript">
        $(document).ready(function(){
            $('.data').mask('99/99/9999');
            $('.hora').mask('99:99');
            $('.rs').maskMoney({
                symbol:'R$ ', showSymbol:true, thousands:'.', decimal:',', symbolStay: true
            });

            $('.telefone').focusout(function(){
                var phone, element;
                element = $(this);
                element.unmask();
                phone = element.val().replace(/\D/g, '');
                if(phone.length > 10) {
                    element.mask("(99) 99999-999?9");
                } else {
                    element.mask("(99) 9999-9999?9");
                }
            }).trigger('focusout');
        });
    </script>

    <?php if (isset($_GET['editar']) && is_numeric($_GET['editar'])) {

    include "pagina-novo-editar.php";

} else {

    include "pagina-novo-novo.php";

} ?>

<?php }