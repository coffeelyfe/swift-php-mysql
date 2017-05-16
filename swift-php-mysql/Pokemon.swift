//
//  Pokemon.swift
//  swift-php-mysql
//
//  Inspiration for the structure of this class can be found in this tutorial made by: Brian Advent @ youtube
//  https://www.youtube.com/watch?v=_c0pAz3UPEs&list=PLMbtuyAu79GORWPm-CgR7iMgDcZHNU1Pq
//  Created by Andreas Hafsaas on 15.05.2017.
//  Copyright © 2017 Andreas Hafsaas. All rights reserved.
//

import UIKit


struct Pokemon
{
    var id: Int
    var name: String
    var type: String
    var type_2: String
    
    enum SerializationError:Error
    {
        case missing(String)
        case invalid(String, Any)
    }
    
    init(json:[String:Any]) throws{
        guard let id = json["id"] as? Int else {throw SerializationError.missing("id is missing")}
        guard let name = json["name"] as? String else{throw SerializationError.missing("name is missing")}
        guard let type = json["type"] as? String else{throw SerializationError.missing("type is missing")}
        guard let type_2 = json["type_2"] as? String else{throw SerializationError.missing("type_2 is missing")}
        
        
        
        
        self.id = id
        self.name = name
        self.type = type
        self.type_2 = type_2
        
    }

}
