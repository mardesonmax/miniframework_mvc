<?php 

namespace Projeto\Init;

abstract class Bootstrap {
	/*==============================================
		metodos obrigatorios
	==============================================*/
	abstract protected function initRountes();

	/*==============================================
		atributo onde ficara todas as rotas
	==============================================*/
	private $routes; //atibuto


	/*==============================================
		iniciado automaticamente ao ser instaciado
	==============================================*/
	public function __construct() { //metodo
		$this->initRountes();
		$this->run($this->getUrl());
	}

	/*==============================================
		pegar as rotas
	==============================================*/
	public function getRoutes() {
		return $this->routes;
	}

	//setar as rotas
	public function setRoutes(array $routes){
		$this->routes = $routes;
	}


	/*==============================================
		pegando rotas apartir da url
	==============================================*/
	protected function run($url) {

		foreach ($this->getRoutes() as $key => $route) {

			if($url == $key){
				// motando a class
				$class = "App\\Controllers\\".ucfirst($route['controller']);

				//intanciando a class
				$controller = new $class;

				//motando o metodo
				$action = $route['action'];

				//chamando o metodo
				$controller->$action();
			}

		}
	}

	protected function getUrl() {
		return parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
	}

}
?>