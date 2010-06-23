<?php

class Option extends AppModel
{
	public $hasMany = array(
		'LeaderAnswer' => array(
			'className'     => 'Answer',
			'foreignKey'    => 'leader_option_id',
			'dependent'     => false
		),
		'EmployeeAnswer' => array(
			'className'     => 'Answer',
			'foreignKey'    => 'employee_option_id',
			'dependent'     => false
		),
		'PairAnswer' => array(
			'className'     => 'Answer',
			'foreignKey'    => 'pair_option_id',
			'dependent'     => false
		)
	);
	
	public $belongsTo = array(
		'Question' => array(
			'className'  => 'Question',
			'foreignKey' => 'question_id',
			'type'       => 'LEFT'
		)
	);
}
