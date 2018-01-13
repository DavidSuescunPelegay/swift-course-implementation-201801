//
//  StarShipClass.swift
//  StarWarsApp
//
//  Created by user909200 on 1/13/18.
//  Copyright © 2018 user909200. All rights reserved.
//

import Foundation

class StarShipModel{
    var name:String;
    var model:String;
    var manufacturer: String;
    var cost:String;
    var starshipClass:String;
    
    
    init?(name:String,model:String,manufacturer:String,cost:String,starshipClass:String){
        
        if(name.isEmpty || model.isEmpty || manufacturer.isEmpty || cost.isEmpty || starshipClass.isEmpty){
            return nil
        }
        
        self.name=name;
        self.model=model;
        self.manufacturer=manufacturer;
        self.cost=cost;
        self.starshipClass=starshipClass;    }
    
    
    
}
