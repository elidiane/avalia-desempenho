<?php

class Answer extends AppModel
{
	public $belongsTo = array(
		'Interaction' => array(
			'className'  => 'Interaction',
			'foreignKey' => 'interaction_id',
			'type'       => 'LEFT'
		),
		'Question' => array(
			'className'  => 'Question',
			'foreignKey' => 'question_id',
			'type'       => 'LEFT'
		),
		'LeaderOption' => array(
			'className'  => 'Option',
			'foreignKey' => 'leader_option_id',
			'type'       => 'LEFT'
		),
		'EmployeeOption' => array(
			'className'  => 'Option',
			'foreignKey' => 'employee_option_id',
			'type'       => 'LEFT'
		),
		'PairOption' => array(
			'className'  => 'Option',
			'foreignKey' => 'pair_option_id',
			'type'       => 'LEFT'
		)
	);
}

