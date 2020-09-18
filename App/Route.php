<?php 

namespace App;

use Projeto\Init\Bootstrap;

class Route extends Bootstrap{


	/*==============================================
		cria as rotas
	==============================================*/
	protected function initRountes() {

		$routes['/'] = [
			'controller' => 'IndexController',
			'action' => 'index'
		];

		$routes['/sobre'] = [
			'controller' => 'IndexController',
			'action' => 'sobre'
		];

		$this->setRoutes($routes);
	}

}

?>