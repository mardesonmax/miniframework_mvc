<?php 

namespace App;

class Connection {
	public static function getDb() {
		try {

			$conn = new \PDO(
				"mysql:host=localhost;dbname=mvc;charset=utf8",
				"root",
				""
			);

			return $conn;


		} catch (PDOExeption $e) {
			//tratar o erro 
		}
	}
}

?>