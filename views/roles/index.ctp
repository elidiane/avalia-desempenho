
<h2>Cargos</h2>

<table>
	<thead>
		<tr>
			<th>Código</th>
			<th>Título</th>
		</tr>
	</thead>
	
	<tbody>
		<?php foreach($roles as $role): ?>
		<tr>
			<td><?php echo $this->Html->link(
				$role['Role']['code'],
				array(
					'controller' => 'roles',
					'action'     => 'view',
					$role['Role']['id']
				)
			); ?></td>
				
			<td><?php echo $this->Html->link(
				$role['Role']['title'],
				array(
					'controller' => 'roles',
					'action'     => 'view',
					$role['Role']['id']
				)
			); ?></td>
		</tr>
		<?php endforeach; ?>
	<tbody>
</table>

