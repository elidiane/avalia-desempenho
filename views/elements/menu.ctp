	
	<div id="menu">
		<ul>
			<li><?php echo $this->Html->link('home', array(
				'controller' => 'appraisals',
				'action' => 'index'
			)); ?></li>
			
			<li><?php echo $this->Html->link('Cargos', array(
				'controller' => 'roles',
				'action' => 'index'
			)); ?></li>
			
			<li><?php echo $this->Html->link('Colaboradores', array(
				'controller' => 'employees',
				'action' => 'index'
			)); ?></li>
			
			<li><?php echo $this->Html->link('Avaliações', array(
				'controller' => 'appraisals',
				'action' => 'index'
			)); ?></li>
		</ul>
	</div>

