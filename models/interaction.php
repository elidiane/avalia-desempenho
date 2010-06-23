<?php

class Interaction extends AppModel
{
	public $hasMany = array(
		'Answer' => array(
			'className'     => 'Answer',
			'foreignKey'    => 'interaction_id',
			'dependent'     => false
		)
	);
	
	public $belongsTo = array(
		'Leader' => array(
			'className'  => 'Employee',
			'foreignKey' => 'leader_id',
			'type'       => 'LEFT'
		),
		'Employee' => array(
			'className'  => 'Employee',
			'foreignKey' => 'employee_id',
			'type'       => 'LEFT'
		)
	);
}

