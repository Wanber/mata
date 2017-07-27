<?php get_header();
/* Template Name: Pagina Agenda */
?>


    <div class="corpo col-md-12">
        <div class="content row">

            <?php include 'sidebar-toppage.php'; ?>

            <?php
            $data_fil = '';
            switch ($_REQUEST['mes']) {
                case 'janeiro':
                    $nm_mes = 'Janeiro';
                    $data_fil = '/01/';
                    break;
                case 'fevereiro':
                    $nm_mes = 'Fevereiro';
                    $data_fil = '/02/';
                    break;
                case 'marco':
                    $nm_mes = 'Março';
                    $data_fil = '/03/';
                    break;
                case 'abril':
                    $nm_mes = 'Abril';
                    $data_fil = '/04/';
                    break;
                case 'maio':
                    $nm_mes = 'Maio';
                    $data_fil = '/05/';
                    break;
                case 'junho':
                    $nm_mes = 'Junho';
                    $data_fil = '/06/';
                    break;
                case 'julho':
                    $nm_mes = 'Julho';
                    $data_fil = '/07/';
                    break;
                case 'agosto':
                    $nm_mes = 'Agosto';
                    $data_fil = '/08/';
                    break;
                case 'setembro':
                    $nm_mes = 'Setembro';
                    $data_fil = '/09/';
                    break;
                case 'outubro':
                    $nm_mes = 'Outubro';
                    $data_fil = '/10/';
                    break;
                case 'novembro':
                    $nm_mes = 'Novembro';
                    $data_fil = '/11/';
                    break;
                case 'dezembro':
                    $nm_mes = 'Dezembro';
                    $data_fil = '/12/';
                    break;
                default:
                    switch (date("m")) {
                        case "01":
                            $mes = Janeiro;
                            break;
                        case "02":
                            $mes = Fevereiro;
                            break;
                        case "03":
                            $mes = Março;
                            break;
                        case "04":
                            $mes = Abril;
                            break;
                        case "05":
                            $mes = Maio;
                            break;
                        case "06":
                            $mes = Junho;
                            break;
                        case "07":
                            $mes = Julho;
                            break;
                        case "08":
                            $mes = Agosto;
                            break;
                        case "09":
                            $mes = Setembro;
                            break;
                        case "10":
                            $mes = Outubro;
                            break;
                        case "11":
                            $mes = Novembro;
                            break;
                        case "12":
                            $mes = Dezembro;
                            break;
                    }

                    $nm_mes = $mes;
                    $data_fil = '/' . date("m") . '/';
                    break;
            }

            $data_fil .= date("Y");
            ?>

            <div class="col-md-3" style="padding-left: 45px">
                <div class="page-header" style="margin-left: -25px">
                    <h1>MÊS </h1>
                </div>

                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=janeiro" <?php if (@$nm_mes == 'Janeiro') echo ' style="color: black;"'; ?>>Janeiro
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=janeiro]'); ?>)</a>
                </h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=fevereiro" <?php if (@$nm_mes == 'Fevereiro') echo ' style="color: black;"'; ?>>Fevereiro
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=fevereiro]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=marco" <?php if (@$nm_mes == 'Março') echo ' style="color: black;"'; ?>>Março
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=marco]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=abril" <?php if (@$nm_mes == 'Abril') echo ' style="color: black;"'; ?>>Abril
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=abril]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=maio" <?php if (@$nm_mes == 'Maio') echo ' style="color: black;"'; ?>>Maio
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=maio]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=junho" <?php if (@$nm_mes == 'Junho') echo ' style="color: black;"'; ?>>Junho
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=junho]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=julho" <?php if (@$nm_mes == 'Julho') echo ' style="color: black;"'; ?>>Julho
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=julho]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=agosto" <?php if (@$nm_mes == 'Agosto') echo ' style="color: black;"'; ?>>Agosto
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=agosto]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=setembro" <?php if (@$nm_mes == 'Setembro') echo ' style="color: black;"'; ?>>Setembro
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=setembro]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=outubro" <?php if (@$nm_mes == 'Outubro') echo ' style="color: black;"'; ?>>Outubro
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=outubro]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=novembro" <?php if (@$nm_mes == 'Novembro') echo ' style="color: black;"'; ?>>Novembro
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=novembro]'); ?>)</a></h3>
                <h3>
                    <a href="<?php echo get_site_url() ?>/agenda/?mes=dezembro" <?php if (@$nm_mes == 'Dezembro') echo ' style="color: black;"'; ?>>Dezembro
                        (<?php echo do_shortcode('[aofoc_cont_evt_mes mes=dezembro]'); ?>)</a></h3>

            </div>

            <div class="col-md-9 agenda">
                <div class="page-header">
                    <h1>AGENDA </h1>
                </div>


                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading text-center"><?php echo $nm_mes . ', ' . date("Y") ?></div>

                        <!-- Table -->
                        <table class="table table-striped">

                            <?php

                            $eventos = json_decode(do_shortcode('[aofoc modalidade=evento mes=' . $data_fil . ']'));
                            $eventos_array = json_decode(json_encode($eventos), true);

                            $eventos_array_new = array();

                            foreach ($eventos_array as $evento) {
                                $a = strptime($evento['dt_inicio'], '%d/%m/%Y');
                                $timestamp = mktime(0, 0, 0, $a['tm_mon']+1, $a['tm_mday'], $a['tm_year']+1900);

                                $new_evento = $evento;
                                $new_evento['dt_inicio'] = $timestamp;
                                $eventos_array_new[] = $new_evento;
                            }

                            $timestamps = array();

                            foreach ($eventos_array_new as $i => $item) {
                                $timestamps[$i] = $item['dt_inicio'];
                            }

                            array_multisort($timestamps, SORT_ASC, $eventos_array_new);


                            if (empty($eventos_array_new))
                                echo '<br />&nbsp;&nbsp;Nenhum evento neste mês.<br /><br />';


                            foreach ($eventos_array_new as $evento) {

                                $evento['dt_inicio'] = date("d/m/Y", $evento['dt_inicio']);

                                if ($evento['url_icone'] != '')
                                    $icone = $evento['url_icone'];
                                else
                                    $icone = $evento['url_img1'];

                                if ($evento['dt_inicio'] == $evento['dt_fim'])
                                    $data = $evento['dt_inicio'];
                                else
                                    $data = $evento['dt_inicio'] . ' - ' . $evento['dt_fim'];

                                if ($evento['hr_inicio'] == $evento['hr_fim'])
                                    $hora = $evento['hr_inicio'];
                                else
                                    $hora = $evento['hr_inicio'] . ' - ' . $evento['hr_fim'];

                                echo '
                                        <tr>
                                            <td style="height: 155px">
                                                <a href="' . get_site_url() . '/parceiro/?id=' . $evento['id'] . '" style="color: #000; width: 100%; height: 100%">
                                                    <img src="' . $icone . '?w=200"
                                                         style="width: 200px; height: 100%; float: left; margin-right: 20px">
                                                    <h3>' . stripslashes($evento['nome']) . '</h3>
                                                    <p style="color: #393939; font-size: 1.4rem">
                                                        Dia: ' . $data . '<br />
                                                        Hora: ' . $hora . '<br />
                                                        Entrada: ' . $evento['valor_entrada'] . '
                                                    </p>
                                                    <div style="width: 100%; text-align:right; font-size: 1.3rem; color: #4a4a4a">mais detalhes</div>
                                                </a>
                                            </td>
                                        </tr>
                                    ';
                            }
                            ?>

                        </table>
                    </div>

                </div>

            </div>
        </div>
    </div>


<?php get_footer(); ?>