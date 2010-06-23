<?php

class RolesController extends AppController
{
	// TODO: remover scaffold
	public $scaffold;
	
	public function index()
	{
		$roles = $this->paginate('Role');
		$this->set('roles', $roles);
	}
	
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
}

