

<?php
    //creating response array
    $respone = array();

    if($_SERVER['REQUEST_METHOD']=='POST')
    {
        //get dose valuezz
        $pokemonId   = $_POST['id']; 
        $pokemonName = $_POST['name'];
        $pokemonType = $_POST['type'];
        $pokemonType_2 = $_POST['type_2'];

        //including the db operation file
        require_once '../includes/DbOperation.php';

        //insert those values

        $db = new DbOperation();

        if($db->createPokemon($pokemonId, $pokemonName, $pokemonType, $pokemonType_2))
        {
            $response['error']=false;
            $response['message']='Pokemon added successfully';
        }
        else
        {
            $response['error']=true;
            $response['message']="Could not add new pokemon :(";
        }
    }
    else
    {
        $response['error']=true;
        $response['message']="You are not authorized for this action.";
    }

    echo json_encode($response);



