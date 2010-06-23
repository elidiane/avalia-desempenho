<?php

class RolesController extends AppController
{
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
	}
	
	
	/**
	 * Lista os cargos cadastrados
	 * 
	 * @return void
	 * @access public
	 */
	public function index()
	{
		$roles = $this->paginate('Role');
		$this->set('roles', $roles);
	}
	
	
	/**
	 * Visualiza um cargo com sua descrição
	 * 
	 * @param int $id O id da role que será mostrada
	 * @return void
	 * @access public
	 */
	public function view($id = null)
	{
		$options = array(
			'conditions' => array(
			'id' => $id
			)
		);
		
		$role = $this->Role->find('first', $options);
		
		$this->set('role', $role);
	}
	
	
	/**
	 * Adiciona um novo cargo
	 * 
	 * @return void
	 * @access public
	 */
	public function add()
	{
		if ($this->RequestHandler->isPost()) {
			if ($this->Role->save($this->data['Role'])) {
				$this->redirect('/roles');
			}
		}
	}
}

