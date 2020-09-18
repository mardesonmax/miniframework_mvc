<?php

namespace App\Models;

use Projeto\Model\Model;

class Produto extends Model
{
	public function getProdutos()
	{

		$query = $this->query("select id, descricao, preco from tb_produtos", []);

		$dados = $query['dados'];

		if (count($dados) > 0)  return $dados;
	}
}
