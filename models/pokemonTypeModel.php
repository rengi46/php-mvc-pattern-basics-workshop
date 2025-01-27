<?php
require_once(MODELS."helper/dbConection.php");

function getById($id){
    $query=conn()->prepare("SELECT pokemon.id , pokemon.name , pokemon.tipo1,pokemon.tipo2 FROM pokemon INNER JOIN types 
    WHERE pokemon.id = $id AND pokemon.tipo1 = types.id");
    $query2=conn()->prepare("SELECT types.id , types.img
    FROM types");
    try{
        $query->execute();
        $query2->execute();
        $pokemonId=$query->fetchAll();
        $typesId=$query2->fetchAll();
        return Array($pokemonId,$typesId);
    }catch(PDOException $e){
        return [];
    }
}

function infoCombat($tipo1,$tipo2){
    $query=conn()->prepare("SELECT efect_types.typeAttack ,efect_types.typeDefense, efect_types.effect, types.img 
    FROM efect_types 
    INNER JOIN types ON types.id=efect_types.typeDefense 
    WHERE efect_types.typeAttack=$tipo1 OR efect_types.typeAttack=$tipo2  
    ORDER by efect_types.typeAttack ;");
    try{
        $query->execute();
        $type=$query->fetchAll();
        return $type;
    }catch(PDOException $e){
        return [];
    }
}