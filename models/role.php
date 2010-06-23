<?php

class Role extends AppModel
{
	public $hasMany = array(
		'Appraisal' => array(
			'className'     => 'Appraisal',
			'foreignKey'    => 'role_id',
			'dependent'     => false
		),
		'Employee' => array(
			'className'     => 'Employee',
			'foreignKey'    => 'role_id',
			'dependent'     => false
		)
	);
}

