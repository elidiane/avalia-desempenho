
<h2>Colaboradores</h2>

<table>
	<thead>
		<tr>
			<th>Matrícula</th>
			<th>Nome</th>
			<th>Lider</th>
			<th>Administrador</th>
		</tr>
	</thead>
	
	<tbody>
		<?php foreach($employees as $employee): ?>
		<tr>
			<td><?php echo $this->Html->link(
				$employee['Employee']['code'],
				array(
					'controller' => 'employees',
					'action'     => 'view',
					$employee['Employee']['id']
				)
			); ?></td>
				
			<td><?php echo $this->Html->link(
				$employee['Employee']['name'],
				array(
					'controller' => 'employees',
					'action'     => 'view',
					$employee['Employee']['id']
				)
			); ?></td>
			
			<td><?php echo $this->Html->link(
				($employee['Employee']['is_leader']) ? 'Sim' : 'Não',
				array(
					'controller' => 'employees',
					'action'     => 'view',
					$employee['Employee']['id']
				)
			); ?></td>
			
			<td><?php echo $this->Html->link(
				($employee['Employee']['is_admin']) ? 'Sim' : 'Não',
				array(
					'controller' => 'employees',
					'action'     => 'view',
					$employee['Employee']['id']
				)
			); ?></td>
		</tr>
		<?php endforeach; ?>
	<tbody>
</table>

<?php pr($employees); ?>
