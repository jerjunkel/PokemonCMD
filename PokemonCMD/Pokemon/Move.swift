//
//  Move.swift
//  PokemonCMD
//
//  Created by Jermaine Kelly on 10/2/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

enum HitRate: Int {
    case high = 10, medium = 8, low = 5, superlow = 3
}

struct Move {
    let type: PokemonType
    let power: Int      
    let name: String
    let hitChance: HitRate
    
    init (type: PokemonType, power: Int, name: String, hitChance: HitRate) {
        self.type = type
        self.power = power
        self.name = name
        self.hitChance = hitChance
    }
}

//Extending a type
//Conforming to the Hashable Protocol
extension Move: Hashable {
    static func == (lhs: Move, rhs: Move) -> Bool {
        return (lhs.name.lowercased() == rhs.name.lowercased()) && lhs.type == rhs.type
    }
}
