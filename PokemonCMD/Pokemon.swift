//
//  Pokemon.swift
//  PokemonCMD
//
//  Created by Hercules on 8/28/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

//Type
struct Pokemon {
    //Properties
    let name: String
    let type: PokemonType
    let level: Int
    var isCaptured: Bool = false
    
    
    //Methods
    func attack() {
        print("\(self.name) used tackle!!")
    }
    
    func getCaught() -> Bool {
        let arr = [true, false]
        return arr.randomElement()!
    }
}

enum PokemonType {
    case fire, water, grass, electric
}

