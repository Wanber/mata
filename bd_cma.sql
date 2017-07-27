# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Thursday 27. July 2017 16:38 UTC
# Nome do Servidor: localhost
# Banco de Dados: `turismov_site`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `wp_aofoc_cidades` existente
#

DROP TABLE IF EXISTS `wp_aofoc_cidades`;


#
# Estrutura da tabela `wp_aofoc_cidades`
#

CREATE TABLE `wp_aofoc_cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_aofoc_cidades`
#
INSERT INTO `wp_aofoc_cidades` ( `id`, `cidade`) VALUES
(2, 'Açucena'),
(3, 'Belo Oriente'),
(4, 'Coronel Fabriciano'),
(5, 'Ipatinga'),
(6, 'Santana do Paraíso'),
(7, 'São Domingos do Prata'),
(8, 'Timóteo'),
(9, 'Marliéria'),
(12, 'Dionísio'),
(13, 'Dionísio') ;

#
# Fim do conteúdo da tabela `wp_aofoc_cidades`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_aofoc_dados` existente
#

DROP TABLE IF EXISTS `wp_aofoc_dados`;


#
# Estrutura da tabela `wp_aofoc_dados`
#

CREATE TABLE `wp_aofoc_dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modalidade` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) DEFAULT '0',
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url_icone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_img1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url_img2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_img3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_img4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cidade_id` int(11) DEFAULT '0',
  `resp_contato` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_inicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_fim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_inicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_fim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor_entrada` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aprovado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_aofoc_dados`
#
INSERT INTO `wp_aofoc_dados` ( `id`, `modalidade`, `cat_id`, `nome`, `url_icone`, `url_img1`, `url_img2`, `url_img3`, `url_img4`, `descricao`, `endereco`, `cidade_id`, `resp_contato`, `telefone`, `whatsapp`, `email`, `facebook`, `tipo`, `site`, `dt_inicio`, `dt_fim`, `hr_inicio`, `hr_fim`, `valor_entrada`, `aprovado`) VALUES
(4, 'empreendimento', 8, 'Hotel Green Valley', 'http://localhost/mata/wp-content/uploads/2017/02/logo.png', 'http://localhost/mata/wp-content/uploads/2017/02/bn-destaque-home-3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/bn-destaque-home-5.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/bn-destaque-home-4.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/bn-destaque-home-6.jpg', 'Excelência em serviços hoteleiros no Vale do Aço, com uma estrutura arquitetônica imponente no centro de Timóteo, circundado por um vale verde, o Green Valley Hotel se destaca não só por suas acomodações modernas e confortáveis, mas também por sua excelência em atendimento e serviços de hotelaria.\r\nO Green Valley Hotel está localizado na cidade referência em qualidade de vida do Leste de Minas, se destacando como a melhor opção de hospedagem em toda a região metropolitana do Vale do Aço. O Green Valley Hotel conta com várias facilidades:\r\n• Internet wi-fi banda larga nos apartamentos;\r\n• Estacionamento coberto;\r\n• Room service;\r\n• Serviço de mensageiro;\r\n• Serviço de lavanderia;\r\n• Serviço de despertar\r\n', 'Rua Vinte e Um de Abril, 65, Centro, Timóteo - MG ', 8, 'Gerência', '(31) 3845-4850', '', 'administrativo@greenvalleyhotel.com.br', 'https://www.facebook.com/GreenValleyHotel', 'onde_ficar', 'http://www.greenvalleyhotel.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(10, 'empreendimento', 8, 'Hotel San Diego', 'http://localhost/mata/wp-content/uploads/2017/02/logo-1.png', 'http://localhost/mata/wp-content/uploads/2017/02/sandiego-5.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sandiego-4.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sandiego.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sandiego-3.jpg', 'O Hotel oferece 143 apartamentos, sendo 2 adaptados para deficiente físico. Todos com Internet wi-fi, TV a cabo, frigobar, ar-condicionado e estacionamento. Fica perto do Shopping do Vale e oferece quartos modernos e suítes com varandas. Também temos quadra de tênis, quadra de Squash e piscina para o seu lazer. Os hóspedes podem desfrutar do buffet de café da manhã diariamente e de almoço e jantar no restaurante do hotel, que serve pratos da cozinha internacional.', 'Rua Palmeiras, 406, Horto, Ipatinga - MG - CEP 35160-311', 5, '', '(31) 3829-6000', '(31) 99217-1027', 'gerencia.ipn@hoteisarco.com.br', 'https://www.facebook.com/hoteissandiego', 'onde_ficar', 'http://sandiegohoteis.com.br/hotel/san-diego-ipatinga/', NULL, NULL, NULL, NULL, NULL, 1),
(12, 'empreendimento', 8, 'La Fontaine Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/la-fontaine-logotipo.png', 'http://localhost/mata/wp-content/uploads/2017/02/frente-3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/piscina2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/piscina.jpg', '', 'Buscando constantemente o prazer e o bem-estar de seus hóspedes, o Hotel La Fontaine oferece a você espaços confortáveis, proporcionando uma estadia agradável e tranquila, adequada às suas necessidades e conveniências. A estrutura do apart-hotel está comparada aos melhores hotéis da categoria nas grandes regiões metropolitanas.\r\nPautado em um atendimento hoteleiro eficiente, honesto e transparente, os profissionais do Hotel La Fontaine são qualificados para atendê-lo em todas as suas dúvidas.\r\n\r\n', 'Rua João Monlevade, 495, Cidade Nobre, Ipatinga - MG -  CEP 35162-378', 5, '', '(31) 3828-8800', '', 'reservas@hotellafontaine.com.br', 'https://www.facebook.com/ipatingahotellafontaine', 'onde_ficar', 'http://www.residenciallafontaine.com.br/site/o-hotel-la-fontaine/', NULL, NULL, NULL, NULL, NULL, 1),
(21, 'empreendimento', 8, 'Stell Valley Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/logo-2.png', 'http://localhost/mata/wp-content/uploads/2017/02/bn-destaque-home-3-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Restaurante-e-cafe-da-manha-10.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Recepcao-181.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Sala-de-ginastica-002.jpg', 'Com ótima e moderna infraestrutura, o Steel Valley Hotel está localizado no centro de Ipatinga, região do Vale do Aço, a 10 minutos do Aeroporto, 15 minutos do Shopping, 100 metros da Rodoviária e 5 minutos tanto do Parque Ipanema quanto do estádio Ipatingão.\r\nO Steel Valley Hotel oferece aos seus hóspedes várias facilidades:\r\n• Internet wi-fi banda larga nos apartamentos;\r\n• Estacionamento coberto*;\r\n• Room service;\r\n• Serviço de mensageiro;\r\n• Serviço de lavanderia.\r\n\r\n*Mediante disponibilidade\r\n', 'Av. João Valentin Pascoal, 186, Centro, Ipatinga - MG - CEP 35160-002', 5, 'João Galvão', '(31) 3829-7390', '', 'reservas@steelvalleyhotel.com.br', 'https://www.facebook.com/SteelValleyHotel/', 'onde_ficar', 'http://www.stellvalleyhotel.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(25, 'empreendimento', 8, 'Lumiar Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/05.png', 'http://localhost/mata/wp-content/uploads/2017/02/01.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/03.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/02.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/04.jpg', 'Localizado em Coronel Fabriciano, cidade central do Vale do Aço, o Lumiar Hotel oferece aos seus hóspedes sua tradicional hospitalidade com conforto e economia.\r\nDispõe de um estacionamento amplo e de fácil acesso.\r\nAtendemos representantes comerciais, empresas, clientes a trabalho ou a lazer, famílias e casais. Os apartamentos são amplos e distribuídos nas categorias Luxo, Standard e quarto simples.\r\nOferecemos o serviço de wi-fi gratuito.\r\nServimos um delicioso café da manhã.\r\nPossuímos salão para reuniões e palestras, academia, salão de jogos e convivência.', 'Rua Tancredo de Almeida Neves, 780, Nossa Senhora da Penha, Coronel Fabriciano - MG - CEP 35.170-054', 4, 'xxx', '(31) 3842-1414', '', 'hotellumiar@hotellumiar.com.br', 'https://www.facebook.com/pg/hotellumiarminasgerais/', 'onde_ficar', 'http://www.hotellumiar.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(26, 'empreendimento', 8, 'Tijota Park Hotel Fazenda', '', 'http://localhost/mata/wp-content/uploads/2017/02/CC9B5FAAE6D9-10.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/5D206C4E14BC-11.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/CA882B5F2B6A-10.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/40140E4206A5-10.jpg', 'Missão:\r\nSer a melhor opção em Hotel Fazenda, proporcionando conforto, lazer e bem-estar aos nossos clientes, num local agradável com conforto, segurança, respeito à natureza e muita emoção.\r\nVisão de Futuro:\r\nSer uma empresa voltada sempre pela busca de melhoria das instalações, valorizando a simplicidade, o conforto e a natureza.\r\nPrincípios e Valores:\r\nÉtica, respeito aos princípios morais e religiosos, políticos e sociais. Trabalhar com honestidade e profissionalismo.\r\n', 'BR 381, Km 245, Bom Sucesso, Santana do Paraíso - MG', 6, '', '(31) 3822-6565', '', 'tijota@tijota.com.br', 'https://www.facebook.com/tijota.fazenda/', 'onde_ficar', 'http://www.tijota.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(27, 'empreendimento', 8, 'Domus Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/LOGO.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Captura-de-Tela-2017-02-11-às-09.51.18.png', 'http://localhost/mata/wp-content/uploads/2017/02/Captura-de-Tela-2017-02-11-às-09.51.06.png', 'http://localhost/mata/wp-content/uploads/2017/02/Captura-de-Tela-2017-02-11-às-09.50.26.png', '', 'Localizado em um dos bairros mais movimentados de Ipatinga, porém em volta a uma tranquilidade sem igual, o Domus Hotel Afonso Guimarães, inaugurado em março de 2015, conta com o mais moderno serviço em hospedagem da cidade, com quartos equipados para oferecer o máximo de conforto. \r\n\r\nCom 45 apartamentos, nossa infraestrutura tem agradado nossos hóspedes, especialmente os mais exigentes. O Domus Hotel Afonso Guimarães fica próximo a uma badalada boate em Ipatinga e a 50 metros do Domus Restaurante, referência culinária em Ipatinga, especializado em pratos executivos, a la carte e bons eventos noturnos.', 'Rua Afonso Guimarães, 282, Cidade Nobre, Ipatinga - MG ', 5, '', '(31) 3823-9000', '', 'gerencia@rededomushotel.com.br', 'https://www.facebook.com/rededomushotel', 'onde_ficar', 'http://www.rededomushotel.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(28, 'empreendimento', 8, 'Hotel Castanheira', 'http://localhost/mata/wp-content/uploads/2017/02/Captura-de-Tela-2017-02-11-às-10.31.31.png', 'http://localhost/mata/wp-content/uploads/2017/02/61C52E81-CCCE-0DCC-E1E7-5E6BE6C0DCBB.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/5.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/3.jpg', 'Hotel Castanheira, em Ipatinga, é a melhor opção para quem busca conforto, tranquilidade, localização, segurança e economia.\r\nSituado em um dos bairros mais agradáveis da cidade, no Centro Comercial do Bom Retiro, onde estão localizadas as portarias das principais empresas da região.\r\nA poucos metros do Shopping do Vale, do Centro Cultural Usiminas e do Teatro do Usicultura.\r\nAo lado do Centro Universitário Unileste-MG e a poucos passos da Faculdade Pitágoras e de toda a rede bancária.\r\nO local possui ainda hospitais, igrejas, clubes, restaurantes e bares.\r\nA apenas 5 minutos de carro do estádio Ipatingão.\r\n', 'Av. Fernando de Noronha, 823, Bom Retiro, Ipatinga - MG', 5, '', '(31) 3823-1138', '(31) 99165-6583', '', 'https://www.facebook.com/hotelcastanheira/', 'onde_ficar', 'http://www.hotelcastanheira.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(30, 'empreendimento', 15, 'Fazenda do Zaca', '', 'http://localhost/mata/wp-content/uploads/2017/02/403222_351536468197625_1254030339_n-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/480350_551988698152400_471334155_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/545647_408455815839023_1875104441_n-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/TREKKING-031.jpg', 'A Fazenda do Zaca oferece visitas escolares monitoradas, ecoturismo, locação para eventos, alimentação,  trilhas para trekking e integra o Ipatinga Rural – Roteiro Turístico', 'Estrada da Tribuna, s/nº', 5, '', '(31) 99966-1320', '', 'zaca_fazenda@hotmail.com', 'https://www.facebook.com/Fazenda-do-Zaca-309963872391082/?fref=ts', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(31, 'empreendimento', 10, 'Sítio Aconchego da Serra', '', 'http://localhost/mata/wp-content/uploads/2017/02/664647_469821366393437_491702725_o.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/54605_469823826393191_935069100_o.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/5D6BBDAB-4BBE-8CE6-DB15-68CBBBA4B8E4.jpg', '', 'A 2 km do Parque das Cachoeiras, casa com 4 quartos, internet grátis, quadra gramada de vôlei, piscina, belo jardim com flores, área coberta para churrasco, espaço para casamentos e festas, salão para eventos, recepções e cerimônias em geral. O salão possui 5 chuveiros e 5 sanitários.', 'Estrada do Tribuna s/nº', 5, '', '(31) 9988-4889', '', '', 'http://www.facebook.com/sitioaconchegodaserra', 'onde_ficar', '', NULL, NULL, NULL, NULL, NULL, 1),
(38, 'empreendimento', 17, 'Sítio Aconchego Verde', 'http://localhost/mata/wp-content/uploads/2017/02/1069403_159493077569458_1365761150_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/5AD0ECE3-05B0-AEDC-5D2E-AEA2C6C433A7.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/A50D54A5-E7A0-ADCE-8CBA-5ACE0C81CDEB.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/A5CDDA55-1BC6-E5AA-EACE-EA70C43DAB6A.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/DDCCBED4-DE08-D75C-ACC1-4BA48E7A4B4E.jpg', '5 quartos, 2 piscinas, campo, quadra de peteca e vôlei, sinuca, barco para passeio na lagoa e pedalinho. Obras de arte como cascata, chafariz, ponte, aquário natural e muitas outras atrações.', 'Estrada do Ipanemão, bairro Ipanemão, Ipatinga', 5, '', '(31) 98754-8424', '', 'waltercesarteodoro@hotmail.com', 'https://www.facebook.com/sitioaconchegoverde/', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(44, 'empreendimento', 8, 'Horto Executivo Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/images-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/64088641.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/68024188.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/01-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/68024427.jpg', 'O Horto Executivo Hotel fica próximo de todos os bancos e de vários restaurantes e pizzarias. Nossas suítes são completas com colchões de mola, frigobar, TV a cabo com mais de 30 canais, ar-condicionado, elevador, energia solar, wi-fi gratuito e estacionamento fechado. Área de lazer com míni-academia, piscina e sauna. Estacionamento próprio e fechado.', 'Rua Jequitibá, 210, Horto, Ipatinga - MG', 5, '', '(31) 3827-6930', '', 'hotelhortoexecutivo@grupoatarp.com', '', 'onde_ficar', 'http://www.atarp.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(45, 'empreendimento', 8, 'Hotel Niterói', '', 'http://localhost/mata/wp-content/uploads/2017/02/B4BB2BBE-5DCB-AEAE-AE2A-D37E44BC441D.jpg', '', '', '', 'Tranquilidade e conforto com preços acessíveis. Delicioso café da manhã self-service, estacionamento fechado e internet wi-fi. A 500 metros do centro da cidade. Sinta-se em casa quando estiver em Ipatinga.', 'Avenida Londrina, 270, Veneza II, Ipatinga - MG', 5, '', '(31) 3821-7454', '', 'hotelniteroi@yahoo.com.br', 'https://www.facebook.com/hotelniteroiipatinga/?fref=ts', 'onde_ficar', 'http://www.hotelniteroi.com/', NULL, NULL, NULL, NULL, NULL, 1),
(46, 'empreendimento', 36, 'Escola de Dança Na Trilha da Arte', '', 'http://localhost/mata/wp-content/uploads/2017/02/DSC_9374-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/DSC_3906-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/DSC_3904-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/DSC_0011-2.jpg', 'A Escola oferece aulas de Balé, Jazz, Dança de rua e Taekwon-do para crianças e adolescentes, com comprometimento técnico e em um ambiente lúdico. Há 20 anos educando para a arte e para a vida e apresentando-se nos mais diversos palcos da cidade, da região e do estado. Proporcionando aos alunos e platéia momentos de lazer, cultura e também conquistando troféus, como tem acontecido nos últimos anos nas cidades de Divinópolis, Nova Lima e Belo Horizonte.', 'Rua Marajó, 287, Giovannini, Coronel Fabriciano - MG', 4, 'Adriana', '(31) 3842-9609', '', '', 'https://www.facebook.com/escola.trilhadaarte', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(47, 'empreendimento', 10, 'Sítio Riacho das Pedras', 'http://localhost/mata/wp-content/uploads/2017/02/logo-3.png', 'http://localhost/mata/wp-content/uploads/2017/02/gallery-img1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/gallery-img3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/gallery-img2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/gallery-img5.jpg', 'Chalés completos com toda infra-estrutura :\r\n\r\n- Geladeira, fogão, utensilios domésticos;\r\n- Cachoeira em frente ao Sítio;\r\n- Piscina com água corrente de mina;\r\n- Churrasqueiras individuais para cada chalé e ainda mais duas em área comum a todos;\r\n- Área de lazer completa com sinuca, totó, pingue-pongue e quadra de peteca e vôlei;\r\n- Sala de TV com Sky e salão de festas.', 'Primeira entrada à direita após o parque das cachoeiras, Ipatinga', 5, '', '(31) 99660-0643', '(31) 9712-0852', '', 'https://www.facebook.com/sitioriachodaspedras.jussara?fref=ts', 'onde_ficar', 'http://sitiorpjussara.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(49, 'empreendimento', 14, 'Congado do Ipaneminha - Congado Nossa Senhora do Rosário', '', 'http://localhost/mata/wp-content/uploads/2017/02/IMG_20161023_121808067.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IMG_20161023_123216550_HDR.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IMG_20161023_145323271.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IMG_20161023_164955509.jpg', 'O Congado Nossa Senhora do Rosário, Congado do Ipaneminha, fundado em 1925 por José Gonçalves de Almeida é onde os congadeiros se reunem para as festas de Nossa Senhora do Rosário e do Divino. O Congado do Ipaneminha, tradição cultivada por afro-descendentes, tem sua origem ligada aos tropeiros procedentes da cidade do Serro, passando por Ferros, Joanésia, Mesquita, Santana do Paraíso e Ipaneminha, nas primeiras décadas do século XX.  O Congado foi  registrado como patrimônio cultural de Ipatinga em novembro de 2016.\r\nEm outubro, acontece a tradicional festa de Nossa Senhora do Rosário no Ipaneminha, área rural de Ipatinga.', 'Povoado do Ipaneminha - Areá Rural Ipatinga', 5, 'Departamento de Cultura - Prefeitura Municipal de Ipatinga', '(31) 3829-8059', '', 'cultura@ipatinga.mg.gov.br', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(50, 'empreendimento', 8, 'Hotel Independência', 'http://localhost/mata/wp-content/uploads/2017/02/logo-1.gif', 'http://localhost/mata/wp-content/uploads/2017/02/hotel-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/apart.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/principal.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/apart1.jpg', 'O Hotel Independência está pronto para atender às necessidades dos mais exigentes hóspedes. Conta com exclusiva área verde para recreação, um estacionamento próprio para veículos de pequeno e médio porte e toda infraestrutura para realização de convenções e reuniões de empresas. \r\nInaugurado em 1978, brinda seus clientes com um moderno atendimento, com a experiência de quem cresceu junto com o Vale do Aço – região que abriga importantes indústrias exportadoras e a maior reserva de mata atlântica contínua do Brasil, o Parque Estadual do Rio Doce.', 'Rua Novo Hamburgo, 485, Veneza, Ipatinga - MG -  CEP 35164-252', 5, '', '(31) 3801-2011', '', '', 'https://www.facebook.com/pages/Hotel-Independ%C3%AAncia/206388246113902?fref=ts', 'onde_ficar', 'http://www.hotelindependencia.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(51, 'empreendimento', 14, 'Teatro Zélia Olguin', '', 'http://localhost/mata/wp-content/uploads/2017/02/Zelia-Olguin001.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/Zelia-Olguin006.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Zelia-Olguin003.jpg', 'Inaugurado em outubro de 1994, o Teatro Zélia Olguin está localizado em Ipatinga. O espaço disponibiliza uma programação artística diversificada e de qualidade para o público do Vale do Aço, incentivando o intercâmbio artístico e a formação de grupos locais. Além disso, recebe eventos de diversas áreas, sendo também uma referência no segmento de turismo de negócios. \r\nO nome do Teatro homenageia a bailarina pioneira na promoção de cultura da cidade, senhora Zélia Olguin. O espaço é composto por teatro, galeria e área de coquetel.', 'Av. Itália, 1890, Cariru, Ipatinga – MG - CEP 35160-114', 5, 'Centro Cultural Usiminas', '(31) 3822-2215', '', '', 'http://facebook.com/institutoculturalusiminas', 'atrativo', 'http://www.institutoculturalusiminas.com ', NULL, NULL, NULL, NULL, NULL, 1),
(52, 'empreendimento', 8, 'Panorama Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/logoTower.png', 'http://localhost/mata/wp-content/uploads/2017/02/hotel1_thumb.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/004_thumb.png', 'http://localhost/mata/wp-content/uploads/2017/02/003_thumb.png', '', 'A Rede Panorama de Hotéis é considerada, na região do Vale do Aço, referência em hotelaria, com unidades em Ipatinga e Coronel Fabriciano. Possui uma excelente estrutura de atendimento e prestação de serviço, proporcionando bem-estar, conforto e a melhor relação custo-benefício em sua viagem de negócios ou lazer.', 'Rua Maraque, 160, Iguaçu, Ipatinga - MG', 5, '', '(31) 38233-0003', '', '', '', 'onde_ficar', 'http://hoteispanorama.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(53, 'empreendimento', 14, 'Museu Zeza Souto – Estação Memória', '', 'http://localhost/mata/wp-content/uploads/2017/02/ESTAÇÃO-Memória-JBReis-1.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/ESTAÇÃO-Memória-2.jpg', '', 'O Museu Zeza Souto, conhecido como Estação Memória, é tombado pelo Patrimônio Histórico de Ipatinga. Foi construída em 1930 para substituir a Estação Pedra Mole. Além de favorecer o escoamento do carvão vegetal produzido na região, propiciava o transporte de passageiros e da pequena produção agrícola local. Foi desativada em 1951 e restaurada a partir de 1991. Oficialmente inaugurada em 28 de dezembro de 1992, passou a abrigar atividades culturais e atualmente guarda documentos importantes sobre a história da cidade. ', 'Rua Belo Horizonte, 272, Centro, Ipatinga – MG ', 5, 'Prefeitura Municipal de Ipatinga - Departamento de Cultura', '(31) 3829-8059', '', 'cultura@ipatinga.mg.gov.br', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(54, 'empreendimento', 8, 'Panorama Hotel', 'http://localhost/mata/wp-content/uploads/2017/02/logoTower-1.png', 'http://localhost/mata/wp-content/uploads/2017/02/hotel2_thumb.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/007_thumb.png', 'http://localhost/mata/wp-content/uploads/2017/02/006_thumb.png', 'http://localhost/mata/wp-content/uploads/2017/02/003_thumb-1.png', 'Executivo \r\n\r\nSão 70 apartamentos executivos com camas box, piso antialérgico, ar-condicionado, acesso a internet banda larga, telefone - linha direta DDD e DDI - frigobar, rádio, TV com canais por assinatura, mesa de trabalho, maleiro e closet. \r\n\r\nSuíte \r\n\r\nSão 4 suítes com camas box, banheira de hidromassagem, sala de estar, solarium, piso antialérgico, ar-condicionado digital, acesso a internet banda larga, telefone - linha direta DDD e DDI - frigobar, rádio,TV com canais por assinatura, mesa de trabalho, maleiro e closet. ', 'Rua Duque de Caxias, 40, Centro, Coronel Fabriciano - MG - 35170-009', 4, '', '(31) 3842-2000', '', '', '', 'onde_ficar', 'http://hoteispanorama.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(55, 'empreendimento', 14, 'Igreja Nossa Senhora da Esperança', '', 'http://localhost/mata/wp-content/uploads/2017/02/IGREJA-Católica-Horto-Welles-Debil-7.jpg', '', '', '', 'Tombada pelo Patrimônio Histórico, a igreja é o primeiro templo católico construído em bairros projetados pela Usiminas, na década de 50. A área foi idealizada para abrigar o centro da cidade, hoje, bairro Horto. Situa-se no entorno da atual Praça Engenheiro Carlos Jacinto Prates e foi construída em madeiras originadas das matas locais. Guarda em seu interior imagens e objetos também em madeira e de notado valor artístico, com arquitetura que lembra os acampamentos operários do início das obras da usina.', 'Av. castelo Branco, 689, Horto, Ipatinga - MG', 5, 'Prefeitura Municipal de Ipatinga - Departamento de Cultura', '(31) 3829-8959', '', 'cultura@ipatinga.mg.gov.br', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(56, 'empreendimento', 8, 'Hotel Dona Fia', '', 'http://localhost/mata/wp-content/uploads/2017/02/hotel-19866352548645847.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/hotel-dona-fia.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/1186119_594770823899682_545419653_n.jpg', '', 'Suítes com TV multiponto, banheiro, frigobar, ar-condicionado split digital e gradual, mesa de trabalho, guarda-roupa, internet wireless, café da manhã, bem no coração de Belo Oriente.', 'Av. Minas Gerais, 15, Belo Oriente - MG', 3, '', '(33) 3253-1319', '', '', '', 'onde_ficar', '', NULL, NULL, NULL, NULL, NULL, 1),
(57, 'empreendimento', 8, 'Grande Hotel Ipatinga', 'http://localhost/mata/wp-content/uploads/2017/02/Artboard-5-1024x216.png', 'http://localhost/mata/wp-content/uploads/2017/02/82233966.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/82234505.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/82234509.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/82234512.jpg', 'Disponível 24 horas, nossa recepção conta com manobrista, mensageiro, recepcionistas e gerente para atendê-lo com simpatia e cordialidade. Nosso Business Center está sempre arrumado e equipado para abrigar pequenas reuniões, podendo funcionar também como um agradável espaço de convivência. Temos ainda TV de 32″, impressora, scanner e rede wi-fi de alta velocidade, além de uma sala extra para reuniões, com capacidade para até 12 pessoas.\r\n\r\n* Internet Wi-fi\r\n* Lavanderia\r\n* Business Center\r\n* Auditório\r\n* Garagem coberta\r\n*Restaurante\r\n* Serviço de quarto\r\n* Recepicionistas 24hs\r\n* Piscina\r\n* Sauna\r\n* Bar\r\n\r\n', 'Av. Brasil, 560, Ipatinga - MG', 5, '', '(31) 3367-1020', '', '', '', 'onde_ficar', 'http://grandehotelipatinga.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(58, 'empreendimento', 8, 'Hotel Dom Henrique', 'http://localhost/mata/wp-content/uploads/2017/02/logo-2.gif', 'http://localhost/mata/wp-content/uploads/2017/02/85929384.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/85929371.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/85929392.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/85929366.jpg', 'Criado para ser um marco na hotelaria timotense, o Hotel Dom Henrique se destaca pela qualidade, sofisticação e requinte dispensados a você desde a reserva até o check-out.\r\n\r\nO Hotel Dom Henrique possui requintadas acomodações e completa infraestrutura para eventos, feiras e convenções. Nossa equipe, especialmente preparada, assegura agilidade e facilidade no check-in e no check-out.', 'Rua 15 de Novembro, 510, Centro Norte, Timóteo - MG', 8, '', '(31) 3848-7700', '', '', '', 'onde_ficar', 'http://www.hoteldomhenrique.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(59, 'evento', 42, 'CONCURSO TEEN DE BELEZA - MISS E MISTER TEEN MINAS GERAIS 2017 - Agencia OZ', '', 'http://localhost/mata/wp-content/uploads/2017/02/capa.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Palestra-SV-2016.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Passeio-2014.jpg', '', 'O concurso MISS E MISTER TEEN MINAS GERAIS 2017 acontece com a missão de destacar e motivar jovens de diferentes partes do estado a mostrar o seu valor e, por que não, realizar sonhos.\r\nO concurso será realizado em Ipatinga, no Vale do Aço, nos Dias 27, 28, 29 e 30 Abril, com produção da Agência OZ e Coordenação de Carolina Magalhães e Solange Maria.\r\nA Miss e o Mister Teen Minas Gerais 2017 serão jovens empenhados em trabalhar por uma sociedade mais justa e para servir como um modelo para adolescentes e crianças em todo o estado e região.', 'Centro Cultural Usiminas', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', '27/04/2017', '30/04/2017', '20:00', '22:30', 'R$ 20,00', 1),
(60, 'empreendimento', 9, 'Pousada e Restaurante Barbosa', '', 'http://localhost/mata/wp-content/uploads/2017/02/56662368.jpg', '', '', '', 'Informações obtidas por site de viagens. Ajude-nos a atualizar.', 'Rua Argentina, 133, Açucena - MG - CEP 35150-000', 2, '', '(33) 3298-1203', '', '', '', 'onde_ficar', '', NULL, NULL, NULL, NULL, NULL, 1),
(61, 'empreendimento', 8, 'Hotel e Restaurante da Alaíde', '', 'http://localhost/mata/wp-content/uploads/2017/02/56662368-1.jpg', '', '', '', 'Informações obtidas da por site de viagens. Ajude-nos a atualizar.', 'Rua Odilon de Almeida, 91, Centro, Açucena - MG', 2, '', '(33) 3298-1184', '', '', '', 'onde_ficar', '', NULL, NULL, NULL, NULL, NULL, 1),
(62, 'empreendimento', 17, 'Terra de Gigantes Esporte e Natureza', '', 'http://localhost/mata/wp-content/uploads/2017/02/terra-gigantes.jpg', '', '', '', 'Empresa atuante no setor de Turismo e Atividades de Aventura dentro do Circuito Mata Atlântica de Minas, bem como outras regiões de Minas Gerais. Produzimos atividades como montanhismo, escalada esportiva, navegação terrestre, caminhadas curtas e de longa duração, técnicas verticais, treinamentos empresariais, cursos, entre outras.', 'Rua Palmeiras, 1010, Horto, Ipatinga - MG', 5, 'Rafael', '(31) 98859-4639', '(31) 98859-4639', 'tgcontato@gmail.com', 'http://terradegigantesesportesenatureza', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(64, 'empreendimento', 8, 'Hotel Grande Vale', '', 'http://localhost/mata/wp-content/uploads/2017/02/56036527.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/56036540.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/56036539.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/56037745.jpg', 'O Hotel Grande Vale oferece acomodações em Ipatinga. Fornece wi-fi gratuito em todas as áreas e estacionamento privativo gratuito no local.\r\n\r\n15 quartos com TV e banheiro privativo com chuveiro.\r\n\r\nA propriedade dispõe de recepção 24 horas. \r\n\r\nNós falamos a sua língua!\r\n\r\nHotel Grande Vale tem recebido hóspedes da Booking.com desde 19 de outubro de 2015.', 'Avenida Macapá, 100, Ipatinga - MG - CEP 35164-253', 5, '', '(31) 3825-7023', '', '', '', 'onde_ficar', '', NULL, NULL, NULL, NULL, NULL, 1),
(65, 'empreendimento', 8, 'Hotel Aquarius', '', 'http://localhost/mata/wp-content/uploads/2017/02/62548840.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/62520914.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/62921855.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/62921915.jpg', 'O Hotel Aquarius oferece acomodação em Coronel Fabriciano. O wi-fi gratuito é oferecido em todas as áreas da propriedade e o estacionamento privativo, também gratuito, está disponível no local.\r\n\r\nOs quartos têm TV e banheiro privativo com chuveiro.\r\n\r\nA propriedade oferece recepção 24 horas. \r\n\r\nNós falamos a sua língua!', 'Rua Pedro Nolasco, 513, Coronel Fabriciano', 4, '', '(31) 3842-3733', '', '', '', 'onde_ficar', '', NULL, NULL, NULL, NULL, NULL, 1),
(67, 'empreendimento', 14, 'Igreja Ipaneminha - São Vicente de Paula', '', 'http://localhost/mata/wp-content/uploads/2017/02/IPATINGA-ELVIRA-NASCIMENTO-2.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/IGREJA-do-Ipaneminha-3.jpg', '', 'Construída em pau-a-pique (pedra e madeira), a igreja substituiu uma capela improvisada que havia no local até o início da década de 50. Possui coro e campanário, com arquitetura típica do período colonial. Dedicada a São Vicente de Paula e abrigando imagens de reconhecido valor histórico, a igrejinha marca a sede de uma das mais antigas comunidades rurais de Ipatinga. ', 'Ipaneminha - Área rural de Ipatinga', 5, 'Prefeitura Municipal de Ipatinga - Departamento de Cultura', '(31) 3829-8059', '', 'cultura@ipatinga.mg.gov.br', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(68, 'empreendimento', 8, 'Hotel Metropolitano', 'http://localhost/mata/wp-content/uploads/2017/02/download-1.png', 'http://localhost/mata/wp-content/uploads/2017/02/slide4-57d712b4bd-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/slide2-ee0fd0df88-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/piscina-5e0366bf65.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/slide5-fa321022af-1.jpg', 'Com mais de 3.400 m² de área construída, o Hotel Metropolitano é o mais completo hotel da região na categoria três estrelas. Reconhecido pela Embratur e recomendado pelo Guia Quatro Rodas, fica próximo às vias de acesso ao centro da cidade e da BR 381, principal ligação da capital com o interior mineiro.\r\n\r\nO Hotel Metropolitano é a melhor opção de hospedagem, ideal para quem procura qualidade aliada ao melhor custo benefício no Vale do Aço.', 'Av. Julita Pires Bretas, 644, Bom Jesus, Coronel Fabriciano - MG - CEP 35170-026', 4, '', '(31) 3842-2005', '', '', '', 'onde_ficar', 'http://www.hotelmetropolitano.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(69, 'empreendimento', 44, 'Parque Ipanema', '', 'http://localhost/mata/wp-content/uploads/2017/02/IPATINGA-ELVIRA-NASCIMENTO-4.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IPATINGA-ELVIRA-NASCIMENTO-5.jpg', '', '', 'A ideia de construir em Ipatinga um parque de lazer de grande dimensão surgiu a partir de um projeto de urbanização da Região do Aço. Em 1978, iniciaram-se os estudos para sua implantação. Teve suas obras retomadas e concluídas pela Prefeitura de Ipatinga na década de 90. O Parque Ipanema possui em seus jardins várias espécies originárias da Mata Atlântica. Projetado pelo paisagista Roberto Burle Marx, é a maior área verde urbana de Minas Gerais, com 1 milhão de metros quadrados. O Parque é tombado pelo Patrimônio Histórico e Artístico de Ipatinga.', 'Av. Burle Marx , s/n, Novo Cruzeiro, Ipatinga –MG ', 5, 'Prefeitura Municipal de Ipatinga - Departamento de Cultura', '(31) 3829-8059', '', 'cultura@ipatinga.mg.gov.br', '', 'lazer', '', NULL, NULL, NULL, NULL, NULL, 1),
(70, 'empreendimento', 9, 'Pousada Village dos Pássaros', '', 'http://localhost/mata/wp-content/uploads/2017/02/000235_20130822113314_0.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/000596_20150701102315_1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/000595_20150701102315_0.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/000236_20130822113314_1.jpg', 'Village dos Pássaros é uma pousada em chalés fabricados em madeira e vidro, que possuem suíte com ambiente climatizado, espaço gourmet, área de lazer com piscina aquecida para adultos, piscina infantil, ducha, salão de jogos com Kinect Xbox, snooker, totó, brinquedos em madeira tipo casa do Tarzan, ponte pênsil, futebol, vôlei e peteca em quadra de areia, cama elástica, slackline, biribol, passeio a cavalo, passeio de carrocinha, triciclo família e passeio de charrete.', 'BR-381, Km 209,5, Belo Oriente - MG', 3, '', '(33) 99972-9249', '(33) 99972-9249', '', '', 'onde_ficar', 'http://www.villagedospassaros.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(71, 'empreendimento', 15, 'Pontilhão de Ferro', '', 'http://localhost/mata/wp-content/uploads/2017/02/IMG-20161212-WA0068.jpg', '', '', '', 'Ponte metálica em treliça construída em 1930 para permitir a passagem do trem. Em 1986, foi adaptada para tráfego de veículos, tornando-se o principal elo de ligação entre o centro da cidade e o bairro Veneza. A partir do Projeto Novo Centro, foi substituída por uma ponte de concreto e utilizada apenas para passagem de pedestres.', 'Rua Belo Horizonte, Centro, Ipatinga –MG ', 5, 'Prefeitura Municipal de Ipatinga - Departamento de Cultura', '(31) 3829-8059', '', 'cultura@ipatinga.mg.gov.br', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(72, 'empreendimento', 9, 'Pousada Veredas da Serra', 'http://localhost/mata/wp-content/uploads/2017/02/logo-4.png', 'http://localhost/mata/wp-content/uploads/2017/02/secao_003_a.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/secao_002_a.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/secao_001_a.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/campo_de_futebol.jpg', 'Localizada a 5 km da cidade de Santana do Paraíso, rodeada por belas paisagens de mata atlântica, lindas montanhas e cachoeiras paradisíacas em volta, é um local ideal para famílias e casais que buscam vivenciar a natureza, sossego e conforto com requinte.\r\nNa pousada Veredas da Serra, o hóspede tem um atendimento personalizado, tendo a sua disposição uma infraestrutura de alta qualidade com suítes, chalés executivos, quartos com camas de casal, televisão, ventiladores de teto e acesso a internet.\r\nAlém de todo conforto oferecido pela Pousada Veredas da Serra, o hóspede tem a sua disposição um delicioso café da manhã bem mineiro.', 'Rodovia 232, km 20, Santana do Paraíso - MG', 6, '', '(31) 3822-5460', '(31) 98326-6009', '', '', 'onde_ficar', 'http://www.pousadaveredasdaserra.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(73, 'empreendimento', 15, 'Complexo Turístico Pouso de Água Limpa', '', 'http://localhost/mata/wp-content/uploads/2017/02/Estação-Pouso-de-Água-Limpa11.jpg', '', '', '', 'Este complexo situa-se à margem direita do Ribeirão Ipanema e é constituído pela Locomotiva “Maria fumaça”, pela  Estrada de Ferro Caminho das Águas (com 2,6 km de extensão) e por uma réplica de Estação Ferroviária, denominada Estação Pouso de Água Limpa. A locomotiva a vapor de origem alemã foi construída em 1937, utiliza combustível a lenha e bagaço de cana. Inaugurada em 12 de junho de 1999, busca proporcionar  à população a vivência de parte dos costumes do início da ocupação do município.', 'Margem direita do Ribeirão Ipanema, s/n, Centro, Ipatinga - MG', 5, 'Prefeitura Municipal de Ipatinga - Departamento de Cultura', '(31) 3829-8059', '', 'cultura@ipatinga.mg.gov.br', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(74, 'empreendimento', 17, 'Esporte no Vale Adventure Operadora de Ecoturismo', '', 'http://localhost/mata/wp-content/uploads/2017/02/ESPORTE-NO-VALE.jpg', '', '', '', ' A Empresa Esporte no Vale Adventure é uma prestadora de serviço centrada nos esportes de aventura. Surgiu há 10 anos com a ideia de unir o melhor de dois mundos: o mundo da prática de vários esportes junto à natureza e o mundo da exploração geológica de nossa região.\r\n\r\nA visão\r\nNão precisamos percorrer longas distâncias para apreciar belezas que a natureza tem a oferecer. Pois, aqui mesmo em nossa região, elas estão disponíveis.\r\n\r\nA missão é proporcionar aos nossos amigos e clientes um contato direto com a natureza, sempre priorizando o trabalho em equipe e visando o seu bem-estar.', 'Av. Magalhães, 2286, Giovanini', 4, '', '(31) 3842-2732', '(31) 98586-9516', '', 'https://www.facebook.com/esporte.novale', 'atrativo', 'https://www.esportenovale.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(75, 'empreendimento', 8, 'Tijota Park Hotel Fazenda', 'http://localhost/mata/wp-content/uploads/2017/02/download.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/parque-aquatico.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/CBF7AC2EAD97-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/3A20BCC5DFB7-14.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/8A828084F4C3-13.jpg', 'Missão\r\nSer a melhor opção em hotel fazenda, proporcionando conforto, lazer e bem-estar ao nossos clientes, num local agradável com conforto, segurança, respeito à natureza e muita emoção.\r\n\r\nVisão de Futuro\r\nSer uma empresa voltada sempre à busca de melhoria das instalações, valorizando a simplicidade, o conforto e a natureza.', 'BR381, Km 245, Bom Sucesso, Santana do Paraíso - MG', 6, '', '(31) 3822-6565', '', '', '', 'onde_ficar', 'http://www.tijota.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(76, 'empreendimento', 15, 'Ateliê Feito a Mão -  Ipatinga Rural Roteiro Turístico ', '', 'http://localhost/mata/wp-content/uploads/2017/02/biscoitos.jpg', '', '', '', 'Ipatinga Rural Roteiro Turístico é composto por diversos empreendimentos, dentre eles, o Ateliê Feito a Mão. O Ateliê tem como proposta  oficinas de quitanda ofertadas pelas cozinheiras da região - famosas pela produção de biscoitos - e de artesanato, onde artesãs ensinam técnicas manuais, tendo na reciclagem de materiais o elemento principal na produção dos artefatos.', 'Estrada do Ipaneminha – Sítio Veredas das Flores', 5, 'Belinha', '(31) 98633-0364', '', 'belinharaydan@gmail.com', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(77, 'empreendimento', 40, 'Impuros Brasil Moto Clube', '', 'http://localhost/mata/wp-content/uploads/2017/02/MOTO-CLUBE.jpg', '', '', '', 'Moto clube composto somente por Headbangers, apreciadores do Heavy Metal e suas vertentes mais extremas e do gosto pela motocicleta, viagens e shows.', 'Rua Aline, 39, Chácaras Oliveira', 5, 'Washington Ambrósio ', '(31) 8840-4186', '(31) 8695-6656', '', 'https://www.facebook.com/pg/impurosbrasil', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(78, 'empreendimento', 41, 'Galera da Bike', '', 'http://localhost/mata/wp-content/uploads/2017/02/galera-bike.jpg', '', '', '', 'Ciclo e volta de Bicicleta.\r\nArticula vários grupos de ciclistas que pedalam em diversos locais diariamente. \r\n\r\n', 'Vale do Aço ', 5, 'Sebastião da Silveira ', '(31) 98616-1655', '(31) 98844-6424', '', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(79, 'empreendimento', 17, 'Clube do JEEP', 'http://localhost/mata/wp-content/uploads/2017/02/jipe-clube-vale-do-aço.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/clube-jeep.jpg', '', '', '', 'Nosso objetivo é estimular, difundir e organizar o esporte off-road e as atividades a ele relacionadas, harmonizando-o à defesa do meio ambiente.\r\n', 'Av. Magalhães Pinto, 203, Centro, Coronel Fabriciano - MG', 4, 'Daniel ', '(31) 98766-9702', '(31) 98766-9702', 'dtformiga@gmail.com', 'https://www.facebook.com/Jipe-Clube-Vale-do-Aço-124754314251327', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(80, 'empreendimento', 47, 'Clube Casa de Campo', 'http://localhost/mata/wp-content/uploads/2017/02/casa-de-campo-logo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/clube-casa-de-campo.jpg', '', '', '', 'Clube de lazer, social e poliesportivo fundado em 1966.', 'Rua Argemiro José Ribeiro, 189, Santa Helena, Coronel Fabriciano - MG', 4, '', '(31) 3841-3090', '(31) 99277-2756', '', 'https://www.facebook.com/casacampo.campo.7', 'lazer', 'https://www.clubecasadecampo.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(81, 'empreendimento', 14, 'Museu Municipal José Avelino Barbosa', '', 'http://localhost/mata/wp-content/uploads/2017/02/MUSEU-AVELINO-4.jpg', '', '', '', 'Iniciando suas atividades, o museu conta com mais de 200 peças e cerca de duas mil fotografias que contam a história da região e do Vale do Aço. É um centro de pesquisa sobre a história da região do Vale do Aço e, mais especificamente, sobre a história de Coronel Fabriciano. Muitos objetos que se encontram no museu foram doados por moradores da cidade. Os familiares do pioneiro da cidade, José Avelino Barbosa, homenageado com o nome do Museu, também doaram peças ao espaço. Entre as peças do acervo do museu, encontra-se a imagem de São Sebastião, que inaugurou a primeira igreja do antigo povoado do Calado, em 1929, e o quadro “O Último Trem”, de Míriam d’Arc, pintado em 1979. ', 'Rua Moacyr Birro, 429, Centro, Coronel Fabriciano - MG', 4, 'prefeitura ', '(31) 3846-7701', '(31) 99966-5920', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(82, 'empreendimento', 26, 'SOCIAL FUTEBOL CLUBE', 'http://localhost/mata/wp-content/uploads/2017/02/social-futebol-2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/SOCIAL-CLUBE.jpg', '', '', '', 'O Social Futebol Clube é um clube brasileiro de futebol da cidade de Coronel Fabriciano, Vale do Aço, no estado de Minas Gerais. Têm seus jogos no Estádio Louis Ensch.', 'Rua Doze de Outubro, 111, Professores, Coronel Fabriciano - MG', 4, 'Francisco Simões', '(31) 3841-1833', '', 'social@socialfutebolclube.com.b', 'https://www.facebook.com/socialfc.oficial/?fref=ts', 'info_uteis', 'http://www.socialfutebolclube.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(83, 'empreendimento', 22, 'Paiva Turismo', 'http://localhost/mata/wp-content/uploads/2017/02/logo-paiva.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/paiva.jpg', '', '', '', 'Agência de Turismo localizada na cidade de Coronel Fabriciano. Vende pacotes turísticos e assessoria completa em vistos. Agência de Viagens Paiva Turismo é formada por profissionais especializados em turismo que possuem as informações necessárias para fazer as viagens dos seus sonhos mais produtivas, com a melhor relação custo-benefício e sem preocupações. O atendimento Paiva Turismo está pronto para prestar à sua família o melhor serviço em viagens desde a reserva de hotel até um atendimento emergencial na madrugada de domingo.', 'Rua José Cornélio, 34, Loja 3, Centro, Coronel Fabriciano - MG', 4, 'Wander Paiva', '(31) 3842-4444', '(31) 98555-6502', 'contato@paivaturismo.com.br', 'https://www.facebook.com/Paiva-Turismo-322142881229292/?fref=ts', 'info_uteis', 'http://www.paivaturismo.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(84, 'empreendimento', 24, 'LOKACAR', '', 'http://localhost/mata/wp-content/uploads/2017/02/lokacar.jpg', '', '', '', 'Aluguel de Carros.', 'Av. Presidente Trancredo de Almeida Neves, 1810, Bom Jesus, Coronel Fabriciano - MG', 4, '', '(31) 3841-1300', '(31) 99877-7130', 'vendas@lokacar.com', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(85, 'empreendimento', 35, 'Ponto de Taxi Rodoviária', '', 'http://localhost/mata/wp-content/uploads/2017/02/taxi.jpg', '', '', '', 'Traslado de passageiros.', 'Rua Pedro Nolasco, 400, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3841-2671', '', '', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(86, 'empreendimento', 35, 'Ponto de Taxi Mairink', '', 'http://localhost/mata/wp-content/uploads/2017/02/taxi-1.jpg', '', '', '', 'Traslado de passageiros.', 'Rua Maria Matos, Centro, Coronel Fabriciano - MG', 4, '', '(31) 99606-0136', '(31) 99606-0136', '', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(87, 'empreendimento', 35, 'Ponto de Taxi de Cocais Sr. José Domingo', '', 'http://localhost/mata/wp-content/uploads/2017/02/taxi-2.jpg', '', '', '', 'Traslado de passageiros.', 'Cocais de Baixo', 4, '', '(31) 3841-0026', '', '', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(88, 'empreendimento', 14, 'FeiraCel', 'http://localhost/mata/wp-content/uploads/2017/02/feiracel-logo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/feiracel.jpg', '', '', '', 'Feira de Alimentos, bebidas e recreação, de expositores de artesanato, comidas típicas e música ao vivo.\r\n', 'Av. Pedro Nolasco, Centro, Coronel Fabriciano - MG', 4, 'Helder ', '(31) 98823-3837', '(31) 98823-3837', '', 'https://www.facebook.com/feiracel.fabriciano.1?fref=ts', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(89, 'empreendimento', 14, 'ArtMinas', '', 'http://localhost/mata/wp-content/uploads/2017/02/artminas.jpg', '', '', '', 'Feira de Artesanato.\r\n', 'Av. Gov. José de Magalhães Pinto, 42, Giovanini, Coronel Fabriciano - MG', 4, 'Andrize', '(31) 99225-5444', '(31) 99225-5444', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(90, 'empreendimento', 14, 'Feira Livre', '', 'http://localhost/mata/wp-content/uploads/2017/02/feira-livre.jpg', '', '', '', 'Feira livre com produtos da roça.', 'Rua Iriri, 161, Giovanini, Coronel Fabriciano - MG', 4, 'Eloisio', '(31) 98509-6939', '(31) 98509-6939', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(91, 'empreendimento', 14, 'Feira Agricultura Familiar ', '', 'http://localhost/mata/wp-content/uploads/2017/02/feira-agricultura-familiar.jpg', '', '', '', 'Produtos Orgânicos da Agricultura Familiar de Serra de Cocais. Todos os produtos são adubados sem uso de agrotóxicos.\r\n', 'Av. Magalhães Pinto, Giovanini, Coronel Fabriciano - MG', 4, 'Gilson de Lima Pereira', '(31) 99362-6600', '', 'gilsonlima1988@hotmail.com', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(95, 'empreendimento', 23, ' Romilson', '', 'http://localhost/mata/wp-content/uploads/2017/02/cocais.jpg', '', '', '', 'Condutor de turismo local.', 'Coronel Fabriciano ', 4, 'Romilson', '(31) 97525-7297', '(31) 97525-7297', '', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(96, 'empreendimento', 32, 'Mestre Santana', '', 'http://localhost/mata/wp-content/uploads/2017/02/cocais-1.jpg', '', '', '', 'Condutor e mestre de marujada Serra dos Cocais.', 'Cocais ', 4, 'Mestre Santana', '(31) 3841-0040', '(31) 98696-2152', '', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(98, 'empreendimento', 13, 'Cantina Delícias da Serra', '', 'http://localhost/mata/wp-content/uploads/2017/02/foto-comida-delicias.jpg', '', '', '', 'Uma casinha familiar com comidas típicas de Roça, com café da manhã e almoço. Atende somente com agendamento.\r\n', 'R. José Justo de Arruda, 688, Santa Vitoria dos Cocais, Coronel Fabriciano - MG', 4, '', '(31) 3841-0045', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(99, 'empreendimento', 13, 'Hortaliças do Rancho', '', 'http://localhost/mata/wp-content/uploads/2017/02/rancho.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/hortaliçasdo-rancho-restaurante.jpg', '', 'Bar e Restaurante com alimentos orgânicos produzidos com qualidade e preservando o meio ambiente. A Hortaliças do Rancho sempre pensa na saúde e bem estar de todos.', 'Sitio Córrego do Rancho, Cocais de Cima, Coronel Fabricano - MG', 4, 'Gilson Lima', '(31) 99362-6600', '', 'gilsonlima1988@hotmail.com', 'https://www.facebook.com/Hortali%C3%A7as-do-Rancho-686661154683239/?ref=ts&fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(100, 'empreendimento', 48, 'Padaria do Cocais de Baixo', '', 'http://localhost/mata/wp-content/uploads/2017/02/paes.jpg', '', '', '', 'Padaria com venda de pães e outros.', 'Cocais de Baixo', 4, '', '(31) 99411-3581', '(31) 99411-3581', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1) ;
INSERT INTO `wp_aofoc_dados` ( `id`, `modalidade`, `cat_id`, `nome`, `url_icone`, `url_img1`, `url_img2`, `url_img3`, `url_img4`, `descricao`, `endereco`, `cidade_id`, `resp_contato`, `telefone`, `whatsapp`, `email`, `facebook`, `tipo`, `site`, `dt_inicio`, `dt_fim`, `hr_inicio`, `hr_fim`, `valor_entrada`, `aprovado`) VALUES
(101, 'empreendimento', 13, 'Maria das Graças do Geneval', '', 'http://localhost/mata/wp-content/uploads/2017/02/fogao-a-lenha.jpg', '', '', '', 'Bar e restaurante. Atende grupos para café da manhã e almoço por agendamento prévio. Comidas típicas no fogão a lenha. Simplicidade e sabor de cozinha de roça.\r\n', 'Rua José Justo de Arruda, Cocais de Baixo , Coronel Fabriciano - MG', 4, 'Maria das Graças ', '(31) 3841-0045', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(102, 'empreendimento', 11, 'Maria do Deca', '', 'http://localhost/mata/wp-content/uploads/2017/02/broa-de-fuba.jpg', '', '', '', 'Bar e quitanda. Serve almoço por encomenda, tem biscoitos, bebidas e porções.\r\n', 'Rua Jose Justo de Arruda, 412 Cocais de Baixo, Coronel Fabriciano - MG', 4, 'Maria ', '(31) 3841-0013', '(31) 97514-9115', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(103, 'empreendimento', 11, 'Boteco do José Arruda', '', 'http://localhost/mata/wp-content/uploads/2017/02/torresmo.jpg', '', '', '', 'Boteco, sinuca, torresmo e salgados.\r\n', 'Cocais de Baixo, Coronel Fabriciano - MG', 4, '', '(31) 3841-0064', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(104, 'empreendimento', 11, 'Bar do José Domingo / Ponto de Táxi', '', 'http://localhost/mata/wp-content/uploads/2017/02/PINGA-COM-TORRESMO.jpg', '', '', '', 'Poções e bebidas. Fica em frente ao campo de futebol, tem sinuca e pinga da boa. Único ponto de táxi no Cocais.\r\n', 'Rua Jose Justo de Arruda, 122, Cocais de Baixo, Coronel Fabriciano - MG', 4, 'José Domingo', '(31) 3841-0026', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(105, 'empreendimento', 13, 'Churrascaria Encantado', '', 'http://localhost/mata/wp-content/uploads/2017/02/churrascaria-encantado.jpg', '', '', '', 'A Churrascaria Encantado de Coronel Fabriciano, situada na Avenida Tancredo Neves, 625, no bairro Todos os Santos, está aberta diariamente de 7:00 à meia-noite. Oferece a seus clientes um ambiente climatizado, com uma área fechada para reservas de até 12 pessoas, playground para as crianças e estacionamento. Temos Rodízio, self- service, tira-gostos, porções, à la carte, sobremesas, bebidas variadas, chope e vinhos.\r\n', 'Av. Tancredo Neves, 625, Nossa Senhora da Penha, Coronel Fabriciano - MG', 4, '', '(31) 3841-4147', '(31) 98872-5180', 'churrascariaencantado@hotmail.com', '', 'onde_comer', 'http://www.churrascariaencantado.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(106, 'empreendimento', 13, 'Churrasqueijos Peçanha', '', 'http://localhost/mata/wp-content/uploads/2017/02/churrasqueijos.jpg', '', '', '', 'Restaurante.', 'Av. Magalhães Pinto, 166, Santo Elói, Coronel Fabricano - MG', 4, 'Edmilson Peçanha', '(31) 3846-2916', '(31) 98629-2740', 'churrasqueijos@gmail.com', 'https://www.facebook.com/profile.php?id=100009500272969', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(107, 'empreendimento', 11, 'Bis Lanches', '', 'http://localhost/mata/wp-content/uploads/2017/02/bis-lanches.jpg', '', '', '', 'Bar e lanchonete.', 'Av. Magalhães Pinto, 115, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3842-1334', '', 'bislanches@hotmail.com', 'https://www.facebook.com/bislanches.fabriciano', 'onde_comer', 'http://www.bislanches.com', NULL, NULL, NULL, NULL, NULL, 1),
(108, 'empreendimento', 49, 'DudAçaí', '', 'http://localhost/mata/wp-content/uploads/2017/02/dudacai.jpg', '', '', '', 'Lanchonete, vendas de Açaí.', 'Av. Geraldo Inácio, 08, Melo Viana, Coronel Fabriciano - MG', 4, '', '(31) 3667-4947', '', 'dudacaifabri@gmail.com', 'http://www.facebook.com/dudacai', 'onde_comer', 'http://www.dudacai.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(109, 'empreendimento', 11, 'DinosArt Bar', '', 'http://localhost/mata/wp-content/uploads/2017/02/a-casa-vista-de-fora.jpg', '', '', '', 'Restaurante e bar com programação diversificada, música ao vivo e petiscos deliciosos.', 'Rua Angélica, 103, Centro, Coronel Fabriciano - MG', 4, '', '(31) 98566-0681', '(31) 98528-1361', 'dinoartbar@gmail.com', 'https://www.facebook.com/DinosArtBar/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(110, 'empreendimento', 49, 'Mídia Hamburgueria', '', 'http://localhost/mata/wp-content/uploads/2017/02/midia-hamburgueria.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/midia-hambur.jpg', '', 'Lanchonete.', 'Av. Magalhães Pinto, 1706, Melo Viana, Coronel Fabriciano - MG', 4, '', '(31) 98561-7673', '(31) 98561-7673', 'midiamanel@gmail.com', 'https://www.facebook.com/midiahamburgueria/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(111, 'empreendimento', 49, 'Só Sucos e Vitaminas', '', 'http://localhost/mata/wp-content/uploads/2017/02/só-sucos.jpg', '', '', '', 'Lanchonete Só Sucos e Vitaminas é uma franquia especializada em sucos naturais feitos somente com frutas in natura. Completando o nosso mix com o creme de Açaí.\r\n', 'Rua Coronel Silvino Perreira, Coronel Fabriciano - MG', 4, '', '(31) 98040-0361', '(31) 98040-0361', 'sosucosevitaminas@gmail.com', 'https://www.facebook.com/sosucosevitaminasoficial/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(112, 'empreendimento', 13, 'Garfo De Ouro', '', 'http://localhost/mata/wp-content/uploads/2017/02/GARFO-DE-OURO.jpg', '', '', '', 'Restaurante e buffet.', 'Praça Louis Ensch, 86, Centro, Coronel Fabriciano - MG', 4, 'Úrsula Margarida', '(31) 98848-5167', '(31) 98506-6236', '', 'https://www.facebook.com/garfodouro.buffet', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(113, 'empreendimento', 13, 'Agostinho Lanches', '', 'http://localhost/mata/wp-content/uploads/2017/02/agostinho-lanches.jpg', '', '', '', 'Restaurante, lanchonete fast-food e cafeteria.', 'Rua Alipio José da Silva, 341, Surinam, Coronel Fabriciano - MG', 4, '', '(31) 3842-7721', '(31) 98893-6738', 'agostinholanches@gmail.com', 'https://www.facebook.com/AgostinhoLanches/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(114, 'empreendimento', 49, 'Amarelinho Lanches', '', 'http://localhost/mata/wp-content/uploads/2017/02/amarelinho.jpg', '', '', '', 'Lanchonete e hamburgueria.', 'Av. Magalhães Pinto, 2458, Melo Viana, Coronel Fabricano - MG', 4, '', '(31) 3846-2634', '', '', 'https://www.facebook.com/pages/Amarelinho-Lanches/123381624524525?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(115, 'empreendimento', 13, 'Aroma Restaurante', '', 'http://localhost/mata/wp-content/uploads/2017/02/aroma.jpg', '', '', '', 'Restaurante e buffet.', ' Rua 12 de Outubro, 21, Loja 4, Centro, Coronel Fabricano - MG', 4, '', '(31) 3841-2468', '', 'aromarestaurante@hotmail.com', 'https://www.facebook.com/aromafabri/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(116, 'empreendimento', 11, 'Bar do Luciano', '', 'http://localhost/mata/wp-content/uploads/2017/02/luciano.jpg', '', '', '', 'Ambiente que serve bebidas e conta com serviço de tele-entrega de frangos assados. Ambiente bom para grupos, bom para crianças, mesas ao ar livre. Aceita reservas. Clientes sem reserva são bem-vindos.', 'Av. Magalhães Pinto, 1287, Melo Viana, Coronel Fabricano - MG', 4, 'Luciano', '(31) 3841-1969', '', 'bardolucianoltda@hotmail.com', 'https://www.facebook.com/Bardolucianofabriciano/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(117, 'empreendimento', 13, 'Cantina do Pedrinho', 'http://localhost/mata/wp-content/uploads/2017/02/logo-cantina.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/cantina-do-pedrinho.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/pedrinho.jpg', '', 'Restaurante e bar com caldos e porções. Ambiente super agradável, ótima localização.', 'Rua Quintino Alves, 337, Nazaré, Coronel Fabriciano - MG', 4, 'Pedrinho', '(31) 3842-3801', '', '', 'https://www.facebook.com/CantinadoPedrinho/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(118, 'empreendimento', 50, 'Pizzaria Capannone', 'http://localhost/mata/wp-content/uploads/2017/02/logo-capanonne.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/capannone.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/pizzaria-capannone.jpg', '', 'Pizzaria.', ' Av. Portugal, 285, Santa Cruz, Coronal Fabriciano - MG', 4, 'Nilton Célio', '(31) 3846-7887', '', 'niltoncelio.capannone@yahoo.com', 'https://www.facebook.com/Pizzaria-Capannone-225174614293358/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(119, 'empreendimento', 48, 'Premialy', '', 'http://localhost/mata/wp-content/uploads/2017/02/Premialy.jpg', '', '', '', 'Somos uma empresa jovem, dinâmica, resultante da liderança empreendedora e da abrangente experiência do seu fundador, o engenheiro e administrador de empresas Antônio Eugênio do Socorro Fernandes, atuante no setor de Panificação e Confeitaria há mais de duas décadas. A Premialy, idealizada e sustentada por sólidos valores, como competência, integridade e responsabilidade social, é um empreendimento bem sucedido, sendo seus pontos fortes: qualidade, flexibilidade, agilidade, confiabilidade e produtividade em tudo que fazemos, requisitos indispensáveis para atender às exigências do mundo atual.\r\n', 'Av. Magalhães Pinto, 1612, Melo Viana, Coronel Fabriciano - MG', 4, 'Antônio Eugênio', '(31) 3846-9030', '', 'premialy@gmail.com', 'https://www.facebook.com/premialy/', 'onde_comer', 'http://www.premialy.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(120, 'empreendimento', 11, 'Pimenta de Cheiro', '', 'http://localhost/mata/wp-content/uploads/2017/02/pimenta.jpg', '', '', '', 'Somos Pimenta de Cheiro. Bar e restaurante localizado em um sítio, em contato direto com a natureza, com motivos rústicos, comida da melhor qualidade, bebida na temperatura certa e um atendimento prá lá de diferenciado. Aos domingos, teremos almoço com cardápios especiais. Música ao vivo todas as sextas e sábados.', 'Alameda, 152, Nova Tijuca, Coronel Fabriciano - MG', 4, 'Sandro Siman', '(31) 98228-8686', '', 'pimentadecheiro11@gmail.com', 'https://www.facebook.com/pimenta.decheiro.96?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(121, 'empreendimento', 51, 'Hamburgueria Chilis Mexicano', '', 'http://localhost/mata/wp-content/uploads/2017/02/chilis.jpg', '', '', '', 'Hamburgueria Chilis Mexicano. Culinária TexMex e hambúrgueres especiais em Coronel Fabriciano.\r\n', 'Av. Magalhães Pinto, 1041, Giovanini, Coronel Fabriciano - MG', 4, '', '(31) 3841-4342', '', '', 'https://www.facebook.com/chilis.hamburgueria/', 'onde_comer', ' https://www.chilis.net.br', NULL, NULL, NULL, NULL, NULL, 1),
(122, 'empreendimento', 13, 'Angra Restaurante', 'http://localhost/mata/wp-content/uploads/2017/02/angra1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/angra.jpg', '', '', '', 'Restaurante e buffet. Comida caseira, variada, de excelente qualidade e com preço justo. Estamos localizados no centro de Coronel Fabriciano. De fácil acesso e com área de recreação.', 'Rua Ipanema, 16, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3842-5570', '(31) 98820-9607', 'angela-ferreira@uol.com.br', 'https://www.facebook.com/restauranteangra/?fref=ts', 'onde_comer', 'https://www.angrarestaurante.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(123, 'empreendimento', 11, 'Bar da Renata Espeteria', 'http://localhost/mata/wp-content/uploads/2017/02/renata-logo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/renata-1.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/renata-2.jpg', '', 'Ambiente aconchegante, pessoas bonitas, pratos finos, tira-gostos, caldos, coquetéis, cerveja SEMPRE GELADA , música ao vivo, som ambiente.', 'Rua Angélica, 117, Centro, Coronel Fabriciano - MG', 4, 'Renata ', '(31) 3667-0785', '', '', 'https://www.facebook.com/renataespeteria/?fref=ts', 'onde_comer', 'http://www.renataespeteria.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(124, 'empreendimento', 11, 'Ôhh de Casa', 'http://localhost/mata/wp-content/uploads/2017/02/ohh-de-casa-2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/ohh-de-casa1.jpg', '', '', '', 'Pub bar ao céu aberto. O mais novo espaço em Coronel Fabriciano e região para seu entretenimento. Um lugar agradável em que você tem a liberdade de escolher seu tira-gosto tipicamente mineiro. ', 'Rua Efrem Macedo, 691, Professores, Coronel Fabriciano - MG', 4, '', '(31) 2021-0030', '', '', 'https://www.facebook.com/ohhdecasa/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(125, 'empreendimento', 13, 'Cone’s', '', 'http://localhost/mata/wp-content/uploads/2017/02/CONES.jpg', '', '', '', 'Restaurante, lancheria e choperia. Deliciosos pratos executivos, porções (frango frito empanado, batata com queijo e bacon e carnes na chapa) e também refeições (omelete recheado, mexidão e wrap integral), além, claro, do chope e cerveja  sempre gelados!', 'Rua São Sebastião, 546, Santa Helena, Coronel Fabriciano - MG', 4, '', '(31) 3842-2106', '(31) 98610-5418', '', 'https://www.facebook.com/conescel.fabriciano/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(126, 'empreendimento', 13, 'Tori Culinária Japonesa', 'http://localhost/mata/wp-content/uploads/2017/02/tori-fabriciano.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/TORI.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/TORI-1.jpg', '', 'Comida japonesa e frutos do mar.', 'Rua Itaparica, 1361, Santo Eloi, Coronel Fabriciano - MG', 4, '', '(31) 3846-2606', '', 'contatotori@hotmail.com', 'https://www.facebook.com/toriiculinariajaponesa/', 'onde_comer', 'http://www.torii.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(127, 'empreendimento', 11, 'WB Pizzaria e Restaurante', '', 'http://localhost/mata/wp-content/uploads/2017/02/wb-restaurante-e-pizzaria.jpg', '', '', '', 'Bar, restaurante e pizzaria.', 'Av. Magalhães Pinto, 843, Giovanini, Coronel Fabriciano - MG', 4, '', '(31) 3842-2031', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(128, 'empreendimento', 49, 'Point do Açaí', '', 'http://localhost/mata/wp-content/uploads/2017/02/o-point-açai.jpg', '', '', '', 'Lanchonete e restaurante.', 'Av. Magalhães Pinto, 902, Giovanini, Coronel Fabriciano - MG', 4, '', '(31) 3841-1756', '(31) 98716-5027', '', 'https://www.facebook.com/opointdoacai/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(129, 'empreendimento', 50, 'Pizzaria do Jayme', '', 'http://localhost/mata/wp-content/uploads/2017/02/pizzaria-do-jaime.jpg', '', '', '', 'Fundada em 1975 em Coronel Fabriciano e inaugurada em Ipatinga em 2001, a Pizzaria do Jayme se orgulha em ser pioneira no Vale do Aço no serviço de entrega. Sempre se adaptando às necessidade do mercado e com um conceito diferenciado na criação da massa, na elaboração do molho e na fabricação da muçarela, desenvolveu um alto padrão de qualidade, agregado a um variado cardápio, ambiente diferenciado e excelente atendimento. Esse é o segredo da nossa tradição.', 'Rua Renó, 51, Nova Tijuca, Coronel Fabriciano - MG', 4, 'Jaime', '(31) 3842-5100', '', 'contato@pizzariadojayme.com.br', 'https://www.facebook.com/pages/Pizzaria-do-Jayme-Cel-Fabriciano/199892773433769?fref=ts', 'onde_comer', 'http://www.pizzadojayme.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(130, 'empreendimento', 12, 'Paris Café', 'http://localhost/mata/wp-content/uploads/2017/02/paris-café.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/paris-cafe.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/paris-cafe-1.jpg', '', 'Café, restaurante e lanchonete. Venda de caldos, hambúrguer, macarrão, porções e muito mais.\r\n', 'Av. Magalhães Pinto, 1542, Giovanini, Coronel Fabriciano - MG', 4, '', '(31) 3841-5704', '', 'pariscafe2010@hotmail.com', 'https://www.facebook.com/pariscafe2010/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(131, 'empreendimento', 13, 'Sushi Black', 'http://localhost/mata/wp-content/uploads/2017/02/sushi-logo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sushi.jpg', '', '', '', 'Sushi Delivery', 'Av. Brasília, 1730, Amaro Lanari, Coronel Fabriciano - MG', 4, '', '(31) 3619-1118', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(132, 'empreendimento', 13, 'Tarso’s Restaurante', '', 'http://localhost/mata/wp-content/uploads/2017/02/tarso-restaurante.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/tarso.jpg', '', 'Aberto todos os dias com uma deliciosa comida caseira acompanhada de churrasco e comida japonesa. Serve café da manhã. Aceita reservas e Buffet.', 'Rua Maria Matos, 281, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3842-1327', '', 'tarsosrestaurante@gmail.com', 'https://www.facebook.com/Tarsos-Restaurante-177671599067104/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(133, 'empreendimento', 13, 'Rogerio’s Grill', '', 'http://localhost/mata/wp-content/uploads/2017/02/rogerios.jpg', '', '', '', 'Restaurante especializado em traíras desossadas.', 'Rua Maceió, 382, Amaro Lanari, Coronel Fabriciano - MG', 4, '', '(31) 3842-0257', '', '', 'https://www.facebook.com/pages/Rogerios-Grill/460640417281882?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(134, 'empreendimento', 53, 'Amaretto Sorveteria', '', 'http://localhost/mata/wp-content/uploads/2017/02/amareto.jpg', '', '', '', 'Sorveteria e lanchonete.', 'Rua Maria Matos, 145, Coronel Fabriciano - MG', 4, '', '(31) 98742-7968', '(31) 98742-7968', '', 'https://www.facebook.com/Amaretto-Sorveteria-E-Lanchonete-598707443559498/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(135, 'empreendimento', 13, 'Restaurante Amigão', '', 'http://localhost/mata/wp-content/uploads/2017/02/restaurante-amigao1.jpg', '', '', '', 'Restaurante com comida caseira, servindo marmitex e self service. Localizado na rodoviária de Coronel Fabriciano.', 'Av. Pedro Nolasco, 400, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3841-1799', '(31) 3841-1799', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(136, 'empreendimento', 11, 'Quintal do Zé Zequinha', '', 'http://localhost/mata/wp-content/uploads/2017/02/quintal-do-sr-zequinha.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/quintal-do-sr-zequinha-1.jpg', '', 'Bar e restaurante.', 'Av. Magalhães Pinto, 2220, Melo Viana, Coronel Fabriciano - MG', 4, '', '(31) 98527-8884', '(31) 98527-8884', '', 'https://www.facebook.com/quintaldosozequinha/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(137, 'empreendimento', 13, 'Restaurante Metropolitano', '', 'http://localhost/mata/wp-content/uploads/2017/02/restaurante-metropolitano.jpg', '', '', '', 'Culinária brasileira, espaço aconchegante para reuniões corporativas, crianças e viajantes. Serviço de garçom e mesas ao ar livre.', 'Av. Julita Pires Bretas, 644, Bom Jesus, Coronel Fabriciano - MG - CEP 35170-026', 4, 'Benedito Pacífico', '(31) 3841-9000', '', 'gerencia@hotelmetropolitano.com.br', 'https://www.facebook.com/pg/RestauranteMetropolitano/about/?ref=page_internal', 'onde_comer', 'http://www.hotelmetropolitano.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(139, 'empreendimento', 53, 'Sorvetes Milky', '', 'http://localhost/mata/wp-content/uploads/2017/02/milk.jpg', '', '', '', 'Sorveteria Milky tem grande presença no leste mineiro e hoje, com mais de 150 pontos de distribuição, tem se tornado cada vez mais reconhecida no mercado.', 'Rua Marycil, 171, Alipinho, Coronel Fabriciano - MG', 4, '', '(31) 3846-6786', '', 'sorvetesmilky@gmail.com', 'https://www.facebook.com/SorvetesMilky/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(140, 'empreendimento', 11, 'Barraca do Joel', '', 'http://localhost/mata/wp-content/uploads/2017/02/joel.jpg', '', '', '', 'Bar com petiscos variados. ', 'Av. Presidente Tancredo Neves, 3680, Caladinho de Baixo, Coronel Fabriciano - MG', 4, 'Joel', '(31) 3842-2132', '', 'barracadojoel@gmail.com', 'https://www.facebook.com/barracadojoel/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1) ;
INSERT INTO `wp_aofoc_dados` ( `id`, `modalidade`, `cat_id`, `nome`, `url_icone`, `url_img1`, `url_img2`, `url_img3`, `url_img4`, `descricao`, `endereco`, `cidade_id`, `resp_contato`, `telefone`, `whatsapp`, `email`, `facebook`, `tipo`, `site`, `dt_inicio`, `dt_fim`, `hr_inicio`, `hr_fim`, `valor_entrada`, `aprovado`) VALUES
(141, 'empreendimento', 11, 'Nosfrades Sushi Grill', '', 'http://localhost/mata/wp-content/uploads/2017/02/nosfrades-1.jpg', '', '', '', 'Bar e restaurante japonês.', 'Rua Itaparica, 474, Giovanini, Coronel Fabriciano - MG', 4, '', '(31) 3841-3535', '', '', 'https://www.facebook.com/nosfrades.sushigrill/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(142, 'empreendimento', 11, 'Frango e Cia', '', 'http://localhost/mata/wp-content/uploads/2017/02/Frango-e-cia.jpg', '', '', '', 'Bar esportivo. Trabalhamos com assados de frango, costelas bovina e suína, lombo recheado, pernil, rocambole de frango recheados, carnes congeladas em geral, pães de alho, churrasquinhos diversos, cervejas comuns e artesanais, cachaças de sabores e especiais.', 'Rua São Sebastião, 546, Santa Helena, Coronel Fabriciano - MG', 4, '', '(31) 3846-0619', '', '', 'https://www.facebook.com/pg/FrangoeCiaFabriciano/about/?ref=page_internal', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(143, 'empreendimento', 49, 'Pantanal Lanches', '', 'http://localhost/mata/wp-content/uploads/2017/02/PANTANAL.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/PANTANAL-1.jpg', '', 'Lanchonete fast-food, salgados congelados e fritos na hora, sucos diversos.', 'Rua Maria Matos, 418, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3842-2407', '', '', 'https://www.facebook.com/Pantanal-Lanches-1236221389755638/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(144, 'empreendimento', 11, 'Decio Lanches Bar', '', 'http://localhost/mata/wp-content/uploads/2017/02/picanha-e-fritas.jpg', '', '', '', 'Bar e lanchonete com ambiente totalmente familiar, porção com fritas, picanha sensacional e bebida sempre no ponto.', 'Rua Londres, 478, Santa Terezinha, Coronel Fabriciano - MG', 4, '', '(31) 3841-3968', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(145, 'empreendimento', 11, 'Itaoca Restaurante', '', 'http://localhost/mata/wp-content/uploads/2017/02/iaoca.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/itaoca1.jpg', '', 'Bar e restaurante. Fogão a lenha, traíra desossada, risoto de camarão e pratos típicos mineiros.', 'Rua Minas Gerais, 2.898, Amaro Lanari, Coronel Fabriciano - MG', 4, '', '(31) 3824-7086', '(31) 9712-6248', '', 'https://www.facebook.com/pages/Itaoca-Restaurante/153108644868254?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(146, 'empreendimento', 13, 'Restaurante e Lanchonete Arte Grau', '', 'http://localhost/mata/wp-content/uploads/2017/02/ARTGRAL.jpg', '', '', '', 'Restaurante e Lanchonete Artgral, dentro da faculdade Unileste. Aberto de segunda a sexta-feira de 7:00 às 22:00 horas e aos sábados das 7:00 às 15:00 horas. Com cardápio variado de carnes e saladas (aberto ao público).', 'Av. Tancredo de Almeida neves, 3500, Universitário, Coronel Fabriciano - MG', 4, '', '(31) 3846-5735', '', '', '', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(147, 'empreendimento', 13, 'Restaurante Pastelão', '', 'http://localhost/mata/wp-content/uploads/2017/02/O-PASTELAO.jpg', '', '', '', 'Ambiente climatizado e com churrasco. O restaurante e lanchonete O Pastelão, há mais de nove anos no mercado, oferece deliciosos pratos da culinária mineira, lanches, buffet e coffee break.', 'Rua Coronel Silvino Pereira, 138, Centro, Coronel Fabriciano - MG', 4, '', '(31) 3842-3524', '', 'restauntepastelao.cf@gmail.com', 'https://m.facebook.com/Restaurante-Pastel%C3%A3o-593021064226198/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(148, 'empreendimento', 54, 'Set Projeções e Produções de Filmes Ltda ', '', 'http://localhost/mata/wp-content/uploads/2017/02/shirley-foto.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/japonesa-2016.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/vinicius.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/material-2014.jpg', 'Produtora cultural. Organização, promoção de espetáculos artísticos e eventos culturais, elaboração, agenciamento, produção e execução de projetos e aluguel de equipamentos artísticos.', 'Rua Visconde de Mauá, 140, Cidade Nobre, Ipatinga - MG', 5, 'Shirley Maclane ', '(31) 99322-0062', '(31) 98515-1174', 'shirleymaclane@hotmail.com', 'https://www.facebook.com/shirley.maclane.35?fref=ts', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(149, 'empreendimento', 54, 'AaZ Produções e Artes', 'http://localhost/mata/wp-content/uploads/2017/02/logo-aaz-6.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/CAMINHAO-3.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/EXIBIÇAO-6.jpg', '', 'Organização e promoção de espetáculos artísticos e eventos culturais, elaboração, agenciamento, produção e execução de projetos. A AaZ Produções e Artes vem se dedicando, prioritariamente, à sétima arte, através de mostras abertas e itinerantes de cinema nacional, buscando a valorização das diversas linguagens do cinema, com filmes de animação, documentários e ficção.', 'Rua Pedras Preciosas, 225, loja B, Iguaçu, Ipatinga - MG', 5, 'Alexandre Fernandes Luna', '(31) 99406-2150', '', 'alexandrefluna@yahoo.com.br', 'https://www.facebook.com/AaZProducoeseArtes/?pnref=lhc', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(150, 'empreendimento', 15, 'Clube de Laser e Diversão Cachoeira Paraíso', '', 'http://localhost/mata/wp-content/uploads/2017/02/PARAÍSO-ELVIRA-NASCIMENTO-1.jpg', '', '', '', 'O Clube de Laser e Diversão Cachoeira Paraíso possui várias piscinas naturais, toboágua, churrasqueira, banheiros femininos e masculinos, banheiros para deficientes, tirolesa, área de peteca, campo de futebol, área de camping, casa estilo fazenda para final de semana, restaurante - servindo refeições, bebidas, porções e diversos salgados - música ao vivo, área para eventos, áreas livres para visitantes fotografarem e fazerem book, reuniões e confraternizações. ', 'Zona Rural de santana do Paraiso', 6, 'Marcilene', '(31) 99185-8567', '', 'cachoeiradecimadoparaiso@gmail.com', 'http://Cachoeira Paraíso/Cachoeira de Cima', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(151, 'empreendimento', 14, 'Centro Cultural Usiminas ', '', 'http://localhost/mata/wp-content/uploads/2017/02/CCU_Nilmar-Lage-8.jpg', '', '', '', 'Localizado em Ipatinga, onde se encontra a planta siderúrgica da Usiminas, o Centro Cultural Usiminas foi construído em 1998 e tem a singularidade de estar integrado a um shopping center. Está localizado em um terreno de 23 mil metros quadrados, com uma área construída de 5,6 mil metros quadrados. Sua localização beneficia e permite fácil acesso, através das vias de escoamento do tráfego que atendem Ipatinga, região e demais localidades do Estado. O Centro Cultural Usiminas é constituído pelos espaços: Teatro, Foyer, Galeria de Arte Hideo Kobayashi, Biblioteca Central de Ideias, Jardim Interno e Jardim Externo. O Centro Cultural recebe também eventos de diversas áreas, sendo também uma referência no segmento de turismo de negócios. ', 'Av. Pedro Linhares Gomes, 3900, Anexo ao Shopping Vale do Aço, Ipatinga - MG', 5, 'Centro Cultural Usiminas', '(31) 3822-2215', '', '', '', 'atrativo', 'http://www.institutoculturalusiminas.com', NULL, NULL, NULL, NULL, NULL, 1),
(152, 'empreendimento', 17, 'Caminhada e Vivência Rural Outeiros de Minas', '', 'http://localhost/mata/wp-content/uploads/2017/02/outeiro-de-MG-5.jpg', '', '', '', 'Para a Caminhada Rural Outeiros de Minas o que vale é o prazer em fazê-la. Os caminhantes são recebidos na comunidade rural com um típico café da manhã. Logo após são conduzidos pelas estradas e trilhas da região, sendo a todo momento motivados a experimentar vivências peculiares aos ambientes naturais, onde conhecem e desfrutam de paisagens, além de promover momentos de harmonia e interiorização e o reencontro com a natureza. Ao retornarem, os participantes se deliciam com pratos da culinária local que compõem o almoço na roça. As Vivências Rurais são realizadas em sua sede, Sítio Recanto Vovô Teixeira e Tribuna-Ipatinga em data pré-agendada ', 'Rua Dionísio, 295, Bela Vista, Ipatinga - MG', 5, 'Maria José e Ulisses', '(31) 98865-5212', '(31) 3823-5211', 'outeirosdeminas@gmail.com', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(153, 'empreendimento', 17, 'IPATINGA RURAL ROTEIRO TURÍSTICO ', '', 'http://localhost/mata/wp-content/uploads/2017/02/parque.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/agifipa.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/maria-jose.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/f5.jpg', 'Caminhada, rapel, oficinas de artesanato e culinária, banhos de cachoeira, degustação de comida típica mineira.', 'Zona Rural de Ipatinga', 5, 'Janete', '(31) 98865-5212', '', 'ipatingaruralrt@gmail.com', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(154, 'empreendimento', 11, 'Abracadabra', '', 'http://localhost/mata/wp-content/uploads/2017/02/abracadabra.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/abracadabra1.jpg', '', 'Pioneiro no bairro Cidade Nobre, estamos há 19 anos em funcionamento, oferecendo um ambiente familiar e tranquilo para nossos clientes. Temos um cardápio variado em carnes nobres, picanha, filé mignon, pizzas, peixes, carne de rã, camarão, caldos, pratos executivos e uma cerveja super gelada. Temos wi-fi, salão climatizado, playground e fraldário.', ' Rua José do Patrocínio,  238, Cidade Nobre, Ipatinga - MG', 5, 'Itamar ', '(31) 3822-3093', '', '', 'https://www.facebook.com/Abracadabra-219070294775576/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(156, 'empreendimento', 11, 'Don Patricio', 'http://localhost/mata/wp-content/uploads/2017/02/dom-patricio.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/don-patricio1.jpg', '', '', '', 'Casa de cervejas especiais com um cardápio impecável de tira-gostos! Templo da cerveja Brüder, a primeira microcervejaria artesanal do Vale do Aço.', 'Centro Comercial do Cariru', 5, '', '(31) 99464-0096', '', 'donpatricio@cervejariabruder.com.br', 'https://www.facebook.com/patricio.don/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(157, 'empreendimento', 11, 'Bruder Butiquim', 'http://localhost/mata/wp-content/uploads/2017/02/bruder-butiquim.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/bruder-butiquim-2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/bruder.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/bruder-butiquim.-1-jpg.jpg', '', 'Templo da Cervejaria Brüder, a primeira microcervejaria artesanal do Vale do Aço. Cardápio variado e bebidas de qualidade é o nosso forte!', 'Rua Dom Pedro II, 185, Cidade Nobre, Ipatinga - MG', 5, '', '(31) 99148-0069', '', '', 'https://www.facebook.com/bruderbutiquim/', 'onde_comer', 'http://www.cervejariabruder.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(158, 'empreendimento', 11, 'Bar e Choperia do Romero ', '', 'http://localhost/mata/wp-content/uploads/2017/02/bar-romero-1.jpg', '', '', '', 'Ambiente familiar e aconchegante. Cardápio variado. Servimos todos os pratos concorrentes nas edições do Festival Comida de Buteco em que fomos campeões (2012, 2013, 2015) ou vice-campeões (2014). Primeiro campeão regional do Vale do Aço (2015).', 'Rua Fraternidade, 2, Praça Central do Novo Cruzeiro, Ipatinga - MG', 5, 'Romero ', '(31) 98501-1515', '', 'romerolima@oi.com.br', 'https://www.facebook.com/bardoromero', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(159, 'empreendimento', 11, 'Poita e Puça ', 'http://localhost/mata/wp-content/uploads/2017/02/poita-e-puça-2.png', 'http://localhost/mata/wp-content/uploads/2017/02/poita-2.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/poita-1.jpg', '', 'Bar com ambiente rústico e agradável para você passar momentos tranquilos com ótimos tira-gostos, cervejas no ponto (inclusive especiais) e chope. Ambiente para seu apurado gosto musical. Nas terças-feiras, a partir das 20:30, música ao vivo com os grandes talentos da região e, nas quintas-feiras, forró.', ' Rua Campinas, 400, Veneza I, Ipatinga - MG', 5, 'Sônia Emiko Esaki', '(31) 99998-5478', '', '', 'https://www.facebook.com/PoitaPuca/?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(160, 'empreendimento', 11, 'Sal e Brasa', '', 'http://localhost/mata/wp-content/uploads/2017/02/sal-e-brasa.jpg', '', '', '', 'Barzinho com música ao vivo, churrasco e futebol. Transmitimos todos os campeonatos e lutas do UFC. Servimos o exclusivo churrasco de cupim casqueirado, a tradicional picanha nobre e deliciosas porções à la carte. Venha se divertir no melhor ponto de encontro do Vale do Aço e tomar aquela torre de chope trincando de gelada! Aceitamos cartões de refeição.', 'Rua Tomé Souza, 405, Bom Retiro, Ipatinga - MG', 5, '', '(31) 3823-4708', '(31) 8872-3279', 'salebrasa@gmail.com', 'https://www.facebook.com/Sal-e-Brasa-Bom-Retiro-244228862298747/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(161, 'empreendimento', 11, 'Ponto do Acaraje', '', 'http://localhost/mata/wp-content/uploads/2017/02/ponto-do-acarajé.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/ponto-do-acarajé-3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/ponto-do-acarajé-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/ponto-do-acarajé-3-1.jpg', 'Bar e restaurante. Um barzinho familiar ao ar livre, onde as pessoas podem encontrar a culinária baiana, cerveja gelada e ótimo atendimento.', 'Av. Pero Vaz de Caminha, esquina da Artur Bernades', 5, 'Elaine Brito e Nelson ( Baiano)', '(31) 98831-3216', '', '', 'https://www.facebook.com/PontoDoAcarajeIpatingaMg/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(162, 'empreendimento', 11, 'Santropero', 'http://localhost/mata/wp-content/uploads/2017/02/santropero.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/santropeiro2.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/santropeiro-1.jpg', '', 'Restaurante, bar e chopperia com espaço para apreciar uma boa prosa, chopp gelado e pratos deliciosos e com uma programação musical diversificada durante toda a semana.', 'Av Pero Vaz de Caminha 68', 5, '', '(31) 3823-4106', '', '', 'https://www.facebook.com/Santropero/?fref=ts', 'onde_comer', 'http://www.santropero.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(163, 'empreendimento', 11, 'Bar Galpão', '', 'http://localhost/mata/wp-content/uploads/2017/02/galpao1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/campeao.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/galpao.jpg', '', 'O Bar Galpão completou 18 anos em 2015. É conhecido por uma maneira diferente de butecar. O bar possui títulos em todos os anos do evento gastronômico Comida Di Buteco (três vezes terceiro lugar, duas vezes vice-campeão e três vezes campeão do evento). O bar possui porções variadas, pizzas, caldos e lanches. E é diferenciado pelo seu atendimento.', 'Avenida José Fabrício Gomes, 365, Bethania, Ipatinga - MG', 5, 'Jose Wilson', '(31) 3827-3711', '', '', 'https://www.facebook.com/Bargalpaocaipira/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(164, 'empreendimento', 14, 'Capela São José dos Cocais', '', 'http://localhost/mata/wp-content/uploads/2017/02/Capela-de-São-José-Cocais.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/Capela-de-São-José-Cocais-1.jpg', '', 'A capela de São José dos Cocais foi inaugurada em 1950 na comunidade de São José dos Cocais.', ' Centro da comunidade de São José dos Cocais', 4, 'Secretaria de Governaça, Desenvolvimento Turismo e cultura', '(31) 3846-7701', '', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(165, 'empreendimento', 11, 'Avesso ', 'http://localhost/mata/wp-content/uploads/2017/02/logo-avesso.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/avesso1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/o-avesso1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/avesso-2.jpg', '', 'Pub com diveros petiscos e cervejas. Opções também de cervejas  artesanais, programação no espaço com música instrumental e afins, oficinas, bazar, exposição e troca de discos. ', ' Av. Itália, 3274, sala 101, Cariru, Ipatinga - MG', 5, 'Pedro Bastos e Claudio Letro', '(31) 3668-5569', '', 'contato@oavesso.com.br', 'https://www.facebook.com/oavesso.com.br/', 'onde_comer', 'http://www.oavesso.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(166, 'empreendimento', 14, 'Igreja Matriz São Sebastião', '', 'http://localhost/mata/wp-content/uploads/2017/02/Igreja-Matriz-de-São-Sebastião.jpg', '', '', '', 'Inaugurada na década de 1940, a Igreja Matriz de Coronel Fabriciano é o mais antigo templo religioso da região do Vale do Aço. ', 'Rua Dr. Querubino, Centro, Coronel Fabriciano - MG', 4, 'Paróquia de São Sebastião', '(31) 3841-2733', '', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(167, 'empreendimento', 11, 'Bar do Gordo', '', 'http://localhost/mata/wp-content/uploads/2017/02/bar-gordo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/figado.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/gordo.jpg', '', 'Bar com ambiente diferenciado. Lugar agradável, lanches artesanais especiais, cerveja gelada, bom atendimento e música boa.', 'Rua Mármore, 235, Iguacu, Ipatinga - MG', 5, 'Jose Milton', '(31) 8693-9698', '', '', 'https://www.facebook.com/bardogordo.ipatinga?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(168, 'empreendimento', 11, 'Ombuzzu', '', 'http://localhost/mata/wp-content/uploads/2017/02/cardapio.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/ombuzzu.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/cardapio1.jpg', '', 'Bar e Lanchonete Ombuzzu, estilo food truck, montada em um ônibus, com espaço alternativo, comida artesanal e de rua e focada na sustentabilidade. Local descontraído, aconchegante, rústico. Musica ao vivo nos finais de semana.', 'Rua Luther King, 219, Cidade Nobre, Ipatinga - MG', 5, 'Joelma Ribeiro dos Santos ', '(31) 98865-1084', '(31) 98865-1084', '', 'https://www.facebook.com/ombuzzu/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(169, 'empreendimento', 13, 'Aorta Culinária Saudável ', '', 'http://localhost/mata/wp-content/uploads/2017/02/aorta.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/aorta-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/aorta2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/aorta-espaço.jpg', 'Restaurante de comida saudável com variadas saladas, crepes, carnes e sucos. Pensando em um novo conceito, Aorta traz o que tem de novidades nesse ramo de alimentação.', ' Rua Dom Pedro II, 74 A, Cidade Nobre, Ipatinga - MG', 5, 'Mauricio Yamagata', '(31) 3617-6337', '', 'aortasaude@gmail.com', 'https://www.facebook.com/aortaculinaria/?pnref=lhc', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(170, 'empreendimento', 50, 'Pizzaria Buoni Amici', '', 'http://localhost/mata/wp-content/uploads/2017/02/buoni-amici.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/buoni-amici3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/buoni-amici-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/buono-amici4.jpg', 'Pizzaria fundada em janeiro de 2007. Destaca-se pela culinária de qualidade, atendimento acolhedor e um ambiente sofisticadamente rústico. As receitas são produzidas por um chef de cozinha com ingredientes refinados e pizzas no forno a lenha.', 'Av. Castelo Branco, 240, Horto, Ipatinga - MG', 5, '', '(31) 3824-5070', '', '', 'https://www.facebook.com/buoniamicipizzaria/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(171, 'empreendimento', 50, 'Pizzaria do Jaime C3', '', 'http://localhost/mata/wp-content/uploads/2017/02/PIZZARIA-JAIME-4.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/PIZZARIA-JAIME-1-2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/pizzaria-do-jayme3-3.jpg', '', 'Inaugurada em Ipatinga em 2001, a Pizzaria do Jayme se orgulha em ser pioneira no Vale do Aço.  A Pizzaria possui excelente vista para a cidade, salão interno climatizado e capacidade total para atender 400 pessoas sentadas. Conta também com área baby e playground com monitora de quinta a domingo, sem custo adicional. De quinta a sábado, a casa oferece música ao vivo sem cobrar couvert. O cardápio é variado, com diversos sabores de pizzas, pratos à la carte e bebidas nacionais e importadas, além de pratos infantis para fazer a alegria da criançada. São realizados também eventos particulares com cardápio diversificado e personalizado para sua confraternização. O estacionamento é privativo, com capacidade superior a 70 veículos e área de desembarque e embarque.', ' Rua Xerentes, 51, Iguaçu, Ipatinga - MG', 5, '', '(31) 3825-5100', '(31) 98726-3776', 'contato@pizzadojayme.com.br', 'https://www.facebook.com/Pizzariadojayme/?fref=ts', 'onde_comer', 'http://pizzadojayme.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(172, 'empreendimento', 50, 'Pizzaria Chaplin Cariru', '', 'http://localhost/mata/wp-content/uploads/2017/02/chaplin.jpg', '', '', '', 'Pizzaria Chaplin e restaurante self-service com uma grande variedade de pratos e pizzas.\r\nEm seus 29 anos de tradição, oferece um ótimo atendimento, com funcionários preparados para lhe atender. Venha conhecer nossos serviços.', ' Av. Itália, 2455, Cariru, Ipatinga - MG', 5, 'Sergio e Silvania', '(31) 3825-1196', '', 'chaplinpizzaria@hotmail.com', 'https://www.facebook.com/pizzariachaplin00/?fref=ts', 'onde_comer', ' http://www.clicoupizza.com/pizzariachaplinltdamg', NULL, NULL, NULL, NULL, NULL, 1),
(173, 'empreendimento', 13, 'Quintal do Peixe ', '', 'http://localhost/mata/wp-content/uploads/2017/02/quintal-do-peixe.jpg', '', '', '', 'Restaurante Quintal do Peixe, onde você encontrará a melhor traíra desossada da região, comida brasileira e frutos do mar.', 'Av. Simon Bolivar, 1259, Cidade Nobre, Ipatinga - MG', 5, '', '(31) 3822-8191', '', '', 'https://www.facebook.com/pages/Restaurante-Quintal-Do-Peixe/669370039810842', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(174, 'empreendimento', 13, 'Restaurante Dona Conceição', '', 'http://localhost/mata/wp-content/uploads/2017/02/conceicao1.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/dona-conceicao.jpg', '', 'O Restaurante Dona Conceição é uma empresa familiar criada há 20 anos. Servimos um amplo cardápio tipicamente mineiro, com pratos quentes, saladas e sobremesas que nos remetem ao sabor gostoso da infância. Venha nos fazer uma visita e desfrutar do que temos de melhor para oferecer. \r\n', 'Shopping Vale do Aço, Ipatinga - MG', 5, '', '(31) 3824-5042', '(31) 9895-9117', 'donaconceicao@donaconceicao.com', 'https://www.facebook.com/Restaurante-Dona-Concei%C3%A7%C3%A3o-1542394402723299/?fref=ts', 'onde_comer', ' http://www.donaconceicao.com/', NULL, NULL, NULL, NULL, NULL, 1),
(176, 'empreendimento', 11, 'Therapia da Cerveja', 'http://localhost/mata/wp-content/uploads/2017/02/therapia.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/therapia1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/therapia-3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/therapia2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/therapia-4.jpg', 'Pub com ótimos tira-gostos e cervejas geladíssimas. Chope ecobier e cervejas artesanais, ambiente alternativo todo decorado com objetos reciclados, programação diversificada, noite do vinil e música de qualidade. ', 'R. Salermo, 238, Bethania, Ipatinga - MG', 5, 'Ubiratan  ', '(31) 98763-1176', '', '', 'https://www.facebook.com/therapiadacerveja/', 'onde_comer', 'https://www.instagram.com/therapiadacerveja', NULL, NULL, NULL, NULL, NULL, 1),
(177, 'empreendimento', 13, 'Restaurante Tradição ', 'http://localhost/mata/wp-content/uploads/2017/02/logo-tradicao.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/restaurante-tradicao.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/tradicao-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/fachada-tradiçao.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/tradicao.jpg', 'O restaurante apresenta um serviço qualificado, sabor e tempero com base na típica comida mineira e já consagrados por seus clientes. O cardápio possui massas, grelhados e outras especialidades, contabilizando mais de 100 tipos de pratos e sobremesas. O diferencial do restaurante está nos detalhes, no investimento focado em qualidade - que se inicia na seleção dos produtos e se estende à elaboração do cardápio e ao atendimento. ', 'Av. Carlos Chagas, 294, Cidade Nobre, Ipatinga - MG', 5, 'Juscelino', '(31) 3822-3422', '', 'sac@restaurantetradicao.com.br', 'https://www.facebook.com/RestauranteTradicaoHorto/', 'onde_comer', 'http:// www.restaurantetradicao.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(178, 'empreendimento', 13, 'Honkan Sushi Goumert ', '', 'http://localhost/mata/wp-content/uploads/2017/02/honkan.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/honkan2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/honkan-1.png', '', 'Inspirado no museu nacional de Tóquio, Honkan traz a tradicional culinária japonesa e uma releitura de seus sabores como verdadeiras obras de arte! Serve rodízios à noite, além de ter um cardápio variado no almoço, com opções de saladas, sucos detox, grelhados e combos japa.', 'Av. Monteiro Lobato, 323, Cidade Nobre, Ipatinga - MG', 5, '', '(31) 3824-8313', '(31) 98693-7553', 'contato@honkan.com.br', 'https://www.facebook.com/honkangourmet/?fref=ts', 'onde_comer', 'http://www.honkan.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(179, 'empreendimento', 13, 'DOM DELIKATESSEN &  Espaço Gourmet', '', 'http://localhost/mata/wp-content/uploads/2017/02/dom1.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/dom-2.jpg', '', 'O Dom é mais do que um espaço gourmet, é um conceito de sabor! ', 'Av. Carlos Chagas, 319, Cidade Nobre, Ipatinga - MG', 5, 'Alessandro Loureiro', '(31) 3826-1026', '(31) 98881-2188', '', 'https://www.facebook.com/alessandro.loureiro.5?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(180, 'empreendimento', 13, 'Restaurante Curral  ', '', 'http://localhost/mata/wp-content/uploads/2017/02/fazenda-tradicao-principal.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/fazenda-tradicao-4.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/fazenda-tradicao3.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/restaurante-curral.jpg', 'Restaurante Curral está localizado na Fazenda Tradição, empreendimento que faz parte do Roteiro do Turismo Rural de Ipatinga. Abriga em seu interior uma cachoeira com espaços de churrasqueiras, com um cardápio variado de comida mineira e o Pico 3 Cidades, um monumento natural da região metropolitana do Vale do Aço, localizado no alto da Fazenda Tradição, que contempla as três cidades, incluindo a Serra dos Cocais.', 'Morro Escuro - Zona Rural Ipatinga', 5, 'Edvaldo Luna e Flavia Luna', '(31) 9124-8323', '(31) 9299-6207', 'hotelfazendatradicao@hotmail.com', 'https://www.facebook.com/Fazenda-Tradi%C3%A7%C3%A3o-382207441790904/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(182, 'empreendimento', 14, 'Lúdica Ateliê - Adriane Lima', '', 'http://localhost/mata/wp-content/uploads/2017/02/2-tag-frente-45-x-65.png', '', '', '', 'Ateliê de costura criativa. Fazemos bonecas e artigos têxteis personalizados.', 'Rua Prata, 21 A, Iguaçu, Ipatinga - MG', 5, 'Adriana', '(31) 99591-0248', '', 'adriane.ipatinga@gmail.com', 'http://facebook.com/ludicaatelie', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(183, 'empreendimento', 37, 'La Noce Design', '', 'http://localhost/mata/wp-content/uploads/2017/02/foto-cauan-lana-em-alta-resollucao.jpg', '', '', '', 'Ilustrações, design gráfico e cursos de desenho.', 'Av. Japão, 571, Sala 02, Térreo, Cariru, Ipatinga - MG', 5, 'Fernanda La Noce', '(31) 98831-7037', '', 'lanocedesign@gmail.com', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(187, 'evento', 43, 'Schubert, 220 anos de História', '', 'http://localhost/mata/wp-content/uploads/2017/02/shubert-220-anos.jpg', '', '', '', 'Em 2017 comemora-se o aniversário de 220 anos de história do compositor Schubert, que foi contemporâneo de Mozart e Beethoven e influenciou outros grandes compositores.\r\nNo concerto, a Orquestra de Câmara, regida por Vinícius Saturnino, homenageará esses mestres com algumas de suas principais sinfonias', 'Teatro Zelia Olguin', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com', '16/02/2017', '16/02/2017', '20:00', '21:00', '30,00', 1),
(189, 'evento', 43, 'Por uma Folha – Flávia Wenceslau ', '', 'http://localhost/mata/wp-content/uploads/2017/02/Flavia_Wenceslau_004-1-1.jpg', '', '', '', 'Sucesso na internet, a cantora paraibana canta as belezas da natureza em sua percepção. No palco, ela vai apresentar sucessos de sua carreira, que já acumula três discos gravados, entre eles: “Imensidão”, tema de novela, e a canção “O Silêncio”, gravada por Maria Bethânia em seu último DVD. ', 'Centro Cultural Usiminas', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com/', '16/02/2017', '16/02/2017', '20:00', '21:30', '30,00', 1),
(190, 'evento', 43, 'Crônicas Urbanas ', '', 'http://localhost/mata/wp-content/uploads/2017/02/Crônicas-Urbanas-A-Rua-Declama03.jpg', '', '', '', 'O recital “Crônicas Urbanas” é um resumo de tudo aquilo que permeia a atmosfera dos saraus de rua: a junção entre música e poesia, cultura e contracultura, o mainstream e o underground. Um espetáculo surpreendente e ousado que vai conduzir o público por reflexões e sentimentos diversos.', 'Teatro Zélia Olguin ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com/', '17/02/2017', '17/02/2017', '20:00', '21:00', '30,00', 1),
(191, 'evento', 43, 'Paulinho Pedra Azul – 35 anos ', '', 'http://localhost/mata/wp-content/uploads/2017/02/paulinho-pedra-azul3.jpg', '', '', '', 'Paulinho Pedra Azul celebra neste show os 35 anos de uma história brilhante: 25 discos, 17 livros, pinturas e bordados. O público vai conferir o som do artista que atravessa gerações, com sua produção musical e seus sucessos atemporais em estilos diversos.', 'Centro Cultural Usiminas', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com', '17/02/2017', '17/02/2017', '20:30', '22:00', '30,00', 1),
(192, 'evento', 43, 'A Pedra do Sol – Clássicos do Rock ', '', 'http://localhost/mata/wp-content/uploads/2017/02/a-pedra-do-sol-classicos-do-rock2.jpg', '', '', '', 'A banda A Pedra do Sol é formada por amigos que se reuniram para tocar o bom e velho rock. A banda, que já fez abertura de shows de artistas como Zeca Baleiro e Emerson Nogueira, tem no repertório clássicos internacionais e nacionais.', 'Teatro do Centro Cultural Usiminas ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com', '18/02/2017', '18/02/2017', '20:00', '21:30', '30,00', 1),
(193, 'evento', 43, 'Dom Quixote ', '', 'http://localhost/mata/wp-content/uploads/2017/02/dom-quixote-2.jpg', '', '', '', 'Balé em três atos baseado na obra homônima de Miguel de Cervantes, com coreografia original de Marius Petipa, Alexander Gorsky e música de Ludwig Minkus. A direção geral é de Salette Olguin, com adaptação de Guilherme Junio.', 'Teatro do Centro Cultural Usiminas  ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com', '19/02/2017', '19/02/2017', '20:00', '21:30', '30,00', 1),
(194, 'evento', 43, 'Jurema, a Noiva Encalhada', '', 'http://localhost/mata/wp-content/uploads/2017/02/jurema-a-noiva-encalhada.jpg', '', '', '', 'Retratando experiências amorosas e situações curiosas e engraçadas, Jurema, totalmente enlouquecida, após ser internada em um hospício, vai participar de uma terapia para os supostos loucos. ', 'Teatro Zélia Olguin ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com', '19/02/2017', '19/02/2017', '20:00', '21:00', '30,00', 1),
(195, 'empreendimento', 55, 'Empório da Roça', '', 'http://localhost/mata/wp-content/uploads/2017/02/emporio-da-roca-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/emporio-2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/emporio1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/emporio3.jpg', 'Empório da roça, tem os melhores produtos direto da roça. Os melhores queijos, Doces, Rapadura, Mel, Goiabada Cascão, Farinha de Amendoim, Fubá, Cachaça, Artesanatos, Verduras orgânicas e etc.', 'Av. Minas Gerais 327 Canaa Ipatinga', 5, '', '(31) 3826-6139', '(31) 98644-7708', 'emporiodarocaoficial@gmail.com', 'https://www.facebook.com/emporiodarocaoficial/', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(197, 'evento', 43, 'Celebrai Com Cristo  ', '', 'http://localhost/mata/wp-content/uploads/2017/02/celebrai-1.jpg', '', '', '', 'Celebrai Com Cristo Carnaval.', 'Unileste', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '25/02/2017', '28/02/2017', '18:00', '24:00', 'R$ 0,00', 1),
(199, 'evento', 43, 'Aniversário de Emancipação Política de Coronel Fabriciano ', 'http://localhost/mata/wp-content/uploads/2017/02/16754247_1238729442871407_1260269362_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/16804718_1238729429538075_753081198_o.jpg', '', '', '', '68º Aniversário de emancipação política de Coronel Fabriciano.\r\n\r\nSerá realizado na Praça da Biblia.', 'Avenida Magalhães Pinto', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '20/01/2017', '20/01/2017', '08:00', '12:00', 'R$ 0,00', 1),
(200, 'evento', 43, 'Encontro de Cavaleiros ', '', 'http://localhost/mata/wp-content/uploads/2017/02/16788286_1238729706204714_203177021_n.jpg', '', '', '', 'Encontro de Cavaleiros em Santa Vitória de Cocais.', 'Cocais, Coronel Fabriciano', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '13/03/2017', '13/03/2017', '09:00', '13:00', 'R$ 0,00', 1),
(201, 'empreendimento', 13, 'Sato Tepan Restaurante ', 'http://localhost/mata/wp-content/uploads/2017/02/logo-sato-tepan-e-gula.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sato-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sato.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/sato2.jpg', '', 'Restaurante Japonês, serve almoço, comida japonesa e chinesa, comida mineira, churrasco. jantar, rodízios,serviço de buffet e música ao vivo.', ' Avenida Fernando de Noronha, 1008, Bom Retiro', 5, 'Pierre ', '(31) 3823-1365', '', 'pierrerestaurante@hotmail.com', 'https://www.facebook.com/sato.teppan.5?fref=ts', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(202, 'empreendimento', 13, 'All Gustus Restaurante', 'http://localhost/mata/wp-content/uploads/2017/02/augustus-logo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/augustus.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/augustus-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/augustus-2.jpg', '', 'Restaurante self-service que busca abranger a culinária mundial com pratos diferentes todos os dias, carne na chapa e linguiça exclusiva, além de, à noite, servir deliciosos churrasquinhos.', 'Avenida Japão, 981, Cariru, Ipatinga - MG', 5, 'Augusto Nora', '(31) 8821-1979', '', 'augustonora@hotmail.com', 'https://www.facebook.com/allgustusrestaurante/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(203, 'empreendimento', 17, 'Roteiro de turismo Rural e de Aventura de Coronel Fabriciano', '', 'http://localhost/mata/wp-content/uploads/2017/02/Cachoeira-José-Felicíssimo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Trilha-Cachoeirão69.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Rapel-na-Cachoeira-da-Limeira-tratado.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Trekking-TRILHA-DOS-TROPEIROS.jpg', 'Em Coronel Fabriciano, na Serra dos Cocais, você desfruta do clima de montanha e pode curtir o Caminho dos Tropeiros, utilizado do Século XVII ao XIX. Trekking na Mata Atlântica, cachoeiras e rapel.', 'Serra dos Cocais', 4, 'Secretaria de Governança em Desenvolvimento Econômico, Turismo e Cultura', '(31) 3846-7739', '', 'turismoemfabriciano@gmail.com', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(206, 'empreendimento', 14, 'Praça e Igreja  Matriz de Santana do Paraíso', '', 'http://localhost/mata/wp-content/uploads/2017/02/Foto-Elvira-nascimento-Praça-P-6.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/Foto-Elvira-nascimento-Praça-P-16.jpg', '', '', 'Localizada na região central do município, a Praça da Matriz e a Igreja de Santana formam um complexo para diversas atividades : religiosas, culturais, e de entretenimento. A Igreja Matriz tem teve grande importância na formação do povoado que viria a se tornar município.  A Igreja foi construída na primeira metade do século XX, com influência da arquitetura gótica, colonial. A Praça  da Matriz é o ponto de encontro da cidade, compõe o espaço com jardins e espaços para contemplação da arquitetura da Igreja. Neste espaço são realizados os principais eventos da cidade, entre eles a tradicional festa de Santana, tradicional há mais de oitenta anos em Santana do Paraíso.', 'Praça da Matriz, Centro, Santana do Paraíso', 6, 'Prefeitura Santana do Paraiso', '(31) 3251-6757', '', 'comturspmg@gmail.com', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(214, 'empreendimento', 14, 'Praça e Igreja  Matriz de Santana do Paraíso', '', 'http://localhost/mata/wp-content/uploads/2017/02/Foto-Elvira-nascimento-Praça-P-6-1.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/Foto-Elvira-nascimento-Praça-P-16-1.jpg', '', 'Localizada na região central do município, a Praça da Matriz e a Igreja de Santana formam um complexo para diversas atividades : religiosas, culturais, e de entretenimento. A Igreja Matriz tem teve grande importância na formação do povoado que viria a se tornar município.  A Igreja foi construída na primeira metade do século XX, com influência da arquitetura gótica, colonial. A Praça  da Matriz é o ponto de encontro da cidade, compõe o espaço com jardins e espaços para contemplação da arquitetura da Igreja. Neste espaço são realizados os principais eventos da cidade, entre eles a tradicional festa de Santana, tradicional há mais de oitenta anos em Santana do Paraíso.', 'Praça da Matriz, Centro, Santana do Paraíso', 6, 'Prefeitura Municipal de Ipatinga', '(31) 3251-6757', '', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(215, 'empreendimento', 13, 'Tuffik Cozinha Árabe', 'http://localhost/mata/wp-content/uploads/2017/02/logo-tufik.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/tuffik-arabe.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/tuffik-arabe-2.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/tuffik-arabe-1.jpg', '', 'Restaurante que oferece comida do oriente médio e turco, Atendemos buffet, Como diz um ditado árabe: “se você não tem um amigo libanês, arranje um imediatamente”. No Tuffik, além de você ter uma comida de excelente qualidade, cerveja gelada e música ao vivo.', 'R. São Marcos 12, B. Novo Cruzeiro', 5, 'Vera Tuffik', '(31) 3095-3247', '', 'veratufik@gmail.com', 'https://www.facebook.com/tuffikcozinhaarabe/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(218, 'evento', 18, 'Trekking de Travessia .', 'http://localhost/mata/wp-content/uploads/2017/02/logo-esporte.png', 'http://localhost/mata/wp-content/uploads/2017/02/calenadrio-2017-fevre.jpg', '', '', '', 'Trekking  é uma palavra de origem sul-africana que significa seguir um trilho e fazê-lo a pé. Como desporto está inserido na modalidade de caminhada ao ar livre.\r\nDia 19 de Fevereiro de 2017', 'Serra do Cocais', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/esporte.novale/', '19/02/2017', '19/02/2017', '08:30', '14:00', 'R$ 55,00', 1),
(219, 'empreendimento', 14, 'COLÉGIO ANGÉLICA', '', 'http://localhost/mata/wp-content/uploads/2017/02/Fachada-do-Colégio-Angélica.jpg', '', '', '', 'O Colégio Angélica, fundado pelo bispo Dom Helvécio na década de 1940 foi um dos mais importantes centros educacionais da região administrado pelas Irmãs Carmelitas', 'Rua Maria Matos, 128 Centro Coronel Fabriciano ', 4, 'Irmãs Carmelitas', '(31) 3841-1995', '', '', '', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(220, 'evento', 43, 'Sons, Cores e Sabores', '', 'http://localhost/mata/wp-content/uploads/2017/02/sons-e-sabores.jpg', '', '', '', 'Promovida pela estilista Vanuza Bárbara, a exposição - loja itinerante “Sons, Cores e Sabores” propõe levar ao Foyer do Centro Cultural Usiminas estandes onde serão apresentados e comercializados trabalhos de artistas do Vale do Aço relacionados à moda, bordado, tricô, pintura, música e fotografia.', 'Foyer do Centro Cultural Usiminas  98561-2302', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', '16/02/2017', '19/02/2017', '17:30', '22:30', 'R$ 0,00', 1),
(230, 'empreendimento', 14, 'Pâmela Franco e Banda', 'http://localhost/mata/wp-content/uploads/2017/02/received_1156220397733602.jpeg', 'http://localhost/mata/wp-content/uploads/2017/02/1480796671807.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IMG-20141206-WA0050.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IMG-20170206-WA0125.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/IMG-20170214-WA0067.jpg', 'Música ao Vivo para Recepções e Eventos. Violão e Voz, e Banda', 'Rua Recife, 278, Amaro Lanari', 4, 'Pâmela Franco ', '(31) 98866-2490', '(31) 98771-9694', 'pamelafranco.contatos@gmail.com', 'https://www.facebook.com/pamelafrancooficial', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(243, 'empreendimento', 13, 'Saliba Cozinha Árabe', 'http://localhost/mata/wp-content/uploads/2017/02/saliba-logo.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/saliba.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/saliba1.png', '', 'Os exóticos, milenares e originais aromas do Oriente Médio na sua mesa! Somente encomendas antecipadas.Comida espanhola, mexicana, chinesa, árabe, alemã.', 'Rua Nova Almeida,  66,  Vila Ipanema', 5, 'Sérgio Saliba', '(31) 3825-1550', '', '', 'https://www.facebook.com/sscomidaarabe/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(244, 'evento', 19, 'Dia do Cliente', '', 'http://localhost/mata/wp-content/uploads/2017/02/dicas-emkt.jpg', '', '', '', 'Dia Nacional. Em Coronel Fabriciano, a Acicel-CDL promove uma ação para estimular o lojista a receber o seu cliente de maneira especial neste dia. ', 'Rua Maria Matos', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.acicelcdl.com.br/', '15/09/2017', '16/09/2017', '08:00', '18:00', 'R$ 0,00', 1),
(245, 'empreendimento', 10, 'Sítio Paraíso', '', 'http://localhost/mata/wp-content/uploads/2017/02/1.jpeg', 'http://localhost/mata/wp-content/uploads/2017/02/13.jpeg', 'http://localhost/mata/wp-content/uploads/2017/02/publipiscina.jpeg', 'http://localhost/mata/wp-content/uploads/2017/02/14.jpeg', 'O Sítio Paraíso é destinado à locação para os mais variados tipos de evento, seja ele um casamento, aniversário, confraternizações ou retiros religiosos. Dispomos de acomodações amplas e confortáveis. São 17 quartos, sendo 13 suítes.\r\n\r\nO Sítio Paraíso dispõe ainda de salão de festas, área de piscinas, churrasqueiras, sauna, campo society e uma cozinha completa equipada com freezers, fogões e utensílios.', 'Rua Belo Horizonte, 954, Veraneio', 6, 'Rogério Anício', '(31) 98811-6875', '(31) 98811-6875', 'ranicio@gmail.com', 'https://www.facebook.com/ositioparaiso/', 'onde_ficar', 'http://www.sitio-paraiso.com/', NULL, NULL, NULL, NULL, NULL, 1),
(246, 'empreendimento', 13, 'Torii Culinária Japonesa Delivery', '', 'http://localhost/mata/wp-content/uploads/2017/02/tori1.jpg', '', 'http://localhost/mata/wp-content/uploads/2017/02/tori2.jpg', '', 'Ser reconhecida como uma empresa de excelência no segmento da culinária japonesa e asiática, mantendo o compromisso da melhoria contínua de seus produtos, sendo uma empresa rentável em expansão no mercado em que atua.', 'Rua Esmeralda, ', 5, '', '(31) 3825-0747', '', '', 'https://www.facebook.com/torii.japonesa/', 'onde_comer', 'http://www.torii.com.br', NULL, NULL, NULL, NULL, NULL, 1),
(247, 'empreendimento', 53, 'Sorveteria Milky', 'http://localhost/mata/wp-content/uploads/2017/02/16830311_999124663552679_970751745_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/16809311_999125390219273_237413686_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/16838069_999125396885939_1708611769_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/16809679_999125400219272_531274285_n.jpg', 'http://localhost/mata/wp-content/uploads/2017/02/16831593_999125393552606_1710878052_n.jpg', 'Os sorvetes Milky são inesquecivelmente cremosos e saborosos. Feito com ingredientes selecionados e leite com qualidade comprovada, e não leva gorduras hidrogenadas. Cada detalhe pensado com muito carinho, para conquistar você!', 'Av. José Magalhães Pinto, n°1637 - Melo Viana', 4, '', '(31) 3619-0555', '', '', 'https://www.facebook.com/SorvetesMilky/', 'onde_comer', '', NULL, NULL, NULL, NULL, NULL, 1),
(248, 'empreendimento', 56, 'Produção audio visual ( Registro  de Fotografia e Filmagem)', '', 'http://localhost/mata/wp-content/uploads/2017/02/audiovisual.jpg', '', '', '', 'produção de áudio visual e registro fotográfico e  filmagem , atualizações de redes sociais e divulgaçao', 'Rua Jose Julio lage 21 apto 202', 8, 'Elias Martins', '(31) 98629-1808', '(31) 98682-9989', 'eliasmartinsvendas@gmail.com', '', 'info_uteis', '', NULL, NULL, NULL, NULL, NULL, 1),
(249, 'evento', 18, 'Carnaval Tropical', 'http://localhost/mata/wp-content/uploads/2017/02/perfil-site-01-copy.png', 'http://localhost/mata/wp-content/uploads/2017/02/site-foto-01-copy.png', '', '', '', 'O Carnaval Tropical conta com piscinas naturais, cachoeiras, tirolesa, parquinho para as crianças, e muita música!', 'Santana do Paraíso', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', '26/02/2017', '28/02/2017', '13:00', '19:00', 'R$ 20,00', 1),
(250, 'evento', 19, 'Seminário Regional de Responsabilidade Social', '', 'http://localhost/mata/wp-content/uploads/2017/03/SEMINÁRIO.jpg', '', '', '', 'A FIEMG Regional Vale do Aço reunirá empresários, gestores públicos e sociedade civil organizada para abordar o tema \\"Ética e Sustentabilidade nos Três Setores\\" e o Programa Cooperação para Cidades Sustentáveis. Com os três setores trabalhando juntos - empresa, governo e sociedade -, teremos indústrias competitivas, municípios em desenvolvimento de forma sustentável e sociedade mais cidadã.\r\n', 'Av. Pedro Linhares Gomes, 5431, Horto', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.sympla.com.br/seminario-regional-de-responsabilidade-social__120191', '16/03/2017', '16/03/2017', '18:00', '21:00', 'R$ 0,00', 1),
(251, 'empreendimento', 17, 'Parque das Cachoeiras', '', 'http://localhost/mata/wp-content/uploads/2017/03/parque-cachoeiras.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/parque-cachoeiras-4.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/parque-cachoeiras-3.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/parque-cachoeiras-1.jpg', 'Paraíso que  faz a integração homem natureza. É composto por cachoeiras exuberantes, piscinas naturais e artificiais, bosques , pedras esculturais e chalés, salão de festas, práticas de esportes radicais.', 'Estrada do Ipaneminha, s/n Ipaneminha. Ipatinga ', 5, '', '(31) 3822-2235', '(31) 98850-3883', 'clubeparquedascachoeiras@hotmail.com', 'https://www.facebook.com/clubeparquedascachoeiras', 'atrativo', 'http://www.clubeparque.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(252, 'empreendimento', 14, 'Armazém de Minas', '', 'http://localhost/mata/wp-content/uploads/2017/03/armazem-fotos.jpg', '', '', '', 'Empório, vendas de doces artesanais, carnes de latas, vinhos, cervejas artesanais, cachaças, bebidas e empório goumert, funcionamento de segunda a sexta de 9h às 19h e sábado de 9h às 15h.', 'Av. Fernando de Noronha, 1103 C, Bom Retiro, ', 5, 'Rodrigo Pinho e Ricardo', '(31) 3821-7809', '(31) 8001-1103', 'armazemdiminas@gmail.com', 'https://www.facebook.com/armazemdiminas?fref=ts', 'atrativo', '', NULL, NULL, NULL, NULL, NULL, 1),
(253, 'evento', 43, 'Eles e Elas Experimento Musical', '', 'http://localhost/mata/wp-content/uploads/2017/03/ele-e-elas.jpg', '', '', '', 'Experimento Musical onde os homens tocam e as mulheres cantam. Haverá também bazar, moda sustentável e produtos artesanais.', 'Bar Avesso - Centro Comercial do Cariru', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.oavesso.com.br/', '07/03/2017', '07/03/2017', '21:00', '24:00', 'R$ 0,00', 1),
(255, 'evento', 18, '23ª Corrida rústica de São Sebastião de Timóteo', '', 'http://localhost/mata/wp-content/uploads/2017/03/IMG-20170304-WA0008.jpg', '', '', '', 'Evento promovido pela Associação de Amigos de corrida rústica de são Sebastião de Timóteo', 'Praça 29 de abril', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', '29/04/2017', '29/04/2017', '16:00', '18:00', 'R$ 0,00', 1) ;
INSERT INTO `wp_aofoc_dados` ( `id`, `modalidade`, `cat_id`, `nome`, `url_icone`, `url_img1`, `url_img2`, `url_img3`, `url_img4`, `descricao`, `endereco`, `cidade_id`, `resp_contato`, `telefone`, `whatsapp`, `email`, `facebook`, `tipo`, `site`, `dt_inicio`, `dt_fim`, `hr_inicio`, `hr_fim`, `valor_entrada`, `aprovado`) VALUES
(256, 'evento', 43, 'Santinhas do Pau Oco – Nova Temporada 2017', '', 'http://localhost/mata/wp-content/uploads/2017/03/santinhas-do-pau-oco.jpg', '', '', '', 'As Santinhas do Pau Oco estão de volta com as famosas freirinhas que vivem sob as rígidas regras da madre superiora e tentam realizar, a todo custo, seus sonhos. Usando estratégias cômicas e até inocentes, criam formas de ludibriar a superiora. Com muito improviso, cenas de plateia e confusão, a peça é um prato cheio para toda família. ', 'Teatro do Centro Cultural Usiminas ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com/', '11/03/2017', '11/03/2017', '20:30', '21:50', '30,00', 1),
(257, 'evento', 43, 'Christian Figueiredo “Eu Fico Loko”', '', 'http://localhost/mata/wp-content/uploads/2017/03/Christian-Fiqueiredo2-2.jpg', '', '', '', 'Neste espetáculo, o público vai conferir um pouco das histórias de sucesso de Christian Figueiredo, um jovem que desde o início da adolescência pegava a câmera da mãe e gravava com seus amigos cenas de filmes e pequenas histórias. Até que um dia resolveu ligar a câmera e contar suas desventuras e dilemas da adolescência para ela. O resultado? Seu canal “Eu Fico Loko” explodiu, atraiu uma legião de fãs e Christian se tornou um dos maiores ídolos do público jovem do Brasil. \r\n\r\n', 'teatro do Centro Cultural Usiminas', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com/', '18/03/2017', '18/03/2017', '20:00', '22:00', '60,00', 1),
(258, 'empreendimento', 10, 'Sítio Recanto Águas Claras', 'http://localhost/mata/wp-content/uploads/2017/03/PLACA-INDICATIVA-150-150.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/IMG_20170107_150016113.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/IMG_4923.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/IMG_4580.jpg', 'http://localhost/mata/wp-content/uploads/2017/03/IMG_4602.jpg', 'Situado no município de Marliéria, distrito de Antunes, o sítio tem localização privilegiada e paisagem exuberante com diversidade de recursos naturais. \r\n\r\nEsta próximo ao mirante do Jacroá, local de rara beleza e um importante destaque turístico da região. \r\n\r\nVizinho do Parque Estadual do Rio Doce, com suas lindas lagoas e a maior reserva de Mata Atlântica contínua do estado de Minas Gerais. \r\n\r\nNo verão, o clima agradável propicia refrescantes banhos de piscina e duchas. \r\n\r\nCom a queda da temperatura, o local apresenta um aconchegante clima de montanha.', 'Rua Antunes, 47', 8, 'Sebastião Tomas carvalho ', '(31) 3847-1607', '(31) 7318-2085', 'sitiorecantoaguasclaras@gmail.com', 'https://www.facebook.com/Sitio-Recanto-Aguas-Claras-796549843726391/', 'onde_ficar', 'http://www.recantoaguasclaras.com.br/index.html', NULL, NULL, NULL, NULL, NULL, 1),
(259, 'empreendimento', 49, 'Recanto Pastel & Lancheria', '', 'http://localhost/mata/wp-content/uploads/2017/03/072.jpg', '', '', '', 'A maior variedade em pastéis do Vale do Aço!', 'Av. Fernando de Noronha -756 -Centro Comercial Bom Retiro', 5, 'Maria Ribeiro', '(31) 3823-1306', '(31) 98576-8412', 'recantopastel@gmail.com', 'https://www.facebook.com/recantopastel/', 'onde_comer', 'http://recantopastel.blogspot.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(260, 'evento', 18, 'Caravana das Águas', '', 'http://localhost/mata/wp-content/uploads/2017/03/IMG-20170322-WA0065.jpg', '', '', '', 'Saída da ETE de Ipatinga as 7h com destino a Pingo D\\\'água. No horário de 9h às 12h acontecerão oficinas, exposições, apresentação cultural.', 'Centro Pingo D\\\\\\\'água', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', '25/03/2017', '25/03/2017', '07:00', '13:00', 'R$ 0,00', 1),
(261, 'evento', 18, 'Noite astronômica', '', 'http://localhost/mata/wp-content/uploads/2017/03/Cartaz-Noite-Astronômica.jpg', '', '', '', 'Atividade em comemoração ao dia dá Água', 'Rua 19 de novembro, centro', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', '01/04/2017', '01/04/2017', '18:00', '22:00', 'R$ 0,00', 1),
(262, 'evento', 43, '68 Festa Cultural Boi Balaio', '', 'http://localhost/mata/wp-content/uploads/2017/03/WhatsApp-Image-2017-03-31-at-11.44.46.jpeg', '', '', '', 'Shows: Sábado ( Alan Fortunato - Irmãos Ciganos)\r\nDomingo: (Irmãos Ciganos) \r\nEncontro de Cavaleiros A partir das 9h', 'Praça da Igreja Católica de Bom Jesus do Bagre', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', '15/04/2017', '16/04/2017', '20:00', '24:00', 'R$ 0,00', 1),
(263, 'evento', 43, '1º Festival Comida da Roça - Cultura e Sabores da Agricultura Familiar de Dionísio', '', 'http://localhost/mata/wp-content/uploads/2017/04/Cartaz_Oficial.jpg', '', '', '', 'Festival Comida da Roça - Cultura e Sabores da Agricultura Familiar, terá na sua programação música através de apresentações de artistas, gastronomia com produtos dos setores de alimentos e bebidas do município, comercialização de agricultores familiares e mostra de artesanato local', 'Praça Central', 12, NULL, NULL, NULL, NULL, NULL, NULL, '', '29/04/2017', '01/05/2017', '10:00', '20:00', 'R$ 0,00', 1),
(264, 'evento', 43, 'Liz Eulália e Dalton Palmieri', 'http://localhost/mata/wp-content/uploads/2017/04/image-4.jpeg', 'http://localhost/mata/wp-content/uploads/2017/04/image.jpeg', 'http://localhost/mata/wp-content/uploads/2017/04/image-2.jpeg', 'http://localhost/mata/wp-content/uploads/2017/04/image-2-1.jpeg', 'http://localhost/mata/wp-content/uploads/2017/04/image-3.jpeg', 'Música Brasileira ', 'Pimenta de Cheiro', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '29/04/2017', '29/04/2017', '21:00', '00:00', '---', 1),
(265, 'evento', 43, 'Salão do Livro Vale do Aço celebra décima edição', '', 'http://localhost/mata/wp-content/uploads/2017/05/logo-salao.png', '', '', '', 'O Salão do Livro Vale do Aço está de volta para comemorar a sua 10ª edição, em 2017, com uma programação cultural gratuita e debates acerca da diversidade e da inclusão social por meio da literatura, com base no tema: “O amor”. De 6 a 11 de junho, o maior evento literário do Leste mineiro chega ao Centro Cultural Usiminas, em Ipatinga, visando o incentivo ao hábito de leitura e contribuir com o acesso de crianças, jovens e adultos ao mundo da literatura. Mantendo a sua itinerância, o Salão do Livro também levará ações para as cidades de Coronel Fabriciano e Inhapim.', 'Centro Cultural Usiminas – Shopping Vale do Aço – Ipatinga (MG)', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://www.institutoculturalusiminas.com/noticias/salao-do-livro-vale-do-aco-celebra-decima-edicao/', '06/06/2017', '11/06/2017', '09:00', '22:00', '00,00', 1),
(266, 'empreendimento', 57, 'Espaço Design Arquitetura OG', 'http://localhost/mata/wp-content/uploads/2017/06/Sem-Título-1.jpg', 'http://localhost/mata/wp-content/uploads/2017/06/Sem-Título-1.png', '', '', '', 'ESCRITÓRIO DE PROJETOS DE ARQUITETURA, URBANISMO E CULTURAIS  VOLTADOS PARA PRÁTICAS  DE ECONOMIA CRIATIVA.  A EMPRESA TRABALHA NA PRESERVAÇÃO DO PATRIMÔNIO CULTURAL NO VALE DO AÇO, COM DESTACADA  ATUAÇÃO JUNTO AOS MUNICÍPIOS PARA SUA EFETIVA PARTICIPAÇÃO NO PROGRAMA  ICMS CULTURAL, GARANTINDO A MANUTENÇÃO E DESENVOLVIMENTO DA DIVERSIDADE CULTURAL NO ESTADO DE MINAS GERAIS. ', 'R. Maria Matos, 290, sl101, Centro - Coronel Fabriciano- MG', 4, 'Joana Angélica', '(31) 98807-0488', '(31) 98783-5733', 'arquiteturaog@gmail.com', 'https://www.facebook.com/EspacoDesignArquitetura/', 'info_uteis', 'http://arquiteturaog.blogspot.com.br/', NULL, NULL, NULL, NULL, NULL, 1),
(273, 'evento', 18, 'ASasas', '', 'http://localhost/mata/wp-content/uploads/2017/06/timthumb.php_.jpg', '', '', '', 'ASasas', 'aSas', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', '12/13/1232', '21/32/1321', '23:21', '12:32', 'SSDSAD', 1),
(274, 'evento', 43, '15°NOITE DA PROSA ', '', 'http://localhost/mata/wp-content/uploads/2017/06/15NOIT1.jpg', '', '', '', '15 Noite da Prosa e Encontro de Cavaleiros, barraquinhas,batuque,moda de viola,quadrilha', 'Vila de Santa Vitoria Cocais de Baixo ', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', '24/06/2017', '25/06/2017', '19:00', '19:00', 'R$ 0,00', 1),
(281, 'evento', 19, 'Ipatinga Gourmet 2017', 'http://localhost/mata/wp-content/uploads/2017/07/logo.png', 'http://localhost/mata/wp-content/uploads/2017/07/imagem.png', '', '', '', 'O Ipatinga Gourmet é um evento focado na promoção da gastronomia do Vale do Aço, a partir da reunião e integração de chefes, produtores de alimentose a preciadores da boa cozinha. Tudo muito bem temperado com atrações culturais. ', 'Parque das Cachoeiras', 5, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/ipatingagourmet2017', '08/07/2017', '09/07/2017', '14:00', '18:00', 'R$ 0,00', 1) ;

#
# Fim do conteúdo da tabela `wp_aofoc_dados`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_aofoc_fotos` existente
#

