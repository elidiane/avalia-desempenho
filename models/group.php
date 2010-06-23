<?php

class Group extends AppModel
{
	public $hasMany = array(
		'Question' => array(
			'className'     => 'Question',
			'foreignKey'    => 'group_id',
			'dependent'     => false
		)
	);
	
	public $belongsTo = array(
		'Appraisal' => array(
			'className'  => 'Appraisal',
			'foreignKey' => 'appraisal_id',
			'type'       => 'LEFT'
		)
	);
}

