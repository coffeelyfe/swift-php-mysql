<?php 
	
	/**
	* 
	*/
	class DbOperation
	{

		private $conn;
		
		function __construct()
		{
				require_once dirname(__FILE__) . '/Config.php';
				require_once dirname(__FILE__) . '/DbConnect.php';

				//open open sesame
				$db = new DbConnect();
				$this->conn = $db->connect();
		}


		public function createPokemon($id, $name, $type, $type_2)
		{
			$stmt = $this->conn->prepare("INSERT INTO pokemons(id,name,type,type_2) values(?,?,?,?)" );
		
			$stmt->bind_param('isss',$id, $name, $type, $type_2);
	
			$result = $stmt->execute();
			if($result)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
	}


?>