DROP TABLE IF EXISTS `wp_aofoc_fotos`;


#
# Estrutura da tabela `wp_aofoc_fotos`
#

CREATE TABLE `wp_aofoc_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade_id` int(11) DEFAULT '0',
  `url_foto` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aprovado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_aofoc_fotos`
#
INSERT INTO `wp_aofoc_fotos` ( `id`, `nome`, `local`, `cidade_id`, `url_foto`, `aprovado`) VALUES
(21, 'Elvira Nasvimento', 'Parque Ipanema', 5, 'http://localhost/mata/wp-content/uploads/2017/02/olhar2.jpg', 1),
(22, 'Elvira Nasvimento', 'Festa do Rosário', 4, 'http://localhost/mata/wp-content/uploads/2017/02/olhar_05.jpg', 1),
(23, 'Elvira Nasvimento', 'Cachoeira do Paraiso', 6, 'http://localhost/mata/wp-content/uploads/2017/02/olhar.jpg', 1),
(24, 'Eduardo Siqueira Martins', 'Lagoa do Bispo', 9, 'http://localhost/mata/wp-content/uploads/2017/02/LAGOA-DO-BISPO.jpg', 1),
(31, 'Geraldo Alves', 'Lagoa do Bispo- Marlieria Mg', 9, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0094.jpg', 1),
(32, 'Geraldo Alves', 'Lagoa do Bispo- Marlieria MG', 9, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0041.jpg', 1),
(33, 'Geraldo Alves', 'Parque Florestal Rio Doce- Marlieria MG', 9, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0086.jpg', 1),
(34, 'Geraldo Alves', 'Parque Florestal Rio Doce- Marlieria MG', 9, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0083.jpg', 1),
(35, 'Geraldo Alves', 'Praça Matriz- Santana do Paraiso   mg', 6, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso22.jpg', 1),
(36, 'Geraldo Alves', 'Santana do Paraíso - mg', 6, 'http://localhost/mata/wp-content/uploads/2017/02/PARAISO6.jpg', 1),
(37, 'Geraldo Alves', 'Parque Ipanema- Ipatinga MG', 5, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0182.jpg', 1),
(38, 'Geraldo Alves', 'Hospital Márcio Cunha- Ipatinga MG', 5, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0177.jpg', 1),
(39, 'Geraldo Alves', 'Parque Ipanema- Ipatinga mg', 5, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0174.jpg', 1),
(40, 'Geraldo Alves', 'Rotatória do bairro Cidade Nobre- Ipatinga mg', 5, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0049.jpg', 1),
(41, 'Geraldo Alves ', 'Shopping do Vale- Ipatinga mg', 2, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0064.jpg', 1),
(42, 'Geraldo Alves', 'Praça dos tres Poderes - Ipatinga MG', 5, 'http://localhost/mata/wp-content/uploads/2017/02/DJI_0104.jpg', 1),
(43, 'Henrique Junior', 'Saíra-sete-cores na Mata Ciliar do Rio Piracicaba', 5, 'http://localhost/mata/wp-content/uploads/2017/03/DSC05961_.jpg', 1),
(44, 'Andreise Andrade', 'Parque Estadual do Rio Doce - Lagoa do Bispo', 9, 'http://localhost/mata/wp-content/uploads/2017/03/IMG_2950.jpg', 1),
(47, 'HERIQUE ASSIS', 'COCAIS', 4, 'http://localhost/mata/wp-content/uploads/2017/05/DSC_0148-Editar.jpg', 1) ;

#
# Fim do conteúdo da tabela `wp_aofoc_fotos`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_commentmeta` existente
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Estrutura da tabela `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_commentmeta`
#

