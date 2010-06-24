<?php

class EmployeesController extends AppController
{
	
	/**
	 * Lista os colabodares
	 *
	 * @return void
	 * @access public
	 */
	public function index()
	{
		$employees = $this->paginate('Employee');
		$this->set('employees', $employees);
	
	} // index()
	
	
	/**
	 * Lista os colabodares
	 *
	 * @return void
	 * @access public
	 */
	 public function view($employee_id = null)
	 {
	 	$options = array(
			'conditions' => array(
				'Employee.id' => $employee_id
			)
		);
		
		$employee = $this->Employee->find('first', $options);
		
		$this->set('employee', $employee);
	
	 } // view($employee_id = null)
}

