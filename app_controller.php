<?php

class AppController extends Controller
{
	/**
	 * Componentes usados em todos os Controllers
	 */
	public $components = array('Security', 'Session', 'RequestHandler');
	
	/**
	 * Antes de executar uma ação
	 * 
	 * @return void
	 * @access public
	 */
	public function beforeFilter() {
		// permite deletar um cargo apenas usando o metodo POST
		$this->Security->requirePost('delete');
		
		// protege o formulário de adição
		$this->Security->requireAuth('add');
	
	} // beforeFilter()
	
}

