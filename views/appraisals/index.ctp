
<h2>Avaliações</h2>

<table>
	<thead>
		<tr>
			<th>Cargo</th>
			<th>Titulo</th>
			<th>Criado por</th>
		</tr>
	</thead>
	
	<tbody>
		<?php foreach($appraisals as $appraisal): ?>
		<tr>
			<td><?php echo $this->Html->link(
				$appraisal['Role']['title'],
				array(
					'controller' => 'appraisals',
					'action'     => 'view',
					$appraisal['Appraisal']['id']
				)
			); ?></td>
			<td><?php echo $this->Html->link(
				$appraisal['Appraisal']['title'],
				array(
					'controller' => 'appraisals',
					'action'     => 'view',
					$appraisal['Appraisal']['id']
				)
			); ?></td>
			<td><?php echo $this->Html->link(
				$appraisal['Admin']['name'],
				array(
					'controller' => 'appraisals',
					'action'     => 'view',
					$appraisal['Appraisal']['id']
				)
			); ?></td>
		</tr>
		<?php endforeach; ?>
	<tbody>
</table>

