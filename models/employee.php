<?php

class Employee extends AppModel
{
	public $hasMany = array(
		'AppraisalCreated' => array(
			'className'     => 'Appraisal',
			'foreignKey'    => 'admin_id',
			'dependent'     => false
		),
		'LeaderInteraction' => array(
			'className'     => 'Interaction',
			'foreignKey'    => 'leader_id',
			'dependent'     => false
		),
		'EmployeeInteraction' => array(
			'className'     => 'Interaction',
			'foreignKey'    => 'employee_id',
			'dependent'     => false
		)
	);
	
	public $belongsTo = array(
		'Role' => array(
			'className'  => 'Role',
			'foreignKey' => 'role_id',
			'type'       => 'LEFT'
		)
	);
}

