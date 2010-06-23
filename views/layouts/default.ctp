<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Avaliação de desempenho</title>
	<meta name="author" content="Tarcísio Sassara" />
	<meta http-equiv="Content-Language" content="pt-br"/>
	
	<?php echo $this->Html->css(array(
		'reset-min.css',
		'fonts-min.css',
		'style.css'
	)); ?>
</head>

<body>
	
	<!-- Cabecalho -->
	<div id="header">
		<h1>Avaliação de desempenho</h1>
		
		<?php echo $this->element('menu');?>
	</div>
	<!-- Fim Cabecalho -->
	
	<!-- **************************** Conteúdo ***************************** -->
	<div id="content">
		<?php echo $content_for_layout; ?>
	</div>
	<!-- *************************** Fim Conteúdo ************************** -->
	
	<!-- Rodapé -->
	<div id="footer">
		<p>Avaliação de Desempenho</p>
	</div>
	<!-- Fim Rodapé -->

</body>
</html>
