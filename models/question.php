<?php

class Question extends AppModel
{
	public $hasMany = array(
		'Option' => array(
			'className'     => 'Option',
			'foreignKey'    => 'question_id',
			'dependent'     => false
		),
		'Answer' => array(
			'className'     => 'Answer',
			'foreignKey'    => 'question_id',
			'dependent'     => false
		)
	);
	
	public $belongsTo = array(
		'Group' => array(
			'className'  => 'Group',
			'foreignKey' => 'group_id',
			'type'       => 'LEFT'
		)
	);
}