#
# Fim do conteúdo da tabela `wp_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_comments` existente
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Estrutura da tabela `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_comments`
#

#
# Fim do conteúdo da tabela `wp_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_huge_itslider_images` existente
#

DROP TABLE IF EXISTS `wp_huge_itslider_images`;


#
# Estrutura da tabela `wp_huge_itslider_images`
#

CREATE TABLE `wp_huge_itslider_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image_url` text COLLATE utf8_unicode_ci,
  `sl_url` text COLLATE utf8_unicode_ci,
  `sl_type` text COLLATE utf8_unicode_ci NOT NULL,
  `link_target` text COLLATE utf8_unicode_ci NOT NULL,
  `sl_stitle` text COLLATE utf8_unicode_ci NOT NULL,
  `sl_sdesc` text COLLATE utf8_unicode_ci NOT NULL,
  `sl_postlink` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_huge_itslider_images`
#
INSERT INTO `wp_huge_itslider_images` ( `id`, `name`, `slider_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `sl_stitle`, `sl_sdesc`, `sl_postlink`, `ordering`, `published`, `published_in_sl_width`) VALUES
(31, '', '2', '', 'http://localhost/mata/wp-content/uploads/2017/02/CONVENCION-1.png', '', '', '', '', '', '', 2, 2, 1),
(33, '', '2', '', 'http://localhost/mata/wp-content/uploads/2017/02/SEBRAE-1.png', '', '', '', '', '', '', 4, 2, 1),
(34, '', '2', '', 'http://localhost/mata/wp-content/uploads/2017/02/DESTINO-1.png', '', '', '', '', '', '', 0, 2, 1),
(35, '', '2', '', 'http://localhost/mata/wp-content/uploads/2017/02/TURISMO-NO-VALE-1.png', '', '', '', '', '', '', 3, 2, 1),
(36, '', '2', '', 'http://localhost/mata/wp-content/uploads/2017/02/CIRCUITO-1.png', '', '', '', '', '', '', 1, 2, 1),
(37, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/timoteo_02-1.jpg', '', '', '', '', '', '', 9, 2, 1),
(38, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/timoteo_01-1.jpg', '', '', '', '', '', '', 10, 2, 1),
(39, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/sao-domingos_do-prata-1.jpg', '', '', '', '', '', '', 11, 2, 1),
(40, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/paraiso3-1.jpg', '', '', '', '', '', '', 5, 2, 1),
(41, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/paraiso2-1.jpg', '', '', '', '', '', '', 6, 2, 1),
(42, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/paraiso-1.jpg', '', '', '', '', '', '', 1, 2, 1),
(43, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/marlieria4.jpg', '', '', '', '', '', '', 7, 2, 1),
(44, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/marlieria3.jpg', '', '', '', '', '', '', 2, 2, 1),
(45, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/marlieria2.jpg', '', '', '', '', '', '', 8, 2, 1),
(46, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/marlieria.jpg', '', '', '', '', '', '', 4, 2, 1),
(47, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga3-1.jpg', '', '', '', '', '', '', 3, 2, 1),
(48, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga2-1.jpg', '', '', '', '', '', '', 12, 2, 1),
(49, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga-1.jpg', '', '', '', '', '', '', 13, 2, 1),
(50, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/fabriciano-1.jpg', '', '', '', '', '', '', 15, 2, 1),
(51, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/belo-oriente2.jpg', '', '', '', '', '', '', 17, 2, 1),
(52, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/belo-oriente.jpg', '', '', '', '', '', '', 18, 2, 1),
(53, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/acucena23.jpg', '', '', '', '', '', '', 16, 2, 1),
(54, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/acucena2.jpg', '', '', '', '', '', '', 19, 2, 1),
(55, '', '1', '', 'http://localhost/mata/wp-content/uploads/2017/02/acucena.jpg', '', '', '', '', '', '', 14, 2, 1),
(56, 'Salão do Livro Vale do Aço', '1', '', 'http://localhost/mata/wp-content/uploads/2017/06/OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO.jpg', 'http://salaodolivrovaledoaco.com.br/', '', 'on', '', '', '', 0, 2, 1) ;

#
# Fim do conteúdo da tabela `wp_huge_itslider_images`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_huge_itslider_params` existente
#

DROP TABLE IF EXISTS `wp_huge_itslider_params`;


#
# Estrutura da tabela `wp_huge_itslider_params`
#

CREATE TABLE `wp_huge_itslider_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_huge_itslider_params`
#
INSERT INTO `wp_huge_itslider_params` ( `id`, `name`, `title`, `description`, `value`) VALUES
(89, 'slider_crop_image', 'Slider crop image', 'Slider crop image', 'resize'),
(90, 'slider_title_color', 'Slider title color', 'Slider title color', '000000'),
(91, 'slider_title_font_size', 'Slider title font size', 'Slider title font size', '13'),
(92, 'slider_description_color', 'Slider description color', 'Slider description color', 'ffffff'),
(93, 'slider_description_font_size', 'Slider description font size', 'Slider description font size', '13'),
(94, 'slider_title_position', 'Slider title position', 'Slider title position', 'right-top'),
(95, 'slider_description_position', 'Slider description position', 'Slider description position', 'right-bottom'),
(96, 'slider_title_border_size', 'Slider Title border size', 'Slider Title border size', '0'),
(97, 'slider_title_border_color', 'Slider title border color', 'Slider title border color', 'ffffff'),
(98, 'slider_title_border_radius', 'Slider title border radius', 'Slider title border radius', '4'),
(99, 'slider_description_border_size', 'Slider description border size', 'Slider description border size', '0'),
(100, 'slider_description_border_color', 'Slider description border color', 'Slider description border color', 'ffffff'),
(101, 'slider_description_border_radius', 'Slider description border radius', 'Slider description border radius', '0'),
(102, 'slider_slideshow_border_size', 'Slider border size', 'Slider border size', '0'),
(103, 'slider_slideshow_border_color', 'Slider border color', 'Slider border color', 'ffffff'),
(104, 'slider_slideshow_border_radius', 'Slider border radius', 'Slider border radius', '0'),
(105, 'slider_navigation_type', 'Slider navigation type', 'Slider navigation type', '1'),
(106, 'slider_navigation_position', 'Slider navigation position', 'Slider navigation position', 'bottom'),
(107, 'slider_title_background_color', 'Slider title background color', 'Slider title background color', 'ffffff'),
(108, 'slider_description_background_color', 'Slider description background color', 'Slider description background color', '000000'),
(109, 'slider_title_transparent', 'Slider title has background', 'Slider title has background', 'on'),
(110, 'slider_description_transparent', 'Slider description has background', 'Slider description has background', 'on'),
(111, 'slider_slider_background_color', 'Slider slider background color', 'Slider slider background color', 'ffffff'),
(112, 'slider_dots_position', 'slider dots position', 'slider dots position', 'top'),
(113, 'slider_active_dot_color', 'slider active dot color', '', 'ffffff'),
(114, 'slider_dots_color', 'slider dots color', '', '000000'),
(115, 'slider_description_width', 'Slider description width', 'Slider description width', '70'),
(116, 'slider_description_height', 'Slider description height', 'Slider description height', '50'),
(117, 'slider_description_background_transparency', 'slider description background transparency', 'slider description background transparency', '70'),
(118, 'slider_description_text_align', 'description text-align', 'description text-align', 'justify'),
(119, 'slider_title_width', 'slider title width', 'slider title width', '30'),
(120, 'slider_title_height', 'slider title height', 'slider title height', '50'),
(121, 'slider_title_background_transparency', 'slider title background transparency', 'slider title background transparency', '70'),
(122, 'slider_title_text_align', 'title text-align', 'title text-align', 'right'),
(123, 'slider_title_has_margin', 'title has margin', 'title has margin', 'on'),
(124, 'slider_description_has_margin', 'description has margin', 'description has margin', 'on'),
(125, 'slider_show_arrows', 'Slider show left right arrows', 'Slider show left right arrows', 'on'),
(126, 'loading_icon_type', 'Slider loading icon type', 'Slider loading icon type', '1'),
(127, 'slider_thumb_count_slides', 'Slide thumbs count', 'Slide thumbs count', '3'),
(128, 'slider_dots_position_new', 'Slide Dots Position', 'Slide Dots Position', 'dotstop'),
(129, 'slider_thumb_back_color', 'Thumbnail Background Color', 'Thumbnail Background Color', 'FFFFFF'),
(130, 'slider_thumb_passive_color', 'Passive Thumbnail Color', 'Passive Thumbnail Color', 'FFFFFF'),
(131, 'slider_thumb_passive_color_trans', 'Passive Thumbnail Color Transparency', 'Passive Thumbnail Color Transparency', '50'),
(132, 'slider_thumb_height', 'Slider Thumb Height', 'Slider Thumb Height', '100') ;

#
# Fim do conteúdo da tabela `wp_huge_itslider_params`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_huge_itslider_sliders` existente
#

DROP TABLE IF EXISTS `wp_huge_itslider_sliders`;


#
# Estrutura da tabela `wp_huge_itslider_sliders`
#

CREATE TABLE `wp_huge_itslider_sliders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text COLLATE utf8_unicode_ci,
  `slider_list_effects_s` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `param` text COLLATE utf8_unicode_ci,
  `sl_position` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text COLLATE utf8_unicode_ci,
  `sl_loading_icon` text COLLATE utf8_unicode_ci NOT NULL,
  `show_thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dotstop',
  `video_autoplay` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'off',
  `random_images` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_huge_itslider_sliders`
#
INSERT INTO `wp_huge_itslider_sliders` ( `id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `slider_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `sl_loading_icon`, `show_thumb`, `video_autoplay`, `random_images`) VALUES
(1, 'Banner', 375, 600, 'on', 'random', '4000', '1000', 'center', 1, '300', 'off', 'dotstop', 'off', 'off') ;

#
# Fim do conteúdo da tabela `wp_huge_itslider_sliders`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_links` existente
#

DROP TABLE IF EXISTS `wp_links`;


#
# Estrutura da tabela `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_links`
#

#
# Fim do conteúdo da tabela `wp_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_newsletter` existente
#

DROP TABLE IF EXISTS `wp_newsletter`;


#
# Estrutura da tabela `wp_newsletter`
#

CREATE TABLE `wp_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` varchar(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0',
  `list` int(11) NOT NULL DEFAULT '0',
  `profile` mediumtext,
  `followup_step` tinyint(4) NOT NULL DEFAULT '0',
  `followup_time` bigint(20) NOT NULL DEFAULT '0',
  `followup` tinyint(4) NOT NULL DEFAULT '0',
  `region` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_newsletter`
#
INSERT INTO `wp_newsletter` ( `id`, `email`, `name`, `surname`, `sex`, `status`, `created`, `token`, `feed`, `feed_time`, `country`, `list_1`, `list_2`, `list_3`, `list_4`, `list_5`, `list_6`, `list_7`, `list_8`, `list_9`, `list_10`, `list_11`, `list_12`, `list_13`, `list_14`, `list_15`, `list_16`, `list_17`, `list_18`, `list_19`, `list_20`, `profile_1`, `profile_2`, `profile_3`, `profile_4`, `profile_5`, `profile_6`, `profile_7`, `profile_8`, `profile_9`, `profile_10`, `profile_11`, `profile_12`, `profile_13`, `profile_14`, `profile_15`, `profile_16`, `profile_17`, `profile_18`, `profile_19`, `profile_20`, `referrer`, `http_referer`, `wp_user_id`, `ip`, `test`, `flow`, `unsub_email_id`, `unsub_time`, `list`, `profile`, `followup_step`, `followup_time`, `followup`, `region`, `city`) VALUES
(4, 'wanber@outlook.com', '', '', 'n', 'C', '2017-02-15 10:47:32', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(5, 'viniciusodin@gmail.com', '', '', 'n', 'C', '2017-02-15 14:44:21', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(6, 'pablozanone@gmail.com', '', '', 'n', 'C', '2017-02-16 03:47:31', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(7, 'andremaiamg@yahoo.com.br', '', '', 'n', 'C', '2017-02-16 12:06:41', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(8, 'krol_pontes@yahoo.com.br', '', '', 'n', 'C', '2017-02-16 16:59:09', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(9, 'roberto50mg@hotmail.com', '', '', 'n', 'C', '2017-02-16 20:11:43', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(10, 'anderson.machado.mg@gmail.com', '', '', 'n', 'C', '2017-02-16 21:09:37', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(11, 'jm.cota@bol.com.br', '', '', 'n', 'C', '2017-02-16 21:48:49', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(12, 'junior@idamasceno.com.br', '', '', 'n', 'C', '2017-02-17 11:57:30', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(13, 'marilda0815@hotmail.com', '', '', 'n', 'C', '2017-02-17 12:19:45', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(14, 'fcfernandes@gmail.com', '', '', 'n', 'C', '2017-02-17 16:58:12', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(15, 'prof.eduardosm@gmail.com', '', '', 'n', 'C', '2017-02-17 23:20:22', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(16, 'thaysler.cultura@hotmail.com', '', '', 'n', 'C', '2017-02-20 08:37:01', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(17, 'somavaledoaco@gmail.com', '', '', 'n', 'C', '2017-02-22 19:02:34', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(18, 'eliasmartinsvendas@gmail.com', '', '', 'n', 'C', '2017-02-23 07:23:10', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(19, 'viniciusprodrigues@gmail.com', '', '', 'n', 'C', '2017-04-14 23:25:09', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(20, 'lizeulalia@hotmail.com', '', '', 'n', 'C', '2017-05-01 09:01:37', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(21, 'darceliaturismo@yahoo.com.br', '', '', 'n', 'C', '2017-05-22 14:21:10', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(22, 'sindvestva@fiemg.com.br', '', '', 'n', 'C', '2017-05-26 08:54:55', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', ''),
(23, 'ronaldomoreira.13@hotmail.com', '', '', 'n', 'C', '2017-06-30 14:10:06', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, 0, 0, 0, '', '') ;

#
# Fim do conteúdo da tabela `wp_newsletter`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_newsletter_emails` existente
#

DROP TABLE IF EXISTS `wp_newsletter_emails`;


#
# Estrutura da tabela `wp_newsletter_emails`
#

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext,
  `message_text` longtext,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) NOT NULL DEFAULT '',
  `query` longtext,
  `preferences` longtext,
  `options` longtext,
  `token` varchar(10) NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `open_count` int(10) unsigned NOT NULL DEFAULT '0',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_newsletter_emails`
#

#
# Fim do conteúdo da tabela `wp_newsletter_emails`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_newsletter_sent` existente
#

DROP TABLE IF EXISTS `wp_newsletter_sent`;


#
# Estrutura da tabela `wp_newsletter_sent`
#

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `error` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`email_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `email_id` (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_newsletter_sent`
#

#
# Fim do conteúdo da tabela `wp_newsletter_sent`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_newsletter_stats` existente
#

DROP TABLE IF EXISTS `wp_newsletter_stats`;


#
# Estrutura da tabela `wp_newsletter_stats`
#

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email_id` (`email_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_newsletter_stats`
#

#
# Fim do conteúdo da tabela `wp_newsletter_stats`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_options` existente
#

DROP TABLE IF EXISTS `wp_options`;


#
# Estrutura da tabela `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=34111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mata', 'yes'),
(2, 'home', 'http://localhost/mata', 'yes'),
(3, 'blogname', 'Destino Turístico Vale do Aço', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'contato@turismovaledoaco.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$";s:75:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:48:"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:63:"block-specific-plugin-updates/block-specific-plugin-updates.php";i:1;s:24:"cadastro-aofoc/index.php";i:2;s:41:"kiwi-logo-carousel/kiwi_logo_carousel.php";i:3;s:25:"log-emails/log-emails.php";i:4;s:21:"newsletter/plugin.php";i:5;s:25:"simple-settings/ilmss.php";i:6;s:23:"slider-image/slider.php";i:7;s:33:"update-control/update-control.php";i:8;s:27:"updraftplus/updraftplus.php";i:10;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gwp_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mata', 'yes'),
(41, 'stylesheet', 'mata', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:69:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"ure_edit_roles";b:1;s:16:"ure_create_roles";b:1;s:16:"ure_delete_roles";b:1;s:23:"ure_create_capabilities";b:1;s:23:"ure_delete_capabilities";b:1;s:18:"ure_manage_options";b:1;s:15:"ure_reset_roles";b:1;s:12:"do_not_allow";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:7:{i:1501173785;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1501174847;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501177822;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501179502;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501243767;a:1:{s:16:"log_emails_purge";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501259585;a:1:{s:29:"newsletter_extension_versions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1486481860;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(130, 'can_compress_scripts', '0', 'no'),
(139, 'current_theme', 'Destino Turístico Vale do Aço', 'yes'),
(140, 'theme_mods_mata', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'slider_image_version', '3.2', 'yes'),
(154, 'slider_image_imege_hover_preview', 'on', 'yes'),
(155, 'widget_hugeit_slider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(348, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1486480528;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(350, 'theme_mods_mata2', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1486481855;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(624, 'update_control_options', 'a:12:{s:6:"active";s:2:"no";s:4:"core";s:5:"minor";s:11:"translation";b:1;s:11:"emailactive";s:3:"yes";s:6:"plugin";b:0;s:5:"theme";b:0;s:14:"toggleadvanced";s:4:"hide";s:8:"vcscheck";b:0;s:12:"successemail";b:0;s:12:"failureemail";b:0;s:13:"criticalemail";b:0;s:10:"debugemail";b:0;}', 'yes'),
(638, 'wpe_settings', '', 'yes'),
(676, 'kiwiLGCRSL-jquery', '0', 'yes'),
(677, 'kiwiLGCRSL_default', 's:670:"a:23:{s:4:"mode";s:10:"horizontal";s:5:"speed";s:3:"500";s:11:"slideMargin";s:1:"0";s:12:"infiniteLoop";s:4:"true";s:16:"hideControlOnEnd";s:5:"false";s:8:"captions";s:5:"false";s:6:"ticker";s:5:"false";s:11:"tickerHover";s:5:"false";s:14:"adaptiveHeight";s:5:"false";s:10:"responsive";s:4:"true";s:5:"pager";s:5:"false";s:8:"controls";s:5:"false";s:9:"minSlides";s:1:"1";s:9:"maxSlides";s:1:"4";s:10:"moveSlides";s:1:"4";s:10:"slideWidth";s:3:"151";s:4:"auto";s:4:"true";s:5:"pause";s:4:"4000";s:10:"klco_style";s:7:"default";s:12:"klco_orderby";s:10:"menu_order";s:19:"klco_clickablelogos";s:6:"newtab";s:14:"klco_alignment";s:6:"center";s:11:"klco_height";s:3:"100";}";', 'yes'),
(715, 'bpu_update_blocked_plugins', 'slider-image/slider.php', 'yes'),
(759, 'log_emails_limit_days', '999', 'yes'),
(764, 'newsletter_logger_secret', '1b383a2a', 'yes'),
(765, 'newsletter_dismissed', 'a:1:{s:6:"wpmail";i:1;}', 'yes'),
(766, 'newsletter_main_first_install_time', '1487160711', 'no'),
(767, 'newsletter_main', 'a:8:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:34:"newsletter@turismovaledoaco.com.br";s:11:"sender_name";s:31:"Destino Turístico Vale do Aço";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:7:"api_key";s:10:"265aab2edb";}', 'yes'),
(768, 'newsletter_extension_versions', 'a:0:{}', 'no'),
(769, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(770, 'newsletter_main_version', '1.3.0', 'yes'),
(771, 'newsletter_subscription_first_install_time', '1487160711', 'no'),
(772, 'newsletter', 'a:29:{s:14:"noconfirmation";s:1:"1";s:12:"profile_text";s:283:"<p>Change your subscription preferences to get what you are most interested in.</p>\r\n<p>If you change your email address, a confirmation email will be sent to activate it.</p>\r\n{profile_form}\r\n<p>To cancel your subscription, <a href="{unsubscription_confirm_url}">click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can\'t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:263:"<p>You have successfully subscribed to the newsletter. You\'ll receive a confirmation email in a few minutes. Please follow the link to confirm your subscription. If the email takes more than 15 minutes to appear in your mailbox, please check your spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:428:"<p>Hi {name},</p>\r\n<p>A newsletter subscription request for this email address was received. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot click the link, please use the following link:</p>\r\n<p>{subscription_confirm_url}</p>\r\n<p>If you did not make this subscription request, just ignore this message.</p>\r\n<p>Thank you!<br /> <a href="{blog_url}">{blog_url}</a></p>";s:14:"confirmed_text";s:55:"<p>Sua inscrição foi confirmada! Obrigado {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:280:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\r\n<p>Thank you!<br /> <a href="{blog_url}">{blog_url}</a></p>\r\n<p>To unsubscribe, <a href="{unsubscription_url}">click here</a>. To change subscriber options, <a href="{profile_url}">click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=\'{unsubscription_confirm_url}\'>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:195:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\n<p>You\'re welcome to sign up again anytime.</p>\n<p>Thank you!<br>\n<a href=\'{blog_url}\'>{blog_url}</a></p>";s:4:"page";s:3:"102";s:6:"notify";s:1:"0";s:12:"notify_email";s:0:"";s:3:"css";s:0:"";s:16:"confirmation_url";s:0:"";s:13:"confirmed_url";s:0:"";s:18:"confirmed_disabled";s:1:"0";s:11:"profile_url";s:0:"";s:13:"profile_saved";s:0:"";s:3:"url";s:0:"";}', 'yes'),
(773, 'newsletter_profile', 'a:202:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I\'m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";}', 'yes'),
(774, 'newsletter_subscription_lists', 'a:60:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;}', 'yes'),
(775, 'newsletter_subscription_template', 'a:2:{s:7:"enabled";i:0;s:8:"template";s:1829:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n        </style>\n    </head>\n    \n    <!-- KEEP THE TAMPLE SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0;">\n        <!-- Top title with dark background #333, font color #fff, font size 32px -->\n        <table style="background-color: #333; width: 100%; color: #fff; font-size: 32px">\n            <tr>\n                <td style="padding: 25px; text-align: center">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center"  style="padding: 25px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; width: 500px; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 25px; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n                                \n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'no'),
(776, 'newsletter_subscription_version', '2.0.3', 'yes'),
(777, 'newsletter_emails_first_install_time', '1487160711', 'no'),
(778, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"theme-1";}', 'yes'),
(779, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(780, 'newsletter_emails_version', '1.1.5', 'yes'),
(781, 'newsletter_users_first_install_time', '1487160711', 'no'),
(782, 'newsletter_users', 'a:0:{}', 'yes'),
(783, 'newsletter_users_version', '1.0.9', 'yes'),
(784, 'newsletter_statistics_first_install_time', '1487160713', 'no'),
(785, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"315bff77b74e765a83fab441c1922912";}', 'yes'),
(786, 'newsletter_statistics_version', '1.1.6', 'yes'),
(787, 'newsletter_lock_first_install_time', '1487160713', 'no'),
(788, 'newsletter_lock', 'a:4:{s:3:"ids";s:0:"";s:3:"url";s:0:"";s:7:"message";s:89:"<p>Subscribe to our newsletter and get access to the full article.</p>[subscription_form]";s:7:"enabled";i:0;}', 'yes'),
(789, 'newsletter_lock_version', '1.0.3', 'yes'),
(790, 'newsletter_wp_first_install_time', '1487160713', 'no'),
(791, 'newsletter_wp', 'a:5:{s:15:"subscribe_label";s:24:"Subscribe our newsletter";s:9:"subscribe";i:0;s:12:"confirmation";i:0;s:7:"welcome";i:0;s:6:"delete";i:0;}', 'yes'),
(792, 'newsletter_wp_version', '1.0.1', 'yes'),
(793, 'widget_newsletterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(794, 'widget_newsletterwidgetminimal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(796, 'newsletter_diagnostic_cron_calls', 'a:100:{i:0;i:1500994534;i:1;i:1500995419;i:2;i:1500996703;i:3;i:1500998146;i:4;i:1500998582;i:5;i:1500998908;i:6;i:1500999175;i:7;i:1500999553;i:8;i:1500999758;i:9;i:1501001307;i:10;i:1501001697;i:11;i:1501002059;i:12;i:1501003467;i:13;i:1501004027;i:14;i:1501004495;i:15;i:1501004598;i:16;i:1501005464;i:17;i:1501006151;i:18;i:1501006582;i:19;i:1501006760;i:20;i:1501007665;i:21;i:1501007907;i:22;i:1501008149;i:23;i:1501008686;i:24;i:1501008779;i:25;i:1501009050;i:26;i:1501009502;i:27;i:1501010341;i:28;i:1501010687;i:29;i:1501011101;i:30;i:1501011215;i:31;i:1501012880;i:32;i:1501013242;i:33;i:1501018140;i:34;i:1501020269;i:35;i:1501021332;i:36;i:1501023150;i:37;i:1501026026;i:38;i:1501027207;i:39;i:1501030996;i:40;i:1501032649;i:41;i:1501034087;i:42;i:1501035004;i:43;i:1501037783;i:44;i:1501043335;i:45;i:1501048317;i:46;i:1501052510;i:47;i:1501053527;i:48;i:1501056067;i:49;i:1501061208;i:50;i:1501068105;i:51;i:1501075234;i:52;i:1501075977;i:53;i:1501078318;i:54;i:1501080645;i:55;i:1501081348;i:56;i:1501087239;i:57;i:1501087358;i:58;i:1501088204;i:59;i:1501089054;i:60;i:1501093729;i:61;i:1501097065;i:62;i:1501098759;i:63;i:1501101167;i:64;i:1501104411;i:65;i:1501108535;i:66;i:1501110846;i:67;i:1501114600;i:68;i:1501116037;i:69;i:1501116316;i:70;i:1501117120;i:71;i:1501121618;i:72;i:1501122936;i:73;i:1501125278;i:74;i:1501126901;i:75;i:1501127277;i:76;i:1501127648;i:77;i:1501128336;i:78;i:1501130690;i:79;i:1501131428;i:80;i:1501138523;i:81;i:1501142551;i:82;i:1501146741;i:83;i:1501147057;i:84;i:1501151938;i:85;i:1501152560;i:86;i:1501153224;i:87;i:1501153376;i:88;i:1501160912;i:89;i:1501165265;i:90;i:1501168639;i:91;i:1501168644;i:92;i:1501172048;i:93;i:1501172465;i:94;i:1501172555;i:95;i:1501172915;i:96;i:1501173144;i:97;i:1501173199;i:98;i:1501173495;i:99;i:1501173534;}', 'no'),
(802, 'newsletter_users_search', 'a:4:{s:11:"search_text";s:0:"";s:13:"search_status";s:0:"";s:11:"search_list";s:0:"";s:11:"search_page";i:0;}', 'yes'),
(949, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";i:1789;s:3:"max";i:7536;s:3:"min";i:5;}', 'no'),
(2496, 'newsletter_emails_theme_theme-1', 'a:0:{}', 'no'),
(4016, 'user_role_editor', 'a:1:{s:11:"ure_version";s:6:"4.31.1";}', 'yes'),
(4017, 'wp_backup_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'no'),
(4018, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(17001, 'category_children', 'a:6:{i:5;a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}i:4;a:8:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:48;i:4;i:49;i:5;i:50;i:6;i:51;i:7;i:53;}i:2;a:4:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;}i:7;a:4:{i:0;i:18;i:1;i:19;i:2;i:42;i:3;i:43;}i:6;a:4:{i:0;i:20;i:1;i:21;i:2;i:44;i:3;i:47;}i:3;a:23:{i:0;i:22;i:1;i:23;i:2;i:24;i:3;i:25;i:4;i:26;i:5;i:27;i:6;i:28;i:7;i:29;i:8;i:30;i:9;i:31;i:10;i:32;i:11;i:33;i:12;i:34;i:13;i:35;i:14;i:36;i:15;i:37;i:16;i:40;i:17;i:41;i:18;i:46;i:19;i:54;i:20;i:55;i:21;i:56;i:22;i:57;}}', 'yes'),
(34086, 'updraft_updraftvault', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-8c68ac7381876c951f21f1e921a2a573";a:0:{}}}', 'yes'),
(34087, 'updraft_dropbox', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-b238a428dd557a9570c207b2df78db38";a:0:{}}}', 'yes'),
(34088, 'updraft_s3', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-167729a64b0540687de66343e71c9390";a:0:{}}}', 'yes'),
(34089, 'updraft_cloudfiles', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-d9f32602a8ad2aeb82cbbaef30b848b3";a:0:{}}}', 'yes'),
(34090, 'updraft_googledrive', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-25e8ee7bf649ffb90b6f2643a1b4be83";a:0:{}}}', 'yes'),
(34091, 'updraft_ftp', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-83ef53ee33a93d27f6bce74fc2497a9f";a:0:{}}}', 'yes'),
(34092, 'updraft_s3generic', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-a69c6c0868a8bc5db6830858ab849f2f";a:0:{}}}', 'yes'),
(34093, 'updraft_dreamobjects', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-4a375f3b944ac1276e9edac8782d1a83";a:0:{}}}', 'yes'),
(34094, 'updraftplus-addons_siteid', 'f01feff9558235057c9c08575dc0f924', 'no'),
(34095, 'updraft_lastmessage', 'O backup aparentemente foi bem sucedido e está completo agora. (jul 27 13:38:51)', 'yes'),
(34096, 'updraftplus_unlocked_f', '1', 'no'),
(34097, 'updraftplus_last_lock_time_f', '2017-07-27 16:33:43', 'no'),
(34098, 'updraftplus_semaphore_f', '0', 'no'),
(34099, 'updraft_last_scheduled_f', '1501173223', 'yes'),
(34106, 'updraft_backup_history', 'a:1:{i:1501173220;a:14:{s:7:"plugins";a:1:{i:0;s:75:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-plugins.zip";}s:12:"plugins-size";i:12553446;s:6:"themes";a:1:{i:0;s:74:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-themes.zip";}s:11:"themes-size";i:13835036;s:7:"uploads";a:2:{i:0;s:75:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-uploads.zip";i:1;s:76:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-uploads2.zip";}s:12:"uploads-size";i:418434696;s:13:"uploads1-size";i:15071814;s:6:"others";a:1:{i:0;s:74:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-others.zip";}s:11:"others-size";i:476966;s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"02df5bd45e228f8faa412c5fb8331b055167e20b";s:7:"themes0";s:40:"145dfa0714f95ea9e0f484f331a5a2eaba2c76ee";s:8:"uploads0";s:40:"aea15edb6a01559579b59ea4b96f06917f0b2f10";s:8:"uploads1";s:40:"869cbf166b77b1c6c7ca76fde5d8fd4ae280a266";s:7:"others0";s:40:"c1e3c6a54dfc0a48cf69f95c2540a11d212ba3f8";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"2078b604ba73aa11f948777d37161d366f70eae8bbcb8e9bcd48c43751be49a8";s:7:"themes0";s:64:"842526d22d611b36ed39bdbd22fd5a359dfce161c2a87f0b420ec3a6ed5c12c6";s:8:"uploads0";s:64:"6a939adc6ddfcbfe3bd8d25332e3e2aca833baa4142ce4fb664c30674f4f2554";s:8:"uploads1";s:64:"f9b99ee729638e39c76aadc72111e1de140e24acbf0a73425763c1544f2c102c";s:7:"others0";s:64:"ce71b209b3aea769a148f43afc40d76fc2911cf9f7426076e40ce06aa522302c";}}s:5:"nonce";s:12:"e6cf607b4beb";s:7:"service";a:1:{i:0;s:4:"none";}s:18:"created_by_version";s:6:"1.13.4";s:12:"is_multisite";b:0;}}', 'yes'),
(34107, 'updraft_last_backup', 'a:5:{s:11:"backup_time";i:1501173220;s:12:"backup_array";a:10:{s:7:"plugins";a:1:{i:0;s:75:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-plugins.zip";}s:12:"plugins-size";i:12553446;s:6:"themes";a:1:{i:0;s:74:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-themes.zip";}s:11:"themes-size";i:13835036;s:7:"uploads";a:2:{i:0;s:75:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-uploads.zip";i:1;s:76:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-uploads2.zip";}s:12:"uploads-size";i:418434696;s:13:"uploads1-size";i:15071814;s:6:"others";a:1:{i:0;s:74:"backup_2017-07-27-1333_Destino_Turstico_Vale_do_Ao_e6cf607b4beb-others.zip";}s:11:"others-size";i:476966;s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"02df5bd45e228f8faa412c5fb8331b055167e20b";s:7:"themes0";s:40:"145dfa0714f95ea9e0f484f331a5a2eaba2c76ee";s:8:"uploads0";s:40:"aea15edb6a01559579b59ea4b96f06917f0b2f10";s:8:"uploads1";s:40:"869cbf166b77b1c6c7ca76fde5d8fd4ae280a266";s:7:"others0";s:40:"c1e3c6a54dfc0a48cf69f95c2540a11d212ba3f8";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"2078b604ba73aa11f948777d37161d366f70eae8bbcb8e9bcd48c43751be49a8";s:7:"themes0";s:64:"842526d22d611b36ed39bdbd22fd5a359dfce161c2a87f0b420ec3a6ed5c12c6";s:8:"uploads0";s:64:"6a939adc6ddfcbfe3bd8d25332e3e2aca833baa4142ce4fb664c30674f4f2554";s:8:"uploads1";s:64:"f9b99ee729638e39c76aadc72111e1de140e24acbf0a73425763c1544f2c102c";s:7:"others0";s:64:"ce71b209b3aea769a148f43afc40d76fc2911cf9f7426076e40ce06aa522302c";}}}s:7:"success";i:1;s:6:"errors";a:0:{}s:12:"backup_nonce";s:12:"e6cf607b4beb";}', 'yes') ;

#
# Fim do conteúdo da tabela `wp_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_postmeta` existente
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Estrutura da tabela `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=378 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(9, 5, '_edit_last', '1'),
(10, 5, '_wp_page_template', 'default'),
(11, 5, 'type', ''),
(12, 5, 'value', ''),
(13, 5, 'slug', 'rascunho_automtico'),
(14, 5, '_edit_lock', '1485989175:1'),
(15, 7, '_edit_last', '1'),
(16, 7, '_wp_page_template', 'default'),
(17, 7, 'type', ''),
(18, 7, 'value', ''),
(19, 7, 'slug', 'rascunho_automtico'),
(20, 7, '_edit_lock', '1487041432:1'),
(21, 9, '_edit_last', '1'),
(22, 9, '_wp_page_template', 'default'),
(23, 9, 'type', ''),
(24, 9, 'value', ''),
(25, 9, 'slug', 'formulario_cadastro'),
(26, 9, '_edit_lock', '1487041377:1'),
(27, 11, '_edit_last', '1'),
(28, 11, '_wp_page_template', 'default'),
(29, 11, 'type', ''),
(30, 11, 'value', ''),
(31, 11, 'slug', 'rascunho_automtico'),
(32, 11, '_edit_lock', '1485989188:1'),
(33, 13, '_edit_last', '1'),
(34, 13, '_wp_page_template', 'default'),
(35, 13, 'type', ''),
(36, 13, 'value', ''),
(37, 13, 'slug', 'rascunho_automtico'),
(38, 13, '_edit_lock', '1485886647:1'),
(39, 15, '_edit_last', '1'),
(40, 15, '_wp_page_template', 'default'),
(41, 15, 'type', ''),
(42, 15, 'value', ''),
(43, 15, 'slug', 'rascunho_automtico'),
(44, 15, '_edit_lock', '1485886659:1'),
(45, 18, '_edit_last', '1'),
(46, 18, '_wp_page_template', 'default'),
(47, 18, 'type', ''),
(48, 18, 'value', ''),
(49, 18, 'slug', 'rascunho_automtico'),
(50, 18, '_edit_lock', '1487168934:1'),
(51, 20, '_wp_attached_file', '2017/01/200.jpg'),
(52, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:200;s:4:"file";s:15:"2017/01/200.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"200-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"200-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 21, '_wp_attached_file', '2017/01/200-1.jpg'),
(54, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:200;s:4:"file";s:17:"2017/01/200-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"200-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"200-1-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(55, 22, '_wp_attached_file', '2017/01/200-2.jpg'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:200;s:4:"file";s:17:"2017/01/200-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"200-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"200-2-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 23, '_wp_attached_file', '2017/01/donheldercamera.jpg'),
(58, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:135;s:4:"file";s:27:"2017/01/donheldercamera.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 24, '_wp_attached_file', '2017/01/logos-localiza.jpg'),
(60, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:135;s:4:"file";s:26:"2017/01/logos-localiza.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 25, '_wp_attached_file', '2017/01/padraologowp-01.png'),
(62, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:135;s:4:"file";s:27:"2017/01/padraologowp-01.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 26, '_edit_last', '1'),
(64, 26, '_edit_lock', '1486037726:1'),
(65, 26, 'type', 'textarea'),
(66, 26, 'value', '1'),
(67, 26, 'slug', 'slider_id__banner'),
(68, 28, '_edit_last', '1'),
(69, 28, '_edit_lock', '1487186948:1'),
(70, 28, 'type', 'textarea'),
(71, 28, 'value', '2'),
(72, 28, 'slug', 'slider_id__parceiros'),
(73, 29, '_edit_last', '1'),
(74, 29, '_edit_lock', '1487009415:1'),
(75, 29, 'type', 'textarea'),
(76, 29, 'value', 'Após cadastrar seu empreendimento/evento será feito a validação das informações para que seja publicado no site.'),
(77, 29, 'slug', 'texto__cadastro'),
(78, 30, '_edit_last', '1'),
(79, 30, '_edit_lock', '1487189164:1'),
(80, 30, 'type', 'textarea'),
(81, 30, 'value', 'Após enviar sua mensagem, serão avaliados os dados e retornaremos por e-mail.'),
(82, 30, 'slug', 'texto__contato'),
(83, 32, '_edit_last', '1'),
(84, 32, '_edit_lock', '1487379960:1'),
(85, 32, 'type', 'textarea'),
(86, 32, 'value', 'https://www.facebook.com/turismovaledoaco/'),
(87, 32, 'slug', 'topo__facebook'),
(88, 33, '_edit_last', '1'),
(89, 33, '_edit_lock', '1487188440:1'),
(90, 33, 'type', 'textarea'),
(91, 33, 'value', 'O Vale te recebe de braços abertos'),
(92, 33, 'slug', 'topo__frase'),
(93, 34, '_edit_last', '1'),
(94, 34, '_edit_lock', '1486037788:1'),
(95, 34, 'type', 'textarea'),
(96, 34, 'value', 'http://instagram.com'),
(97, 34, 'slug', 'topo__instagram'),
(98, 35, '_edit_last', '1'),
(99, 35, '_edit_lock', '1486731094:1'),
(100, 35, 'type', 'textarea'),
(101, 35, 'value', 'http://youtube.com'),
(102, 35, 'slug', 'topo__youtube'),
(103, 36, '_wp_attached_file', '2017/02/DSC05031.jpg'),
(104, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2592;s:6:"height";i:1944;s:4:"file";s:20:"2017/02/DSC05031.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC05031-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC05031-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"DSC05031-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"DSC05031-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:7:"DSC-P92";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1121510672";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(105, 38, '_edit_last', '1'),
(106, 38, '_edit_lock', '1487188640:1'),
(109, 38, 'type', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(110, 38, 'value', ''),
(111, 38, 'slug', 'histrico_do_projeto'),
(118, 44, '_wp_attached_file', '2017/02/tirar-o-folego-lagoas.png'),
(119, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:375;s:4:"file";s:33:"2017/02/tirar-o-folego-lagoas.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"tirar-o-folego-lagoas-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"tirar-o-folego-lagoas-300x188.png";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(120, 45, '_wp_attached_file', '2017/02/tirar-o-folego-lagoas2.png'),
(121, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:200;s:4:"file";s:34:"2017/02/tirar-o-folego-lagoas2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"tirar-o-folego-lagoas2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"tirar-o-folego-lagoas2-300x100.png";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(122, 46, '_wp_attached_file', '2017/02/ipatinga3.jpg'),
(123, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:21:"2017/02/ipatinga3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"ipatinga3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"ipatinga3-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"ipatinga3-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"ipatinga3-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 47, '_wp_attached_file', '2017/02/ipatinga2.jpg'),
(125, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:21:"2017/02/ipatinga2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"ipatinga2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"ipatinga2-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"ipatinga2-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"ipatinga2-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 48, '_wp_attached_file', '2017/02/ipatinga.jpg'),
(127, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:20:"2017/02/ipatinga.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"ipatinga-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"ipatinga-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"ipatinga-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"ipatinga-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 49, '_wp_attached_file', '2017/02/fabriciano.jpg'),
(129, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/fabriciano.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"fabriciano-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"fabriciano-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"fabriciano-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"fabriciano-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(130, 50, '_wp_attached_file', '2017/02/ipaneminha.jpg'),
(131, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/ipaneminha.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"ipaneminha-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"ipaneminha-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"ipaneminha-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"ipaneminha-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(132, 51, '_wp_attached_file', '2017/02/paraiso3.jpg'),
(133, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:20:"2017/02/paraiso3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"paraiso3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"paraiso3-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"paraiso3-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"paraiso3-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 52, '_wp_attached_file', '2017/02/paraiso2.jpg'),
(135, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:20:"2017/02/paraiso2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"paraiso2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"paraiso2-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"paraiso2-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"paraiso2-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 53, '_wp_attached_file', '2017/02/paraiso.jpg'),
(137, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:19:"2017/02/paraiso.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"paraiso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"paraiso-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"paraiso-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"paraiso-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 54, '_wp_attached_file', '2017/02/sao-domingos_do-prata.jpg'),
(139, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:33:"2017/02/sao-domingos_do-prata.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"sao-domingos_do-prata-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"sao-domingos_do-prata-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"sao-domingos_do-prata-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"sao-domingos_do-prata-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 55, '_wp_attached_file', '2017/02/timoteo_01.jpg'),
(141, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/timoteo_01.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"timoteo_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"timoteo_01-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"timoteo_01-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"timoteo_01-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(142, 56, '_wp_attached_file', '2017/02/timoteo_02.jpg'),
(143, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/timoteo_02.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"timoteo_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"timoteo_02-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"timoteo_02-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"timoteo_02-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 57, '_wp_attached_file', '2017/02/CIRCUITO.png'),
(145, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:195;s:4:"file";s:20:"2017/02/CIRCUITO.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"CIRCUITO-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(146, 58, '_wp_attached_file', '2017/02/CONVENCION.png'),
(147, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:133;s:4:"file";s:22:"2017/02/CONVENCION.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"CONVENCION-150x133.png";s:5:"width";i:150;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 59, '_wp_attached_file', '2017/02/DESTINO.png'),
(149, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:89;s:4:"file";s:19:"2017/02/DESTINO.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"DESTINO-150x89.png";s:5:"width";i:150;s:6:"height";i:89;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(150, 60, '_wp_attached_file', '2017/02/INSTITUTO.png'),
(151, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:56;s:4:"file";s:21:"2017/02/INSTITUTO.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"INSTITUTO-150x56.png";s:5:"width";i:150;s:6:"height";i:56;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(152, 61, '_wp_attached_file', '2017/02/SEBRAE.png'),
(153, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:102;s:4:"file";s:18:"2017/02/SEBRAE.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"SEBRAE-150x102.png";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(154, 62, '_wp_attached_file', '2017/02/SINDHORB.png'),
(155, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:122;s:4:"file";s:20:"2017/02/SINDHORB.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"SINDHORB-150x122.png";s:5:"width";i:150;s:6:"height";i:122;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(156, 63, '_wp_attached_file', '2017/02/TURISMO-NO-VALE.png'),
(157, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:44;s:4:"file";s:27:"2017/02/TURISMO-NO-VALE.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"TURISMO-NO-VALE-150x44.png";s:5:"width";i:150;s:6:"height";i:44;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(158, 64, '_wp_attached_file', '2017/02/CIRCUITO-1.png'),
(159, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:98;s:4:"file";s:22:"2017/02/CIRCUITO-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(160, 65, '_wp_attached_file', '2017/02/CONVENCION-1.png'),
(161, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:51;s:4:"file";s:24:"2017/02/CONVENCION-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(162, 66, '_wp_attached_file', '2017/02/DESTINO-1.png'),
(163, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:45;s:4:"file";s:21:"2017/02/DESTINO-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(164, 67, '_wp_attached_file', '2017/02/INSTITUTO-1.png'),
(165, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:28;s:4:"file";s:23:"2017/02/INSTITUTO-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 68, '_wp_attached_file', '2017/02/SEBRAE-1.png'),
(167, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:51;s:4:"file";s:20:"2017/02/SEBRAE-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(168, 69, '_wp_attached_file', '2017/02/SINDHORB-1.png'),
(169, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:61;s:4:"file";s:22:"2017/02/SINDHORB-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(170, 70, '_wp_attached_file', '2017/02/TURISMO-NO-VALE-1.png'),
(171, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:22;s:4:"file";s:29:"2017/02/TURISMO-NO-VALE-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 92, '_edit_last', '1'),
(218, 92, '_edit_lock', '1487727235:1'),
(219, 92, '_thumbnail_id', '59'),
(220, 92, '_kwlogos_link', ''),
(221, 92, 'type', ''),
(222, 92, 'value', ''),
(223, 92, 'slug', 'parceiros'),
(275, 103, '_log_emails_log_from', 'Destino Turístico Vale do Aço <newsletter@turismovaledoaco.com.br>'),
(276, 103, '_log_emails_log_content-type', 'text/html'),
(277, 103, '_log_emails_log_to', 'teste@com.vas'),
(278, 102, '_edit_lock', '1487160845:1'),
(279, 105, '_log_emails_log_from', 'DARCELIA QUINTÃO TURISMO <darceliaturismo@yahoo.com.br>'),
(280, 105, '_log_emails_log_content-type', 'text/plain'),
(281, 105, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(282, 106, '_wp_attached_file', '2017/02/acucena.jpg'),
(283, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:19:"2017/02/acucena.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"acucena-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"acucena-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"acucena-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"acucena-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(284, 107, '_wp_attached_file', '2017/02/acucena2.jpg'),
(285, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:20:"2017/02/acucena2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"acucena2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"acucena2-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"acucena2-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"acucena2-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(286, 108, '_wp_attached_file', '2017/02/acucena23.jpg'),
(287, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:21:"2017/02/acucena23.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"acucena23-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"acucena23-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"acucena23-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"acucena23-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(288, 109, '_wp_attached_file', '2017/02/belo-oriente.jpg'),
(289, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:24:"2017/02/belo-oriente.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"belo-oriente-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"belo-oriente-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"belo-oriente-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"belo-oriente-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(290, 110, '_wp_attached_file', '2017/02/belo-oriente2.jpg'),
(291, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:25:"2017/02/belo-oriente2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"belo-oriente2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"belo-oriente2-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"belo-oriente2-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"belo-oriente2-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(292, 111, '_wp_attached_file', '2017/02/fabriciano-1.jpg'),
(293, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:24:"2017/02/fabriciano-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"fabriciano-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"fabriciano-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"fabriciano-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"fabriciano-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(294, 112, '_wp_attached_file', '2017/02/ipatinga-1.jpg'),
(295, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/ipatinga-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"ipatinga-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"ipatinga-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"ipatinga-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"ipatinga-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(296, 113, '_wp_attached_file', '2017/02/ipatinga2-1.jpg'),
(297, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:23:"2017/02/ipatinga2-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"ipatinga2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"ipatinga2-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"ipatinga2-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"ipatinga2-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(298, 114, '_wp_attached_file', '2017/02/ipatinga3-1.jpg'),
(299, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:23:"2017/02/ipatinga3-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"ipatinga3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"ipatinga3-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"ipatinga3-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"ipatinga3-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(300, 115, '_wp_attached_file', '2017/02/marlieria.jpg'),
(301, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:21:"2017/02/marlieria.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"marlieria-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"marlieria-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"marlieria-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"marlieria-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(302, 116, '_wp_attached_file', '2017/02/marlieria2.jpg'),
(303, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/marlieria2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"marlieria2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"marlieria2-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"marlieria2-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"marlieria2-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(304, 117, '_wp_attached_file', '2017/02/marlieria3.jpg'),
(305, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/marlieria3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"marlieria3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"marlieria3-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"marlieria3-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"marlieria3-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(306, 118, '_wp_attached_file', '2017/02/marlieria4.jpg'),
(307, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/marlieria4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"marlieria4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"marlieria4-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"marlieria4-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"marlieria4-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(308, 119, '_wp_attached_file', '2017/02/paraiso-1.jpg'),
(309, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:21:"2017/02/paraiso-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"paraiso-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"paraiso-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"paraiso-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"paraiso-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(310, 120, '_wp_attached_file', '2017/02/paraiso2-1.jpg'),
(311, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/paraiso2-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"paraiso2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"paraiso2-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"paraiso2-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"paraiso2-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(312, 121, '_wp_attached_file', '2017/02/paraiso3-1.jpg'),
(313, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:22:"2017/02/paraiso3-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"paraiso3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"paraiso3-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"paraiso3-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"paraiso3-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(314, 122, '_wp_attached_file', '2017/02/sao-domingos_do-prata-1.jpg'),
(315, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:35:"2017/02/sao-domingos_do-prata-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"sao-domingos_do-prata-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"sao-domingos_do-prata-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"sao-domingos_do-prata-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"sao-domingos_do-prata-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(316, 123, '_wp_attached_file', '2017/02/timoteo_01-1.jpg'),
(317, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:24:"2017/02/timoteo_01-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"timoteo_01-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"timoteo_01-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"timoteo_01-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"timoteo_01-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(318, 124, '_wp_attached_file', '2017/02/timoteo_02-1.jpg'),
(319, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:563;s:4:"file";s:24:"2017/02/timoteo_02-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"timoteo_02-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"timoteo_02-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"timoteo_02-1-768x225.jpg";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"timoteo_02-1-1024x300.jpg";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(334, 129, '_log_emails_log_from', 'Maria Ribeiro <coopturscouts@gmail.com>'),
(335, 129, '_log_emails_log_content-type', 'text/plain'),
(336, 129, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(337, 130, '_log_emails_log_from', 'Giovana Fernandes <giovana@shoppingvaledoaco.com.br>'),
(338, 130, '_log_emails_log_content-type', 'text/plain'),
(339, 130, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(340, 131, '_log_emails_log_from', 'Marcos Carvalho - Lagoa Silvana <marcoscarvalho.eco@gmail.com>'),
(341, 131, '_log_emails_log_content-type', 'text/plain'),
(342, 131, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(343, 132, '_log_emails_log_from', 'Andrize Carla Cardozo Duarte <andrize_888@hotmail.com>'),
(344, 132, '_log_emails_log_content-type', 'text/plain'),
(345, 132, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(346, 136, '_log_emails_log_from', 'sebastiao Tomas Carvalho <sebastiao.tomas@yahoo.com.br>'),
(347, 136, '_log_emails_log_content-type', 'text/plain'),
(348, 136, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(349, 138, '_log_emails_log_from', 'Andrize Carla Cardozo Duarte <andrize_888@hotmail.com>'),
(350, 138, '_log_emails_log_content-type', 'text/plain'),
(351, 138, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(352, 144, '_log_emails_log_from', 'Maria Ribeiro <recantopastel@gmail.com>'),
(353, 144, '_log_emails_log_content-type', 'text/plain'),
(354, 144, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(355, 145, '_log_emails_log_from', 'Maria Ribeiro <recantopastel@gmail.com>'),
(356, 145, '_log_emails_log_content-type', 'text/plain'),
(357, 145, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(358, 146, '_log_emails_log_from', 'Maria Ribeiro <recantopastel@gmail.com>'),
(359, 146, '_log_emails_log_content-type', 'text/plain'),
(360, 146, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(361, 147, '_log_emails_log_from', 'Maria Ribeiro <recantopastel@gmail.com>'),
(362, 147, '_log_emails_log_content-type', 'text/plain'),
(363, 147, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(364, 148, '_log_emails_log_from', 'Maria Ribeiro <recantopastel@gmail.com>'),
(365, 148, '_log_emails_log_content-type', 'text/plain'),
(366, 148, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(367, 149, '_log_emails_log_from', 'DARCELIA QUINTAO <darceliaturismo@yahoo.com.br>'),
(368, 149, '_log_emails_log_content-type', 'text/plain'),
(369, 149, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(370, 150, '_log_emails_log_from', 'DARCELIA QUINTAO <darceliaturismo@yahoo.com.br>'),
(371, 150, '_log_emails_log_content-type', 'text/plain'),
(372, 150, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(373, 152, '_log_emails_log_from', 'Joana Angélica Oliveira Gonçalves <arquiteturaog@gmail.com.br>'),
(374, 152, '_log_emails_log_content-type', 'text/plain'),
(375, 152, '_log_emails_log_to', 'contato@turismovaledoaco.com.br'),
(376, 154, '_wp_attached_file', '2017/06/OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO.jpg'),
(377, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:640;s:4:"file";s:48:"2017/06/OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO-768x256.jpg";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO-1024x341.jpg";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# Fim do conteúdo da tabela `wp_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_posts` existente
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Estrutura da tabela `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-01-31 15:00:46', '2017-01-31 17:00:46', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/mata/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2017-01-31 15:00:46', '2017-01-31 17:00:46', '', 0, 'http://localhost/mata/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-01-31 16:18:44', '2017-01-31 18:18:44', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2017-01-31 16:18:44', '2017-01-31 18:18:44', '', 0, 'http://localhost/mata/?page_id=5', 0, 'page', '', 0),
(7, 1, '2017-01-31 16:18:57', '2017-01-31 18:18:57', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2017-01-31 16:18:57', '2017-01-31 18:18:57', '', 0, 'http://localhost/mata/?page_id=7', 0, 'page', '', 0),
(9, 1, '2017-01-31 16:19:17', '2017-01-31 18:19:17', '', 'Formulario cadastro', '', 'publish', 'closed', 'closed', '', 'form-cadastro', '', '', '2017-01-31 16:33:22', '2017-01-31 18:33:22', '', 0, 'http://localhost/mata/?page_id=9', 0, 'page', '', 0),
(11, 1, '2017-01-31 16:19:32', '2017-01-31 18:19:32', '', 'Olhar dos visitantes', '', 'publish', 'closed', 'closed', '', 'olhar-dos-visitantes', '', '', '2017-01-31 16:19:32', '2017-01-31 18:19:32', '', 0, 'http://localhost/mata/?page_id=11', 0, 'page', '', 0),
(13, 1, '2017-01-31 16:19:44', '2017-01-31 18:19:44', '', 'Parceiro', '', 'publish', 'closed', 'closed', '', 'parceiro', '', '', '2017-01-31 16:19:44', '2017-01-31 18:19:44', '', 0, 'http://localhost/mata/?page_id=13', 0, 'page', '', 0),
(15, 1, '2017-01-31 16:19:55', '2017-01-31 18:19:55', '', 'Parceiros', '', 'publish', 'closed', 'closed', '', 'parceiros', '', '', '2017-01-31 16:19:55', '2017-01-31 18:19:55', '', 0, 'http://localhost/mata/?page_id=15', 0, 'page', '', 0),
(18, 1, '2017-01-31 16:20:10', '2017-01-31 18:20:10', '', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2017-01-31 16:20:10', '2017-01-31 18:20:10', '', 0, 'http://localhost/mata/?page_id=18', 0, 'page', '', 0),
(20, 1, '2017-01-31 17:27:33', '2017-01-31 19:27:33', '', '200', '', 'inherit', 'open', 'closed', '', '200', '', '', '2017-01-31 17:27:33', '2017-01-31 19:27:33', '', 0, 'http://localhost/mata/wp-content/uploads/2017/01/200.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-01-31 17:27:46', '2017-01-31 19:27:46', '', '200-1', '', 'inherit', 'open', 'closed', '', '200-1', '', '', '2017-01-31 17:27:46', '2017-01-31 19:27:46', '', 0, 'http://localhost/mata/wp-content/uploads/2017/01/200-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-01-31 17:27:48', '2017-01-31 19:27:48', '', '200-2', '', 'inherit', 'open', 'closed', '', '200-2', '', '', '2017-01-31 17:27:48', '2017-01-31 19:27:48', '', 0, 'http://localhost/mata/wp-content/uploads/2017/01/200-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-01-31 17:30:23', '2017-01-31 19:30:23', '', 'donheldercamera', '', 'inherit', 'open', 'closed', '', 'donheldercamera', '', '', '2017-01-31 17:30:23', '2017-01-31 19:30:23', '', 0, 'http://localhost/mata/wp-content/uploads/2017/01/donheldercamera.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-01-31 17:30:24', '2017-01-31 19:30:24', '', 'logos-localiza', '', 'inherit', 'open', 'closed', '', 'logos-localiza', '', '', '2017-01-31 17:30:24', '2017-01-31 19:30:24', '', 0, 'http://localhost/mata/wp-content/uploads/2017/01/logos-localiza.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-01-31 17:30:27', '2017-01-31 19:30:27', '', 'padraologowp-01', '', 'inherit', 'open', 'closed', '', 'padraologowp-01', '', '', '2017-01-31 17:30:27', '2017-01-31 19:30:27', '', 0, 'http://localhost/mata/wp-content/uploads/2017/01/padraologowp-01.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2017-01-31 17:34:30', '2017-01-31 19:34:30', '', 'slider id - banner', '', 'publish', 'closed', 'closed', '', 'slider-id-banner', '', '', '2017-01-31 17:34:30', '2017-01-31 19:34:30', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=26', 0, 'ilmss', '', 0),
(28, 1, '2017-01-31 17:35:00', '2017-01-31 19:35:00', '', 'slider id - parceiros', '', 'publish', 'closed', 'closed', '', 'slider-id-parceiros', '', '', '2017-01-31 17:35:00', '2017-01-31 19:35:00', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=28', 0, 'ilmss', '', 0),
(29, 1, '2017-01-31 17:36:33', '2017-01-31 19:36:33', '', 'texto - cadastro', '', 'publish', 'closed', 'closed', '', 'texto-cadastro', '', '', '2017-02-12 10:10:32', '2017-02-12 12:10:32', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=29', 0, 'ilmss', '', 0),
(30, 1, '2017-01-31 17:37:06', '2017-01-31 19:37:06', '', 'texto - contato', '', 'publish', 'closed', 'closed', '', 'texto-contato', '', '', '2017-02-15 18:08:22', '2017-02-15 20:08:22', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=30', 0, 'ilmss', '', 0),
(32, 1, '2017-01-31 18:06:52', '2017-01-31 20:06:52', '', 'topo - facebook', '', 'publish', 'closed', 'closed', '', 'topo-facebook', '', '', '2017-02-17 23:07:46', '2017-02-18 01:07:46', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=32', 0, 'ilmss', '', 0),
(33, 1, '2017-01-31 18:07:08', '2017-01-31 20:07:08', '', 'topo - frase', '', 'publish', 'closed', 'closed', '', 'topo-frase', '', '', '2017-02-15 17:56:14', '2017-02-15 19:56:14', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=33', 0, 'ilmss', '', 0),
(34, 1, '2017-01-31 18:07:35', '2017-01-31 20:07:35', '', 'topo - instagram', '', 'publish', 'closed', 'closed', '', 'topo-instagram', '', '', '2017-01-31 18:07:35', '2017-01-31 20:07:35', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=34', 0, 'ilmss', '', 0),
(35, 1, '2017-01-31 18:07:58', '2017-01-31 20:07:58', '', 'topo - youtube', '', 'publish', 'closed', 'closed', '', 'topo__youtube', '', '', '2017-01-31 18:08:55', '2017-01-31 20:08:55', '', 0, 'http://localhost/mata/?post_type=ilmss&#038;p=35', 0, 'ilmss', '', 0),
(36, 1, '2017-02-02 10:31:30', '2017-02-02 12:31:30', '', 'DSC05031', '', 'inherit', 'open', 'closed', '', 'dsc05031', '', '', '2017-02-02 10:31:30', '2017-02-02 12:31:30', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/DSC05031.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2017-02-07 17:30:22', '2017-02-07 19:30:22', 'O Site Vale do Aço - Destino Turístico  é mais uma janela que se abre para o desenvolvimento do turismo regional e um  relevante instrumento de divulgação dos atrativos locais, que vão muito além do aço. Localizado no Leste de Minas Gerais, o Vale do Aço<span class="x_gmail-apple-converted-space"> </span><span class="x_gmail-textexposedshow">é conhecido mundialmente por suas indústrias de grande porte e pela potencialidade do seu solo. Mas, para além das grandes corporações e riqueza industrial, há também um grande apelo cultural, uma culinária diversificada, áreas rurais de grande beleza e a tradicional hospitalidade mineira, fatores suficientes para influenciar a inovação e diversificação da economia local.</span>\r\n<p class="p1"><span class="s1">Encabeçado pelo Sebrae e pelo Circuito Turístico Mata Atlântica de Minas, inicia-se, em 2011, o Projeto Turismo no Vale, com o propósito de capacitar e orientar empreendedores locais para a exploração desses filões econômicos. Assim, as primeiras ações do Projeto consistiram na elaboração do diagnóstico turístico da região e da pesquisa de mercado, consultorias especializadas, além de palestras de sensibilização junto ao empresariado e capacitação especializada na Cultura da Cooperação. Oito municípios participam do Projeto – Açucena, Belo Oriente, Coronel Fabriciano, Ipatinga, Marliéria, Santana do Paraíso, São Domingos do Prata e Timóteo. Juntos, eles abrigam uma população de aproximadamente meio milhão de pessoas. Foram catalogados, na região, cerca de 198 atrativos turísticos, sendo 50 naturais, 81 culturais e 67 de eventos permanentes, além de mais de 100 serviços de gastronomia, incluindo os prestigiados festivais “Comida diButeco”, “Rota dos Sabores” e “Ipatinga Gourmet”. Diante deste quadro, o Projeto visa transformar o Vale do Aço, até 2020, em um dos cinco principais destinos de eventos e convenções de Minas.</span></p>\r\n<p class="p1"><span class="s1">Baseado na premissa de que é necessário estimular a cadeia produtiva do turismo de eventos, captando e atraindo negócios, o Projeto arregimentou parceiros de peso, como o Vale do Aço Convention&amp;Visitors Bureau (VAC&amp;VB), Sindhorb, Sindcomércio, Sindvest, Instituto Cenibra, Fundação Aperam e Instituto Cultural Usiminas. Em 2014, um minucioso plano de marketing detectou quatro pilares básicos na região: Turismo de Negócios e Eventos, Ecoturismo e Turismo Fotográfico, Turismo Rural e de Aventura, Turismo Cultural e Religioso. Em 2015, as ações concentraram-se na formação de um grupo de empreendedores e na criação da marca Vale do Aço – Destino Turístico.</span></p>\r\nEmbasado no lema “o Vale além do aço”, o Projeto prossegue com as tarefas de manutenção do grupo e adesão de novos empreendedores, bem como de sua  operacionalização. Para 2017, os participantes do projeto elaboraram cronograma de atividades, incluindo o lançamento do Site Vale do Aço – Destino Turístico, a realização de um Seminário de Capacitação para Observação de Aves,  Concurso de Dança – Etapa Circuito Mineiro de Dança, Mostra de Moda do Vale do Aço e a realização da III Feira de Turismo Regional.', 'Histórico do projeto', '', 'publish', 'open', 'open', '', 'historico-do-projeto', '', '', '2017-02-15 17:59:07', '2017-02-15 19:59:07', '', 0, 'http://localhost/mata/?p=38', 0, 'post', '', 0),
(44, 1, '2017-02-10 14:17:05', '2017-02-10 16:17:05', '', 'tirar-o-folego-lagoas', '', 'inherit', 'open', 'closed', '', 'tirar-o-folego-lagoas', '', '', '2017-02-10 14:17:05', '2017-02-10 16:17:05', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/tirar-o-folego-lagoas.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2017-02-10 14:21:04', '2017-02-10 16:21:04', '', 'tirar-o-folego-lagoas2', '', 'inherit', 'open', 'closed', '', 'tirar-o-folego-lagoas2', '', '', '2017-02-10 14:21:04', '2017-02-10 16:21:04', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/tirar-o-folego-lagoas2.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2017-02-11 16:54:05', '2017-02-11 18:54:05', '', 'ipatinga3', '', 'inherit', 'open', 'closed', '', 'ipatinga3', '', '', '2017-02-11 16:54:05', '2017-02-11 18:54:05', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga3.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-02-11 16:54:21', '2017-02-11 18:54:21', '', 'ipatinga2', '', 'inherit', 'open', 'closed', '', 'ipatinga2', '', '', '2017-02-11 16:54:21', '2017-02-11 18:54:21', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2017-02-11 16:54:39', '2017-02-11 18:54:39', '', 'ipatinga', '', 'inherit', 'open', 'closed', '', 'ipatinga', '', '', '2017-02-11 16:54:39', '2017-02-11 18:54:39', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2017-02-11 16:54:56', '2017-02-11 18:54:56', '', 'fabriciano', '', 'inherit', 'open', 'closed', '', 'fabriciano', '', '', '2017-02-11 16:54:56', '2017-02-11 18:54:56', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/fabriciano.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-02-11 16:55:17', '2017-02-11 18:55:17', '', 'ipaneminha', '', 'inherit', 'open', 'closed', '', 'ipaneminha', '', '', '2017-02-11 16:55:17', '2017-02-11 18:55:17', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipaneminha.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-02-11 16:55:32', '2017-02-11 18:55:32', '', 'paraiso3', '', 'inherit', 'open', 'closed', '', 'paraiso3', '', '', '2017-02-13 12:29:18', '2017-02-13 14:29:18', '', 38, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso3.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-02-11 16:55:48', '2017-02-11 18:55:48', '', 'paraiso2', '', 'inherit', 'open', 'closed', '', 'paraiso2', '', '', '2017-02-11 16:55:48', '2017-02-11 18:55:48', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-02-11 16:56:05', '2017-02-11 18:56:05', '', 'paraiso', '', 'inherit', 'open', 'closed', '', 'paraiso', '', '', '2017-02-11 16:56:05', '2017-02-11 18:56:05', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2017-02-11 17:01:36', '2017-02-11 19:01:36', '', 'sao-domingos_do-prata', '', 'inherit', 'open', 'closed', '', 'sao-domingos_do-prata', '', '', '2017-02-11 17:01:36', '2017-02-11 19:01:36', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/sao-domingos_do-prata.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-02-11 17:05:43', '2017-02-11 19:05:43', '', 'timoteo_01', '', 'inherit', 'open', 'closed', '', 'timoteo_01', '', '', '2017-02-11 17:05:43', '2017-02-11 19:05:43', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/timoteo_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-02-11 17:05:59', '2017-02-11 19:05:59', '', 'timoteo_02', '', 'inherit', 'open', 'closed', '', 'timoteo_02', '', '', '2017-02-11 17:05:59', '2017-02-11 19:05:59', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/timoteo_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-02-11 17:50:17', '2017-02-11 19:50:17', '', 'CIRCUITO', '', 'inherit', 'open', 'closed', '', 'circuito', '', '', '2017-02-11 17:50:17', '2017-02-11 19:50:17', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/CIRCUITO.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2017-02-11 17:50:19', '2017-02-11 19:50:19', '', 'CONVENCION', '', 'inherit', 'open', 'closed', '', 'convencion', '', '', '2017-02-11 17:50:19', '2017-02-11 19:50:19', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/CONVENCION.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2017-02-11 17:50:20', '2017-02-11 19:50:20', '', 'DESTINO', '', 'inherit', 'open', 'closed', '', 'destino', '', '', '2017-02-11 17:50:20', '2017-02-11 19:50:20', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/DESTINO.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2017-02-11 17:50:22', '2017-02-11 19:50:22', '', 'INSTITUTO', '', 'inherit', 'open', 'closed', '', 'instituto', '', '', '2017-02-11 17:50:22', '2017-02-11 19:50:22', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/INSTITUTO.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2017-02-11 17:50:24', '2017-02-11 19:50:24', '', 'SEBRAE', '', 'inherit', 'open', 'closed', '', 'sebrae', '', '', '2017-02-11 17:50:24', '2017-02-11 19:50:24', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/SEBRAE.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2017-02-11 17:50:26', '2017-02-11 19:50:26', '', 'SINDHORB', '', 'inherit', 'open', 'closed', '', 'sindhorb', '', '', '2017-02-11 17:50:26', '2017-02-11 19:50:26', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/SINDHORB.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2017-02-11 17:50:28', '2017-02-11 19:50:28', '', 'TURISMO-NO-VALE', '', 'inherit', 'open', 'closed', '', 'turismo-no-vale', '', '', '2017-02-11 17:50:28', '2017-02-11 19:50:28', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/TURISMO-NO-VALE.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2017-02-11 17:54:53', '2017-02-11 19:54:53', '', 'CIRCUITO', '', 'inherit', 'open', 'closed', '', 'circuito-2', '', '', '2017-02-11 17:54:53', '2017-02-11 19:54:53', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/CIRCUITO-1.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2017-02-11 17:54:55', '2017-02-11 19:54:55', '', 'CONVENCION', '', 'inherit', 'open', 'closed', '', 'convencion-2', '', '', '2017-02-11 17:54:55', '2017-02-11 19:54:55', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/CONVENCION-1.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2017-02-11 17:54:57', '2017-02-11 19:54:57', '', 'DESTINO', '', 'inherit', 'open', 'closed', '', 'destino-2', '', '', '2017-02-11 17:54:57', '2017-02-11 19:54:57', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/DESTINO-1.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2017-02-11 17:54:59', '2017-02-11 19:54:59', '', 'INSTITUTO', '', 'inherit', 'open', 'closed', '', 'instituto-2', '', '', '2017-02-11 17:54:59', '2017-02-11 19:54:59', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/INSTITUTO-1.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2017-02-11 17:55:00', '2017-02-11 19:55:00', '', 'SEBRAE', '', 'inherit', 'open', 'closed', '', 'sebrae-2', '', '', '2017-02-11 17:55:00', '2017-02-11 19:55:00', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/SEBRAE-1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2017-02-11 17:55:02', '2017-02-11 19:55:02', '', 'SINDHORB', '', 'inherit', 'open', 'closed', '', 'sindhorb-2', '', '', '2017-02-11 17:55:02', '2017-02-11 19:55:02', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/SINDHORB-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2017-02-11 17:55:04', '2017-02-11 19:55:04', '', 'TURISMO-NO-VALE', '', 'inherit', 'open', 'closed', '', 'turismo-no-vale-2', '', '', '2017-02-11 17:55:04', '2017-02-11 19:55:04', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/TURISMO-NO-VALE-1.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2017-02-14 00:35:24', '2017-02-14 02:35:24', '', 'Parceiros', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2017-02-21 22:36:00', '2017-02-22 01:36:00', '', 0, 'http://localhost/mata/?post_type=kwlogos&#038;p=92', 0, 'kwlogos', '', 0),
(102, 1, '2017-02-15 10:14:26', '2017-02-15 12:14:26', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2017-02-15 10:14:26', '2017-02-15 12:14:26', '', 0, 'http://localhost/mata/newsletter/', 0, 'page', '', 0),
(103, 1, '2017-02-15 10:15:10', '2017-02-15 12:15:10', '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <style type="text/css" media="all">\r\n            a {\r\n                text-decoration: none;\r\n                color: #0088cc;\r\n            }\r\n        </style>\r\n    </head>\r\n    <body style="background-color: #ddd; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; color: #666; margin: 0 auto; padding: 0;">\r\n        <br>\r\n        <table align="center">\r\n            <tr>\r\n                <td style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; color: #666;">\r\n                    <div style="text-align: left; max-width: 500px; border-top: 10px solid #43A4D0; border-bottom: 3px solid #43A4D0;">\r\n                        <div style="padding: 10px 20px; color: #000; font-size: 20px; background-color: #EFEFEF; border-bottom: 1px solid #ddd">\r\n                            Destino Turístico Vale do Aço                        </div>\r\n                        <div style="padding: 20px; background-color: #fff; line-height: 18px">\r\n\r\n                            <p>Hi,</p>\r\n<p>A newsletter subscription request for this email address was received. Please confirm it by <a href="http://localhost/mata/?na=c&nk=1-01baeb0258"><strong>clicking here</strong></a>. If you cannot click the link, please use the following link:</p>\r\n<p>http://localhost/mata/?na=c&nk=1-01baeb0258</p>\r\n<p>If you did not make this subscription request, just ignore this message.</p>\r\n<p>Thank you!<br /> <a href="http://localhost/mata/">http://localhost/mata/</a></p>\r\n                        </div>\r\n\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n    </body>\r\n</html>', 'Please confirm subscription - Destino Turístico Vale do Aço newsletter', '', 'publish', 'closed', 'closed', '', 'please-confirm-subscription-destino-turistico-vale-do-aco-newsletter', '', '', '2017-02-15 10:15:10', '2017-02-15 12:15:10', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=103', 0, 'log_emails_log', '', 0),
(105, 0, '2017-02-15 12:21:39', '2017-02-15 14:21:39', 'OLÁ..NÃO CONSIGO CADASTRAR MINHA AGENCIA.\r\nO SISTEMA NÃO ACEITA MEU SITE... DIGITO E ELE CONTINUA PEDINDO...O QUE FAÇO?? MEU ZAP 31 98892 7525', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato', '', '', '2017-02-15 12:21:39', '2017-02-15 14:21:39', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=105', 0, 'log_emails_log', '', 0),
(106, 1, '2017-02-15 13:09:02', '2017-02-15 15:09:02', '', 'acucena', '', 'inherit', 'open', 'closed', '', 'acucena', '', '', '2017-02-15 13:09:02', '2017-02-15 15:09:02', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/acucena.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-02-15 13:09:16', '2017-02-15 15:09:16', '', 'acucena2', '', 'inherit', 'open', 'closed', '', 'acucena2', '', '', '2017-02-15 13:09:16', '2017-02-15 15:09:16', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/acucena2.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2017-02-15 13:09:29', '2017-02-15 15:09:29', '', 'acucena23', '', 'inherit', 'open', 'closed', '', 'acucena23', '', '', '2017-02-15 13:09:29', '2017-02-15 15:09:29', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/acucena23.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2017-02-15 13:09:45', '2017-02-15 15:09:45', '', 'belo-oriente', '', 'inherit', 'open', 'closed', '', 'belo-oriente', '', '', '2017-02-15 13:09:45', '2017-02-15 15:09:45', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/belo-oriente.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-02-15 13:10:02', '2017-02-15 15:10:02', '', 'belo-oriente2', '', 'inherit', 'open', 'closed', '', 'belo-oriente2', '', '', '2017-02-15 13:10:02', '2017-02-15 15:10:02', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/belo-oriente2.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2017-02-15 13:10:20', '2017-02-15 15:10:20', '', 'fabriciano', '', 'inherit', 'open', 'closed', '', 'fabriciano-2', '', '', '2017-02-15 13:10:20', '2017-02-15 15:10:20', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/fabriciano-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-02-15 13:10:35', '2017-02-15 15:10:35', '', 'ipatinga', '', 'inherit', 'open', 'closed', '', 'ipatinga-2', '', '', '2017-02-15 13:10:35', '2017-02-15 15:10:35', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2017-02-15 13:10:50', '2017-02-15 15:10:50', '', 'ipatinga2', '', 'inherit', 'open', 'closed', '', 'ipatinga2-2', '', '', '2017-02-15 13:10:50', '2017-02-15 15:10:50', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2017-02-15 13:11:06', '2017-02-15 15:11:06', '', 'ipatinga3', '', 'inherit', 'open', 'closed', '', 'ipatinga3-2', '', '', '2017-02-15 13:11:06', '2017-02-15 15:11:06', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/ipatinga3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2017-02-15 13:11:20', '2017-02-15 15:11:20', '', 'marlieria', '', 'inherit', 'open', 'closed', '', 'marlieria', '', '', '2017-02-15 13:11:20', '2017-02-15 15:11:20', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/marlieria.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2017-02-15 13:11:35', '2017-02-15 15:11:35', '', 'marlieria2', '', 'inherit', 'open', 'closed', '', 'marlieria2', '', '', '2017-02-15 13:11:35', '2017-02-15 15:11:35', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/marlieria2.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2017-02-15 13:11:48', '2017-02-15 15:11:48', '', 'marlieria3', '', 'inherit', 'open', 'closed', '', 'marlieria3', '', '', '2017-02-15 13:11:48', '2017-02-15 15:11:48', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/marlieria3.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-02-15 13:12:02', '2017-02-15 15:12:02', '', 'marlieria4', '', 'inherit', 'open', 'closed', '', 'marlieria4', '', '', '2017-02-15 13:12:02', '2017-02-15 15:12:02', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/marlieria4.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2017-02-15 13:12:18', '2017-02-15 15:12:18', '', 'paraiso', '', 'inherit', 'open', 'closed', '', 'paraiso-2', '', '', '2017-02-15 13:12:18', '2017-02-15 15:12:18', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2017-02-15 13:12:34', '2017-02-15 15:12:34', '', 'paraiso2', '', 'inherit', 'open', 'closed', '', 'paraiso2-2', '', '', '2017-02-15 13:12:34', '2017-02-15 15:12:34', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2017-02-15 13:12:50', '2017-02-15 15:12:50', '', 'paraiso3', '', 'inherit', 'open', 'closed', '', 'paraiso3-2', '', '', '2017-02-15 13:12:50', '2017-02-15 15:12:50', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/paraiso3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2017-02-15 13:13:02', '2017-02-15 15:13:02', '', 'sao-domingos_do-prata', '', 'inherit', 'open', 'closed', '', 'sao-domingos_do-prata-2', '', '', '2017-02-15 13:13:02', '2017-02-15 15:13:02', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/sao-domingos_do-prata-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-02-15 13:13:17', '2017-02-15 15:13:17', '', 'timoteo_01', '', 'inherit', 'open', 'closed', '', 'timoteo_01-2', '', '', '2017-02-15 13:13:17', '2017-02-15 15:13:17', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/timoteo_01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-02-15 13:13:32', '2017-02-15 15:13:32', '', 'timoteo_02', '', 'inherit', 'open', 'closed', '', 'timoteo_02-2', '', '', '2017-02-15 13:13:32', '2017-02-15 15:13:32', '', 0, 'http://localhost/mata/wp-content/uploads/2017/02/timoteo_02-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 0, '2017-02-16 09:50:48', '2017-02-16 11:50:48', 'Bom dia!\r\nNao consigo cadastrar  nosso empreendimento\r\n\r\nGrata', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-2', '', '', '2017-02-16 09:50:48', '2017-02-16 11:50:48', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=129', 0, 'log_emails_log', '', 0),
(130, 0, '2017-02-16 15:05:49', '2017-02-16 17:05:49', 'Boa tarde! Tudo bem?!\r\nGostaríamos de incluir o Shopping como opção de lazer. Qual o procedimento?', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-3', '', '', '2017-02-16 15:05:49', '2017-02-16 17:05:49', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=130', 0, 'log_emails_log', '', 0),
(131, 0, '2017-02-16 17:48:27', '2017-02-16 19:48:27', 'Prezados,\r\n\r\nEstou tentando cadastrar o evento Cheff &amp; Amigos e não consigo. Aparece a mensagem de erro interno. \r\n\r\nPosso enviar os dados do evento para vocês por e-mail para que o mesmo seja cadastrado?\r\n\r\nFiz questão de tentar algumas vezes me atentando as especificidades de cada um dos dados necessários ao cadastro, mas como a própria mensagem já diz, é um erro interno.\r\n\r\nAtt,\r\n\r\nMarcos Carvalho ', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-4', '', '', '2017-02-16 17:48:27', '2017-02-16 19:48:27', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=131', 0, 'log_emails_log', '', 0),
(132, 0, '2017-02-17 09:42:19', '2017-02-17 11:42:19', 'Bom dia, sou diretora do grupo de artesão de Corornel Fabriciano, visitando o site, percebi que o nome do grupo está errado. Existe a possibilidade de correção?      O nome correto é ARTE MINAS FABRI, e não ArtMinas como está no site.\r\nAguardo retorno e desde já agradeço\r\n', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-5', '', '', '2017-02-17 09:42:19', '2017-02-17 11:42:19', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=132', 0, 'log_emails_log', '', 0),
(136, 0, '2017-03-15 20:39:33', '2017-03-15 23:39:33', 'Boa Noite !\r\nFiz um cadastro do meu sítio no site , e não vejo a publicação dele gostaria de saber se esta ok se preciso alterar alguma coisa. Sitio recanto aguas claras ', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-6', '', '', '2017-03-15 20:39:33', '2017-03-15 23:39:33', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=136', 0, 'log_emails_log', '', 0),
(138, 0, '2017-03-31 08:58:54', '2017-03-31 11:58:54', 'Bom dia, \r\nsou responsável pelo grupo ARTE MINAS FABRI, e jáenciei uma mensagem a algum tempo, comunicando q o nome do grupo está errado no site. Até o momento não obtive resposta. É possível fazer a correção?? Aguardo retorno.\r\nGrata ', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-7', '', '', '2017-03-31 08:58:54', '2017-03-31 11:58:54', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=138', 0, 'log_emails_log', '', 0),
(144, 0, '2017-05-21 09:23:46', '2017-05-21 12:23:46', 'Referente o meu empreendimento\r\nhttp://localhost/mata/parceiro/?id=259\r\nFavor excluir pois estou dando baixa\r\nApós inauguração de outro volto a contactar o site\r\n\r\nObrigada\r\nMaria Ribeiro', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-8', '', '', '2017-05-21 09:23:46', '2017-05-21 12:23:46', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=144', 0, 'log_emails_log', '', 0),
(145, 0, '2017-05-21 09:23:53', '2017-05-21 12:23:53', 'Referente o meu empreendimento\r\nhttp://localhost/mata/parceiro/?id=259\r\nFavor excluir pois estou dando baixa\r\nApós inauguração de outro volto a contactar o site\r\n\r\nObrigada\r\nMaria Ribeiro', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-9', '', '', '2017-05-21 09:23:53', '2017-05-21 12:23:53', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=145', 0, 'log_emails_log', '', 0),
(146, 0, '2017-05-21 09:23:53', '2017-05-21 12:23:53', 'Referente o meu empreendimento\r\nhttp://localhost/mata/parceiro/?id=259\r\nFavor excluir pois estou dando baixa\r\nApós inauguração de outro volto a contactar o site\r\n\r\nObrigada\r\nMaria Ribeiro', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-10', '', '', '2017-05-21 09:23:53', '2017-05-21 12:23:53', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=146', 0, 'log_emails_log', '', 0),
(147, 0, '2017-05-21 09:24:00', '2017-05-21 12:24:00', 'Referente o meu empreendimento\r\nhttp://localhost/mata/parceiro/?id=259\r\nFavor excluir pois estou dando baixa\r\nApós inauguração de outro volto a contactar o site\r\n\r\nObrigada\r\nMaria Ribeiro', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-11', '', '', '2017-05-21 09:24:00', '2017-05-21 12:24:00', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=147', 0, 'log_emails_log', '', 0),
(148, 0, '2017-05-21 09:24:01', '2017-05-21 12:24:01', 'Referente o meu empreendimento\r\nhttp://localhost/mata/parceiro/?id=259\r\nFavor excluir pois estou dando baixa\r\nApós inauguração de outro volto a contactar o site\r\n\r\nObrigada\r\nMaria Ribeiro', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-12', '', '', '2017-05-21 09:24:01', '2017-05-21 12:24:01', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=148', 0, 'log_emails_log', '', 0),
(149, 0, '2017-05-22 14:20:20', '2017-05-22 17:20:20', 'NÃO CONSIGO CADASTRAR MINHA AGENCIA. NO FINAL CLICO EM CADASTRAR EMPREENDIMENTO E NÃO VAI', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-13', '', '', '2017-05-22 14:20:20', '2017-05-22 17:20:20', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=149', 0, 'log_emails_log', '', 0),
(150, 0, '2017-05-22 14:20:28', '2017-05-22 17:20:28', 'NÃO CONSIGO CADASTRAR MINHA AGENCIA. NO FINAL CLICO EM CADASTRAR EMPREENDIMENTO E NÃO VAI', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-14', '', '', '2017-05-22 14:20:28', '2017-05-22 17:20:28', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=150', 0, 'log_emails_log', '', 0),
(152, 0, '2017-06-05 14:16:24', '2017-06-05 17:16:24', 'Prezado Sr(a), somos uma empresa sediada em Coronel Fabriciano, MG, com foco  na elaboração  de projetos e gestão cultural atuando na preservação do  patrimônio cultural do Vale do Aço desde 2010,  através do desenvolvimento   de  instrumentos técnicos e legais de preservação, além de captação de recursos para municípios,  entidades e pessoas físicas atuantes no cenário cultural.  \r\nTendo conhecimento desta  iniciativa empreendedora, gostaríamos de mais informações sobre como podemos nos  integrar e contribuir  para o  programa/projeto Vale do Aço Destino turístico. \r\nDesde já agradeço a atenção. Att Joana, arquiteta urbanista. 31-988070488 31-36191090', 'Mensagem enviada pelo formulário de contato', '', 'publish', 'closed', 'closed', '', 'mensagem-enviada-pelo-formulario-de-contato-15', '', '', '2017-06-05 14:16:24', '2017-06-05 17:16:24', '', 0, 'http://localhost/mata/?post_type=log_emails_log&p=152', 0, 'log_emails_log', '', 0),
(154, 1, '2017-06-07 09:53:45', '2017-06-07 12:53:45', '', 'OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO', '', 'inherit', 'open', 'closed', '', 'outdoor-sala%cc%83o-do-livro-impressa%cc%83o', '', '', '2017-06-07 09:53:45', '2017-06-07 12:53:45', '', 0, 'http://localhost/mata/wp-content/uploads/2017/06/OUTDOOR-SALÃO-DO-LIVRO-IMPRESSÃO.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2017-07-27 13:21:11', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-27 13:21:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/mata/?p=159', 0, 'post', '', 0) ;

#
# Fim do conteúdo da tabela `wp_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_relationships` existente
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Estrutura da tabela `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(38, 38, 0) ;

#
# Fim do conteúdo da tabela `wp_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_taxonomy` existente
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Estrutura da tabela `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 5, 0),
(9, 9, 'category', '', 5, 0),
(10, 10, 'category', '', 5, 0),
(11, 11, 'category', '', 4, 0),
(12, 12, 'category', '', 4, 0),
(13, 13, 'category', '', 4, 0),
(14, 14, 'category', '', 2, 0),
(15, 15, 'category', '', 2, 0),
(16, 16, 'category', '', 2, 0),
(17, 17, 'category', '', 2, 0),
(18, 18, 'category', '', 7, 0),
(19, 19, 'category', '', 7, 0),
(20, 20, 'category', '', 6, 0),
(21, 21, 'category', '', 6, 0),
(22, 22, 'category', '', 3, 0),
(23, 23, 'category', '', 3, 0),
(24, 24, 'category', '', 3, 0),
(25, 25, 'category', '', 3, 0),
(26, 26, 'category', '', 3, 0),
(27, 27, 'category', '', 3, 0),
(28, 28, 'category', '', 3, 0),
(29, 29, 'category', '', 3, 0),
(30, 30, 'category', '', 3, 0),
(31, 31, 'category', '', 3, 0),
(32, 32, 'category', '', 3, 0),
(33, 33, 'category', '', 3, 0),
(34, 34, 'category', '', 3, 0),
(35, 35, 'category', '', 3, 0),
(36, 36, 'category', '', 3, 0),
(37, 37, 'category', '', 3, 0),
(38, 38, 'category', '', 0, 1),
(40, 40, 'category', '', 3, 0),
(41, 41, 'category', '', 3, 0),
(42, 42, 'category', '', 7, 0),
(43, 43, 'category', '', 7, 0),
(44, 44, 'category', '', 6, 0),
(45, 45, 'category', '', 0, 0),
(46, 46, 'category', '', 3, 0),
(47, 47, 'category', '', 6, 0),
(48, 48, 'category', '', 4, 0),
(49, 49, 'category', '', 4, 0),
(50, 50, 'category', '', 4, 0),
(51, 51, 'category', '', 4, 0),
(53, 53, 'category', '', 4, 0),
(54, 54, 'category', '', 3, 0),
(55, 55, 'category', '', 3, 0),
(56, 56, 'category', '', 3, 0),
(57, 57, 'category', '', 3, 0) ;

#
# Fim do conteúdo da tabela `wp_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_termmeta` existente
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Estrutura da tabela `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_termmeta`
#

#
# Fim do conteúdo da tabela `wp_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_terms` existente
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Estrutura da tabela `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'CATEGORIAS ATRATIVOS', 'cat_at', 0),
(3, 'CATEGORIAS INFORMAÇÕES ÚTEIS', 'cat_iu', 0),
(4, 'CATEGORIAS ONDE COMER', 'cat_oc', 0),
(5, 'CATEGORIAS ONDE FICAR', 'cat_of', 0),
(6, 'CATEGORIAS LAZER', 'cat_lz', 0),
(7, 'CATEGORIAS EVENTOS', 'cat_ev', 0),
(8, 'Hotéis', 'hoteis', 0),
(9, 'Pousadas', 'pousadas', 0),
(10, 'Sítios de Aluguel', 'sitios-de-aluguel', 0),
(11, 'Bares', 'bares', 0),
(12, 'Cafeterias', 'cafeterias', 0),
(13, 'Restaurantes', 'restaurantes', 0),
(14, 'Cultural e Religioso', 'cultural-e-religioso', 0),
(15, 'Ecoturismo e Fotográfico', 'ecoturismo-e-fotografico', 0),
(16, 'Turismo de Negócios e eventos', 'turismo-de-negocios-e-eventos', 0),
(17, 'Turismo Rural e de Aventura', 'turismo-rural-e-de-aventura', 0),
(18, 'Lazer', 'lazer', 0),
(19, 'Negócios', 'negocios', 0),
(20, 'Cinema', 'cinema', 0),
(21, 'Boates', 'boate', 0),
(22, 'Agências de viagem', 'agencias-de-viagem', 0),
(23, 'Agências de receptivo turístico', 'agencias-de-receptivo-turistico', 0),
(24, 'Aluguel de vans', 'aluguel-de-vans', 0),
(25, 'Associação de turismo', 'associacao-de-turismo', 0),
(26, 'Clubes', 'clubes', 0),
(27, 'Delegacia de polícia', 'delegacia-de-policia', 0),
(28, 'Empresa de eventos', 'empresa-de-eventos', 0),
(29, 'Galerias', 'galerias', 0),
(30, 'Hospitais', 'hospitais', 0),
(31, 'Montador de feiras', 'montador-de-feiras', 0),
(32, 'Organizadores/Promotores de eventos', 'organizadorpromotor-de-eventos', 0),
(33, 'Orgãos oficiais de turismo', 'orgaos-oficiais-de-turismo', 0),
(34, 'Salão de festas', 'salao-de-festas', 0),
(35, 'Serviço de taxi', 'servico-de-taxi', 0),
(36, 'Teatros', 'teatro', 0),
(37, 'Agência de Publicidade', 'agencias-de-publicidade', 0),
(38, 'HISTÓRICO DO PROJETO', 'historio-do-projeto', 0),
(40, 'Motoclubes', 'motoclubes', 0),
(41, 'Ciclismo', 'ciclismo', 0),
(42, 'Moda', 'moda', 0),
(43, 'Cultural', 'cultural', 0),
(44, 'Visitação', 'passeio', 0),
(45, 'Time de Futebol', 'time-de-futebol', 0),
(46, 'Time de Futebol', 'time-de-futebol-cat_iu', 0),
(47, 'Clubes', 'clubes-cat_lz', 0),
(48, 'PADARIAS', 'padarias', 0),
(49, 'Lanchonetes', 'lanchonete', 0),
(50, 'Pizzarias', 'pizzaria', 0),
(51, 'Hamburguerias', 'hamburgueria', 0),
(53, 'Sorveterias', 'sorveteria', 0),
(54, 'Produtor Cultural', 'produtores-culturais', 0),
(55, 'Empório', 'emporio', 0),
(56, 'Produção de Vídeo', 'producao-de-video', 0),
(57, 'ARQUITETURA', 'arquitetura', 0) ;

#
# Fim do conteúdo da tabela `wp_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_usermeta` existente
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Estrutura da tabela `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '159'),
(17, 1, 'closedpostboxes_page', 'a:0:{}'),
(18, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:9:"authordiv";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&imgsize=thumbnail&hidetb=1&editor_expand=on&kwlogoscarousel_tab=pop'),
(20, 1, 'wp_user-settings-time', '1487187222'),
(21, 1, 'closedpostboxes_ilmss', 'a:0:{}'),
(22, 1, 'metaboxhidden_ilmss', 'a:0:{}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:"add-post-type-ilmss";i:1;s:12:"add-post_tag";}'),
(26, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:51:"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:96:"revisionsdiv,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_post', '2'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:"revisionsdiv";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}'),
(30, 1, 'closedpostboxes_kwlogos', 'a:0:{}'),
(31, 1, 'metaboxhidden_kwlogos', 'a:1:{i:0;s:7:"slugdiv";}'),
(32, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:19:"dashboard_right_now";}'),
(33, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(34, 1, 'session_tokens', 'a:1:{s:64:"461bb3624f58a9598c7f19a0b26e18c3ff2a5173fa8ba8392507030906143ff4";a:4:{s:10:"expiration";i:1502382065;s:2:"ip";s:15:"187.127.112.158";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1501172465;}}') ;

#
# Fim do conteúdo da tabela `wp_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_users` existente
#

DROP TABLE IF EXISTS `wp_users`;


#
# Estrutura da tabela `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BhLfVIOS.MSYrwHRzXjJT74dZ0x5mG/', 'admin', 'contato@turismovaledoaco.com.br', '', '2017-01-31 17:00:46', '', 0, 'admin') ;

#
# Fim do conteúdo da tabela `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

