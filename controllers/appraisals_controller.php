<?php

class AppraisalsController extends AppController
{
	/**
	 * Opções da paginação
	 */
	 public $paginate = array(
	 	'contain' => array(
	 		'Role' => array(
	 			'fields' => array('Role.title')
	 		),
	 		'Admin' => array(
	 			'fields' => array('Admin.name')
	 		)
	 	)
	 );
	 
	 
	/**
	 * Lista as avaliações
	 *
	 * @return void
	 * @access public
	 */
	public function index()
	{
		$appraisals = $this->paginate('Appraisal');
		$this->set('appraisals', $appraisals);
	
	} // index()
	
	
	/**
	 * Visualisa uma avaliação
	 *
	 * @return void
	 * @access public
	 */
	public function view($appraisal_id = null)
	{
		$options = array(
			'conditions' => array(
			'Appraisal.id' => $appraisal_id
			),
			'contain' => array(
		 		'Role' => array(
		 			'fields' => array('Role.id', 'Role.title')
		 		),
		 		'Admin' => array(
		 			'fields' => array('Admin.name')
		 		),
		 		'Group' => array(
		 			'Question' => array(
		 				'Option'
		 			)
		 		),
	 		)
		);
		
		$appraisal = $this->Appraisal->find('first', $options);
		$this->set('appraisal', $appraisal);
	
	} // view($appraisal_id)
}

