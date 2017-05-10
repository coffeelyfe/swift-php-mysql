//
//  API.swift
//  swift-php-mysql
//
//  Created by Andreas Hafsaas on 09.05.2017.
//  Copyright © 2017 Andreas Hafsaas. All rights reserved.
//

import Foundation


class API
{
    
    private let _CREATE_POKEMON_URL = URL(string: "http://localhost/phpmysql/api/createPokemon.php")
    private let _READ_POKEMON_URL = URL(string:"http://localhost/phpmysql/api/readPokemon.php")
    private let _UPDATE_POKEMON_URL = URL(string:"http://localhost/phpmysql/api/updatePokemon.php")
    private let _DELETE_POKEMON_URL = URL(string:"http://localhost/phpmysql/api/deletePokemon.php")
    

    var CREATE_POKEMON_URL: URL
    {
        return _CREATE_POKEMON_URL!
    }
    
    var READ_POKEMON_URL: URL
    {
        return _READ_POKEMON_URL!
    }
    
    var UPDATE_POKEMON_URL: URL
    {
        return _UPDATE_POKEMON_URL!
    }
    
    var DELETE_POKEMON_URL: URL
    {
        return _DELETE_POKEMON_URL!
    }
    
    


}
