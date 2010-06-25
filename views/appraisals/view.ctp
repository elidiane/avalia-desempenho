
<h2><?php echo $appraisal['Appraisal']['title'] ?></h2>
<p>Cargo: <?php echo $appraisal['Role']['title'] ?>.
<?php echo $this->Html->link(
	'Ver a descrição do cargo',
	array(
		'controller' => 'roles',
		'action' => 'simple_view',
		$appraisal['Role']['id']
	)
); ?></p>

<?php echo $this->Form->create('Appraisal'); ?>

<?php $g_index = 0; foreach($appraisal['Group'] as $group): $g_index++; ?>
<fieldset class="group group_<?php echo $g_index?>">
	<h3><?php echo $group['title'] ?></h3>
	
	<?php foreach($group['Question'] as $question){ ?>
	<fieldset class="question">
		<h4><?php echo $question['title']; ?></h4>
		<p><?php echo $question['description']; ?></p>
		
		<?php
		$options = array();
		foreach($question['Option'] as $option){
			$options[ (int) $option['id']] = $option['title'];
		} ?>
		
		<?php echo $this->Form->select(
			'Appraisal.'. $question['id'] .'.option', $options); ?>
		
	</fieldset>
	<?php } ?>

</fieldset>
<?php endforeach; ?>

<?php echo $this->Form->end('Enviar'); ?>

