<?php

namespace App\Models;

use Projeto\Model\Model;

class Info extends Model
{
	public function getInfo()
	{

		$query = $this->query("select titulo, descricao from tb_info", []);

		$dados = $query['dados'];

		if (count($dados) > 0)  return $dados;
	}
}
