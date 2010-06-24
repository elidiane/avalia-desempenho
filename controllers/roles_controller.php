<?php

class RolesController extends AppController
{
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
	
	} // index()
	
	
	/**
	 * Visualiza um cargo com sua descrição
	 * 
	 * @param int $id O id da role que será mostrada
	 * @return void
	 * @access public
	 */
	public function view($role_id = null)
	{
		$options = array(
			'conditions' => array(
			'Role.id' => $role_id
			)
		);
		
		$role = $this->Role->find('first', $options);
		$this->set('role', $role);
	
	} // view($id = null)
	
	
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
	
	} // add()
}

