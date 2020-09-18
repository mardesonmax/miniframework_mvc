<?php 

namespace App\Controllers;

//Recursos mineframework
use Projeto\Controller\Action;
use Projeto\Model\Container;

class IndexController extends Action {

	public function index() {

		$produto = Container::getModel('Produto');

		$this->view->dados = $produto->getProdutos();

		$this->render('index', 'Home');
	}

	public function sobre() {

		$info = Container::getModel('Info');

		$this->view->dados = $info->getInfo();

		$this->render('sobre', 'Sobre');
		
	}

		
}

?>