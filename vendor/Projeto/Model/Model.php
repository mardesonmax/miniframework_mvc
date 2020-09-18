<?php 

namespace Projeto\Model;

abstract class Model {

	protected $db;

	public function __construct(\PDO $db) {
		$this->db = $db;
	}

	public function query($query, $params = []) {

		$stmt = $this->db->prepare($query);

		foreach ($params as $key => $value) {

			if($value != null) {

				$value = htmlspecialchars($value);
			}

			$stmt->bindValue($key, $value);
		}		

		return [
			'status' => $stmt->execute(),
			'dados' => $stmt->fetchAll(\PDO::FETCH_ASSOC)
		];
	}

}
