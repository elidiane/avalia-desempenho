<?php

class Appraisal extends AppModel
{
	public $hasMany = array(
		'Group' => array(
			'className'     => 'Group',
			'foreignKey'    => 'appraisal_id',
			'dependent'     => false
		)
	);
	
	public $belongsTo = array(
		'Admin' => array(
			'className'  => 'Employee',
			'foreignKey' => 'admin_id',
			'type'       => 'LEFT'
		),
		'Role' => array(
			'className'  => 'Role',
			'foreignKey' => 'role_id',
			'type'       => 'LEFT'
		)
	);
}

