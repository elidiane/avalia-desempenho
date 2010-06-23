<?php

class AppController extends Controller
{
	/**
	 * Componentes usados em todos os Controllers
	 */
	public $components = array('Security', 'Session', 'RequestHandler');
}
